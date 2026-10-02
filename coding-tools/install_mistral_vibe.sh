#!/bin/bash
# SPDX-License-Identifier: MIT
set -euo pipefail

# Override to move forward: VIBE_INSTALL_REF=v1.2.3 setup_mistral_vibe
VIBE_INSTALL_REF="${VIBE_INSTALL_REF:-main}"
INSTALL_URL="https://mistral.ai/vibe/install.sh"

install_url="${INSTALL_URL}?ref=${VIBE_INSTALL_REF}"

printf 'Installing vibe from:\n  %s\n' "$install_url"
printf 'Downloaded script contents will be shown before executing. Ctrl-C to abort.\n\n'

script="$(curl -fsSL "$install_url")"

printf -- '--- begin installer ---\n%s\n--- end installer ---\n\n' "$script"
printf 'Executing the above script now.\n\n'

# Not a live `curl | bash` pipe, so the bytes that run are the bytes just displayed.
printf '%s' "$script" | bash

# No PATH export here: this is a child process, so it would not reach the calling shell.
# Add it to your own config, e.g. ~/.profile:
#   export PATH="$HOME/.local/bin:$PATH"
