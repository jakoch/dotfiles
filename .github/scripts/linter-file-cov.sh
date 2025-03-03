#!/bin/bash

# SPDX-License-Identifier: MIT
# SPDX-FileCopyrightText: 2025, Jens A. Koch

#
# This script checks for files in the current directory that do not have a
# [LINT] entry in the .github/workflows/lint.yml file.
# It ignores certain folders and file types.
#

# Path to the lint.yml file
readonly LINT_FILE=".github/workflows/lint.yml"

# Check if lint.yml file exists
if [[ ! -f "$LINT_FILE" ]]; then
    echo "lint.yml not found!"
    exit 1
fi

# Get list of files in the current directory
# Ignored folders: .git, .fonts, .git-completion
# Ignored files: .png, .md, "linter-file-cov.sh"
ALL_FILES=()
while IFS= read -r -d '' file; do
    ALL_FILES+=("$file")
done < <(find . -type f -not \( -path './.git/*' -o -path './.fonts/*' -o -path './git-completion/*' -o -path './windows/*' -o -name '*.png' -o -name '*.md' \) -print0)

# Verify that ALL_FILES is populated
#echo "=== ALL_FILES ==="
#printf "%s\n" "${ALL_FILES[@]}"  # Print all files in the array

# Extract files marked with [LINT] in lint.yml
LINT_FILES=()
while IFS= read -r line; do
    if [[ "$line" =~ LINT\ (.*) ]]; then
        LINT_FILES+=("${BASH_REMATCH[1]}")
    fi
done < "$LINT_FILE"

# Check for files that exist but aren't marked with [LINT]
echo "=== Files without LINT entry ==="
for file in "${ALL_FILES[@]}"; do
    filename=$(basename "$file")
    if ! echo "${LINT_FILES[@]}" | grep -q -F "$filename"; then
        echo "❌ Missing LINT marker: $file"
    fi
done
