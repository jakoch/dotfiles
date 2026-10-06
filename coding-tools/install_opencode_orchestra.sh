#!/bin/bash
# SPDX-License-Identifier: MIT

set -euo pipefail

# Installer for OpenCode Orchestra
#
# Install location matters. OpenCode loads a plugin *package directory* by its
# root entry, so this must land in a discovered plugins directory with the
# top-level index.ts present -- not as a config entry pointing somewhere else.
# A repo whose entry lives in plugin/index.ts is silently ignored here.
#
# Tracking main for now, so orchestra updates land without a manual bump. main
# moves, and a plugin that registers agents can therefore change under you. When
# that bites, pin it:
#   ORCHESTRA_REF=<commit-sha> ./coding-tools/install_opencode_orchestra.sh
ORCHESTRA_URL="${ORCHESTRA_URL:-https://github.com/jakoch/opencode-orchestra}"
ORCHESTRA_REF="${ORCHESTRA_REF:-main}"
PLUGINS_DIR="${OPENCODE_PLUGINS_DIR:-$HOME/.config/opencode/plugins}"
CHECKOUT_DIR="$PLUGINS_DIR/opencode-orchestra"

printf 'Installing opencode-orchestra from:\n  %s@%s\n' "$ORCHESTRA_URL" "$ORCHESTRA_REF"

mkdir -p "$PLUGINS_DIR"

if [ ! -d "$CHECKOUT_DIR/.git" ]; then
  git clone --filter=blob:none --no-checkout "$ORCHESTRA_URL" "$CHECKOUT_DIR"
else
  # Re-point the remote rather than assuming the original URL, so a fork works.
  git -C "$CHECKOUT_DIR" remote set-url origin "$ORCHESTRA_URL"
fi

# 'git clone --depth 1 --branch <sha>' does not work: --branch takes a branch or
# tag name, not a commit. init, fetch, checkout FETCH_HEAD.
git -C "$CHECKOUT_DIR" fetch --quiet --depth 1 origin "$ORCHESTRA_REF"
git -C "$CHECKOUT_DIR" checkout --quiet --force FETCH_HEAD

# The root entry is what discovery reads. Check it rather than trusting the ref:
# a missing index.ts fails silently, with no error anywhere.
if [ ! -f "$CHECKOUT_DIR/index.ts" ]; then
  printf 'error: %s has no top-level index.ts, so OpenCode would ignore it.\n' "$CHECKOUT_DIR" >&2
  exit 1
fi

printf 'Installed to:\n  %s\n' "$CHECKOUT_DIR"

# Config reloads on its own, but the service caches plugin modules per path, so a
# plugin added to a running service needs a restart to be picked up.
if command -v opencode >/dev/null 2>&1; then
  opencode service restart >/dev/null 2>&1 || true
  printf 'Restarted the OpenCode service. Verify with:\n  opencode plugin list\n'
fi
