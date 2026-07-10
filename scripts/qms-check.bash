#!/bin/bash
# qms-check.bash — style and link checks for the ci-qms markdown documents.
#
# Checks (ERROR = nonzero exit):
#   1. Internal file links resolve to existing files
#   2. file#anchor links match a heading in the target file (GitHub slugs)
#   3. No em dashes outside the official-title allowlist
#   4. No section sign (§) outside table rows
#   5. No empty sections (a heading directly followed by a heading of the
#      same or shallower level)
#   6. No prose lines over 80 columns (link lines, table rows, and YAML
#      front matter excluded)
#   7. Section 3.3 Terms lists alphabetized (dictionary order: hyphens
#      compare as spaces, spaces significant)
#   8. No lowercase normative "shall"
#   9. No stray trailing whitespace: a single trailing space or any
#      trailing tab is an error; two or more trailing spaces are allowed
#      (GitHub markdown hard line break)
#
# Warnings (reported, exit unaffected):
#  10. Lowercase "should" / "must" occurrences, for reviewer judgment.
#      Vetted occurrences are suppressed via the MODAL_ALLOW allowlist,
#      keyed on filename plus a distinctive line substring (not line number)
#      so it survives edits that shift line numbers.
#
# Additional checks (ERROR = nonzero exit):
#  11. Document Control block present in every controlled document
#  12. Concrete retention periods appear only in SOP-002 Section 5.4: a
#      year/month duration anywhere else is flagged unless allowlisted as a
#      vetted non-retention duration
#
# Run from anywhere; operates on the repo root (parent of this script).

set -uo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

ERRORS=0
err() { echo "ERROR: $*"; ERRORS=$((ERRORS + 1)); }
warn() { echo "warn:  $*"; }

FILES=(README.md QM-001--QualityManual.md SOP-0*.md)

# GitHub-style slug for a heading line. Deliberately does NOT trim
# trailing whitespace: a heading with a trailing space is itself a defect
# (caught by the trailing-whitespace check below), so the strict slug
# keeps the anchor check honest rather than papering over it.
slug() {
    sed -e 's/^#\+ *//' \
        -e 's/\*\*//g; s/__//g; s/`//g' \
        | tr '[:upper:]' '[:lower:]' \
        | sed -e "s/[^a-z0-9 -]//g" -e 's/ /-/g'
}

# --- 1 & 2: internal links and anchors -----------------------------------
for f in "${FILES[@]}"; do
    while IFS= read -r target; do
        [ -z "$target" ] && continue
        case "$target" in
            http://*|https://*) continue ;;
        esac
        target="${target%% \"*}"           # strip image titles
        file="${target%%#*}"
        anchor=""
        case "$target" in *#*) anchor="${target#*#}" ;; esac
        if [ -n "$file" ] && [ ! -f "$file" ]; then
            err "$f: broken file link -> $target"
            continue
        fi
        if [ -n "$anchor" ]; then
            anchor_file="${file:-$f}"
            if ! grep -E '^#' "$anchor_file" | slug | grep -qxF "$anchor"; then
                err "$f: broken anchor -> $target"
            fi
        fi
    done < <(grep -oE '\]\([^)]*\)' "$f" | sed 's/^](//; s/)$//')
done

# --- 3: em dashes ----------------------------------------------------------
ALLOW_EMDASH='systems — Requirements|Investigations — A Risk-Based|Signatures — Scope'
for f in "${FILES[@]}"; do
    while IFS= read -r hit; do
        err "$f: em dash outside official titles -> $hit"
    done < <(grep -n '—' "$f" | grep -vE "$ALLOW_EMDASH")
done

# --- 4: § outside tables ---------------------------------------------------
# Allowed in table rows and as a backticked mention (`§`).
for f in "${FILES[@]}"; do
    while IFS= read -r hit; do
        err "$f: § outside a table row -> $hit"
    done < <(grep -n '§' "$f" | grep -v '^[0-9]*:|' | grep -v '`§`')
done

# --- 5: empty sections -----------------------------------------------------
for f in "${FILES[@]}"; do
    while IFS= read -r hit; do
        err "$f: empty section -> $hit"
    done < <(awk '
        /^#/ {
            level = length($0) - length(substr($0, match($0, /[^#]/)))
            # recompute level as count of leading #
            n = 0; while (substr($0, n + 1, 1) == "#") n++
            if (prev_head != "" && n <= prev_level) print prev_head
            prev_head = $0; prev_level = n; next
        }
        NF { prev_head = "" }
        END { if (prev_head != "") print prev_head }
    ' "$f")
done

# --- 6: line length --------------------------------------------------------
for f in "${FILES[@]}"; do
    while IFS= read -r hit; do
        err "$f: prose line over 80 columns -> line $hit"
    done < <(awk 'NR>4 && length($0)>80 && $0 !~ /\]\(/ && $0 !~ /^\|/ \
                  && $0 !~ /^subtitle/ {print FNR}' "$f")
done

# --- 7: Terms alphabetization ---------------------------------------------
for f in "${FILES[@]}"; do
    terms=$(sed -n '/^### 3.3 Terms/,/^### 3.4/p' "$f" \
            | grep -oE '^-+ +\*\*[^*]+\*\*' \
            | sed 's/^-* *\*\*//; s/\*\*$//; s/-/ /g')
    [ -z "$terms" ] && continue
    sorted=$(echo "$terms" | LC_ALL=C sort -f)
    if [ "$terms" != "$sorted" ]; then
        err "$f: Section 3.3 Terms not alphabetized"
    fi
done

# --- 8: lowercase shall ----------------------------------------------------
for f in "${FILES[@]}"; do
    while IFS= read -r hit; do
        err "$f: lowercase normative 'shall' -> $hit"
    done < <(grep -nE '\bshall\b' "$f")
done

# --- 9: stray trailing whitespace ------------------------------------------
# Exactly one trailing space (or any trailing tab, or a lone-space line) is
# stray; two or more trailing spaces are a GitHub markdown hard line break
# and are allowed. NB: \t is not a tab in POSIX ERE, hence the literal.
TAB="$(printf '\t')"
for f in "${FILES[@]}"; do
    while IFS= read -r n; do
        err "$f: stray trailing whitespace -> line $n"
    done < <(grep -nE "[^ ${TAB}] \$|${TAB}\$|^ \$" "$f" | cut -d: -f1)
done

# --- 10: lowercase should/must (warnings) ----------------------------------
# MODAL_ALLOW suppresses vetted lowercase should/must occurrences in
# descriptive or definitional prose. Each entry is "<filename>|<distinctive
# substring of the line>"; a hit whose line contains the substring for its
# file is suppressed. Keyed on content, not line number, so it is stable
# across edits elsewhere in the document. To re-vet an entry, delete its line.
MODAL_ALLOW='
QM-001--QualityManual.md|deciding which studies should
SOP-003--Risk_Management_and_Quality_Risk_Management_Procedure.md|a risk, should it occur
SOP-003--Risk_Management_and_Quality_Risk_Management_Procedure.md|a hazard should it
SOP-003--Risk_Management_and_Quality_Risk_Management_Procedure.md|risk controls should first seek
SOP-003--Risk_Management_and_Quality_Risk_Management_Procedure.md|that should have been
SOP-004--Computer_System_Validation_Data_Integrity_and_Data_Management_Procedure.md|the system must do
SOP-004--Computer_System_Validation_Data_Integrity_and_Data_Management_Procedure.md|the database must be unlocked
SOP-014--Regulatory_Compliance_Management_Procedure.md|interests that must be disclosed
SOP-015--Observational_Study_Software_Development_and_Validation_Procedure.md|software must do
'
for f in "${FILES[@]}"; do
    while IFS= read -r hit; do
        line="${hit#*:}"
        allowed=0
        while IFS='|' read -r af sub; do
            [ -z "$af" ] && continue
            if [ "$af" = "$f" ] && [[ "$line" == *"$sub"* ]]; then
                allowed=1
                break
            fi
        done <<< "$MODAL_ALLOW"
        [ "$allowed" -eq 1 ] && continue
        warn "$f: lowercase should/must (review) -> $hit"
    done < <(grep -nE '\b(should|must)\b' "$f")
done

# --- 11: Document Control block present ------------------------------------
# Every controlled document (QM-001 and the SOPs, not README) carries the
# Document Control scaffolding block required for SOP-002 Section 4.3
# conformance (document ID and revision, Record of Revisions, approvals,
# effective date).
for f in "${FILES[@]}"; do
    [ "$f" = "README.md" ] && continue
    if ! grep -qF '**Document Control**' "$f"; then
        err "$f: missing Document Control block"
    fi
done

# --- 12: retention periods only in SOP-002 Section 5.4 ---------------------
# SOP-002 Section 5.4 is the single canonical home for retention periods; the
# README carries a descriptive summary. A concrete year/month duration in any
# other controlled document is almost always a competing retention rule. The
# allowlist carries vetted non-retention durations (a disclosure coverage
# period, a CV-update cadence, and a GCP-training recency window); any new
# duration must be re-vetted rather than silently added.
ALLOW_DURATION='one year after study completion|every two years|years from a recognized'
DURATION='[0-9]+[^A-Za-z0-9]{0,3}(year|month)|\b(one|two|three|four|five|six|seven|eight|nine|ten|fifteen|twenty|twenty-five|thirty)[ -]+(year|month)'
for f in "${FILES[@]}"; do
    case "$f" in
        SOP-002--*|README.md) continue ;;
    esac
    while IFS= read -r hit; do
        err "$f: retention period stated outside SOP-002 Section 5.4 -> $hit"
    done < <(grep -inE "$DURATION" "$f" | grep -viE "$ALLOW_DURATION")
done

echo
if [ "$ERRORS" -gt 0 ]; then
    echo "qms-check: FAILED with $ERRORS error(s)"
    exit 1
fi
echo "qms-check: OK"
