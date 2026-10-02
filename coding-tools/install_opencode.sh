#!/bin/bash
# SPDX-License-Identifier: MIT
set -euo pipefail

# Override to move forward: OPENCODE_INSTALL_REF=v1.2.3 setup_opencode
OPENCODE_INSTALL_REF="${OPENCODE_INSTALL_REF:-main}"
INSTALL_URL="https://opencode.ai/install"

install_url="${INSTALL_URL}?ref=${OPENCODE_INSTALL_REF}"

printf 'Installing opencode from:\n  %s\n' "$install_url"
printf 'Downloaded script contents will be shown before executing. Ctrl-C to abort.\n\n'

script="$(curl -fsSL "$install_url")"

printf -- '--- begin installer ---\n%s\n--- end installer ---\n\n' "$script"
printf 'Executing the above script now.\n\n'

# Not a live `curl | bash` pipe, so the bytes that run are the bytes just displayed.
printf '%s' "$script" | bash

# No PATH export here: this is a child process, so it would not reach the calling shell.
# Add it to your own config, e.g. ~/.profile:
#   export PATH="$HOME/.opencode/bin:$PATH"
