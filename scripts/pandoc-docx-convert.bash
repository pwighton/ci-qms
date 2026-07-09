#!/bin/bash
# Convert every QMS markdown document to docx. Works from any CWD:
# operates on the repository root (the parent of this script's directory).

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p "$REPO_ROOT/docx"
for file in "$REPO_ROOT"/*.md; do
    name="$(basename "$file" .md)"
    pandoc "$file" -o "$REPO_ROOT/docx/$name.docx" --toc --toc-depth=3 --standalone
done
