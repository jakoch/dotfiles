#!/bin/bash
# SPDX-License-Identifier: MIT
set -euo pipefail

packages=(
  curl
  fontconfig
  fonts-powerline
  fzf
  git-delta
  ripgrep
  zsh
)

sudo apt-get update -y
sudo apt-get install -y --no-install-recommends "${packages[@]}"

# Oh My Zsh publishes no release tags, so pin a commit SHA: `master` moves by hundreds of
# commits between installs, which makes a shell unreproducible. Override to move forward:
#   OMZ_REF=master ./install.sh
OMZ_URL="${OMZ_URL:-https://github.com/ohmyzsh/ohmyzsh}"
OMZ_REF="${OMZ_REF:-4d4cfc287e9d887b81242c0e431b5f49f9cec5c1}"
OMZ_DIR="${OMZ_DIR:-$HOME/.oh-my-zsh}"

# Shallow-clone one ref. `git clone --depth=1 --branch <sha>` does not work -- --branch
# takes a branch or tag name, not a commit -- so init, fetch the commit, checkout
# FETCH_HEAD. Halves .git from 16M to 3.9M.
#
# Never `rm -rf` the destination: for Oh My Zsh that would take $OMZ_DIR/custom with it,
# where the user keeps their own plugins and themes.
shallow_clone() {
  local url="$1" ref="$2" dest="$3"

  mkdir -p "$dest"
  if [ ! -d "$dest/.git" ]; then
    git -C "$dest" init -q
    git -C "$dest" remote add origin "$url"
  else
    git -C "$dest" remote set-url origin "$url"  # honour an overridden URL
  fi
  git -C "$dest" fetch -q --depth=1 origin "$ref"
  git -C "$dest" checkout -q --force FETCH_HEAD
  # no `git clean` either -- same reason as no `rm -rf` above
}

printf 'Oh My Zsh: %s @ %s -> %s\n' "$OMZ_URL" "$OMZ_REF" "$OMZ_DIR"
if [ -d "$OMZ_DIR/.git" ]; then
  existing="$(git -C "$OMZ_DIR" rev-parse HEAD 2>/dev/null || echo unknown)"
  if [ "$existing" = "$OMZ_REF" ]; then
    echo 'Already at the pinned commit, skipping.'
  else
    printf 'Existing checkout is at %s, pinned ref is %s. Refetching.\n' "$existing" "$OMZ_REF"
    shallow_clone "$OMZ_URL" "$OMZ_REF" "$OMZ_DIR"
  fi
else
  shallow_clone "$OMZ_URL" "$OMZ_REF" "$OMZ_DIR"
fi

# Plugins pinned the same way, so an upstream release cannot change shell behaviour on the
# next install. Bump by resolving the new tag: git ls-remote <url> 'refs/tags/<tag>^{}'
ZSH_CUSTOM="${ZSH_CUSTOM:-$OMZ_DIR/custom}"

# name:url:ref
plugins=(
  "zsh-autosuggestions:https://github.com/zsh-users/zsh-autosuggestions:e52ee8ca55bcc56a17c828767a3f98f22a68d4eb"
  "zsh-completions:https://github.com/zsh-users/zsh-completions:28c5bdcaf81bb89e56d0df8267d822c3b8aed9e0"
  "zsh-history-substring-search:https://github.com/zsh-users/zsh-history-substring-search:400e58a87f72ecec14f783fbd29bc6be4ff1641c"
)

for plugin in "${plugins[@]}"; do
  name="${plugin%%:*}"
  rest="${plugin#*:}"
  url="${rest%:*}"
  ref="${rest##*:}"
  dest="$ZSH_CUSTOM/plugins/$name"

  if [ -d "$dest/.git" ]; then
    existing="$(git -C "$dest" rev-parse HEAD 2>/dev/null || echo unknown)"
    if [ "$existing" = "$ref" ]; then
      printf '%-32s already at pinned commit\n' "$name"
      continue
    fi
  fi

  printf '%-32s fetching %s\n' "$name" "$ref"
  # Not `|| true`: a silently missing plugin only shows up as a broken shell later.
  if ! shallow_clone "$url" "$ref" "$dest"; then
    printf '❌ Failed to install %s (%s @ %s)\n' "$name" "$url" "$ref" >&2
    exit 1
  fi
done

printf '\nDone. Plugins are in %s\n' "$ZSH_CUSTOM"
