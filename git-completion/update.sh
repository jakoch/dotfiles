#!/bin/bash

# SPDX-License-Identifier: MIT
#
# Refresh the vendored completion scripts from upstream git/git. Writes to stdout for
# review rather than overwriting in place -- it previously did `curl -OL` straight into
# the working tree, so a compromised or unexpected upstream file landed unreviewed:
#
#   ./git-completion/update.sh > /tmp/new
#   diff -u git-completion/git-completion.bash /tmp/new

set -euo pipefail

GIT_REF="${GIT_REF:-v2.51.0}"  # bump deliberately; master moves without notice

base="https://raw.githubusercontent.com/git/git/${GIT_REF}/contrib/completion"

if ! command -v curl >/dev/null 2>&1; then
    echo "curl could not be found" >&2
    exit 1
fi

echo "# fetched from ${base} at ref ${GIT_REF}" >&2

for file in git-completion.bash git-prompt.sh; do
    curl -fsSL --proto '=https' --tlsv1.2 "${base}/${file}"
    echo >&2
done
