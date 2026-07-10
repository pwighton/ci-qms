# obs-qms

Boilerplate Quality Management System for an institution conducting
*observational studies* whose data are intended to be easily integrated
into future regulatory submissions by other entities (e.g., as real-world
evidence, natural history data, or control-arm comparators).

The QMS consists of a Quality Manual and fifteen SOPs implementing applicable
parts of:
- [ISO-9001:2015](https://www.iso.org/standard/62085.html)
- [ICH E6(R2)](https://database.ich.org/sites/default/files/E6_R2_Addendum.pdf)
- [ICH E8(R1)](https://database.ich.org/sites/default/files/E8-R1_Guideline_Step4_2021_1006.pdf)
- [ICH Q9(R1)](https://database.ich.org/sites/default/files/ICH_Q9%28R1%29_Guideline_Step4_2023_0126_0.pdf)
- [GAMP 5](https://guidance-docs.ispe.org/doi/book/10.1002/9781946964571)
- [21 CFR Part 11](https://www.ecfr.gov/current/title-21/chapter-I/subchapter-A/part-11)
- [21 CFR Part 54](https://www.ecfr.gov/current/title-21/chapter-I/subchapter-A/part-54)

Replace the `__NewInstitute__` placeholder with your institution's name
and adapt the documents to your structure and risk posture.

## Major design decisions

- **Sized for a new institute running one study.** Where a choice existed
  between "minimal but realistic" and "thorough multi-role separation",
  the minimal choice was taken. Mature institutes are expected to extend.
- **Sponsor-Investigator model.** One person holds the combined sponsor
  and investigator obligations (SOP-001 Section 4.2.2), with a minimal
  role set and explicitly permitted role combinations and independence
  constraints (QM-001 Appendix A).
- **Inspection posture.** The institute is not directly inspected by
  regulators; the burden moves to data recipients. The QMS therefore
  emphasizes retrieval, certified copies, and supporting recipient audits
  rather than hosting regulatory inspections.
- **Retention anchored to downstream use, not study end.** Canonical
  retention policy in SOP-002 Section 5.4: default floors of 25 years
  (data plausibly supporting a marketing application) or 15 years (other
  regulatory use), never less than 2 years after study discontinuation.
- **Single institute-wide logs** for nonconformances (SOP-010) and CAPAs
  (SOP-011), both indexing all intake including items closed without
  action.
- **No per-document review cadence.** Document currency is a topic of the
  annual Management Review (QM-001 Section 5.3.3); no SOP self-reviews.
- **Templates summarize; body text governs.** Tools and appendices cite
  the canonical body sections and defer to them on any difference.

## Style conventions

- Normative statements use bold-caps modals (**SHALL**, **SHOULD**,
  **MAY**) and nothing else; descriptive prose avoids lowercase modals.
- Cross-references: full markdown link on first introduction, then
  "per SOP-00X Section Y.Z" in prose. "Section X.X" in body text; the
  section sign (`§`) only inside tables.
- Each SOP's Section 3.2 lists exactly the documents its body cites.
  Shared terms have one canonical home and are imported by reference
  ("as defined in SOP-002 Section 3.3"); a document's body and its own
  Terms section never reference each other.
- Terms lists are alphabetized (dictionary order: hyphens compare as
  spaces, spaces significant).
- No em dashes except inside quotations or official titles. Hard wrap at
  80 columns (link lines exempt). No single trailing spaces (two or more
  are a markdown hard break and are allowed).
- Every SOP closes with TRAINING and RECORDS sections; records route to
  the TMF or quality records per SOP-002.

## Scripts

- `scripts/qms-check.bash`: link, anchor, and style checks encoding the
  conventions above. Run before committing; exits nonzero on violations.
- `scripts/pandoc-docx-convert.bash`: converts all documents to docx in
  `docx/`.
