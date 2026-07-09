#!/bin/bash

mkdir -p ./docx
for file in *.md; do
    pandoc "$file" -o "./docx/${file%.md}.docx" --toc --toc-depth=3 --standalone
done
