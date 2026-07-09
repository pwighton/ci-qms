#!/bin/bash
# Convert every QMS markdown document to docx. Works from any CWD:
# runs from the repository root (the parent of this script's directory)
# so that relative resources (e.g., media/*.png) resolve correctly.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$REPO_ROOT"

mkdir -p ./docx
for file in *.md; do
    pandoc "$file" -o "./docx/${file%.md}.docx" --toc --toc-depth=3 --standalone
done
