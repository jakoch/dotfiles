#!/bin/bash
# SPDX-License-Identifier: MIT
set -euo pipefail

# Pin a version: OPENCODE_INSTALL_REF=v1.2.3 setup_opencode
# Empty means "latest".
OPENCODE_INSTALL_REF="${OPENCODE_INSTALL_REF:-}"
INSTALL_URL="https://opencode.ai/v2/install"

install_url="$INSTALL_URL"

# The v2 installer takes a version flag; v1 used a ?ref= query parameter.
if [ -n "$OPENCODE_INSTALL_REF" ]; then
    install_args=(--version "$OPENCODE_INSTALL_REF")
else
    install_args=()
fi

printf 'Installing opencode from:\n  %s\n' "$install_url"
printf 'Downloaded script contents will be shown before executing. Ctrl-C to abort.\n\n'

script="$(curl -fsSL "$install_url")"

printf -- '--- begin installer ---\n%s\n--- end installer ---\n\n' "$script"
printf 'Executing the above script now.\n\n'

# Not a live `curl | bash` pipe, so the bytes that run are the bytes just displayed.
printf '%s' "$script" | bash -s -- ${install_args[@]+"${install_args[@]}"}

# No PATH export here: this is a child process, so it would not reach the calling shell.
# Add it to your own config, e.g. ~/.profile:
#   export PATH="$HOME/.opencode/bin:$PATH"

# Setup Orchestra Plugin
"$(dirname "$0")/install_opencode_orchestra.sh"
