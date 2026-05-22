#!/bin/bash
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

apt-get update -y
apt-get install -y --no-install-recommends "${packages[@]}"

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  git clone https://github.com/ohmyzsh/ohmyzsh "$HOME/.oh-my-zsh"
fi

# Install zsh plugins
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
git clone --depth=1 --no-tags https://github.com/zsh-users/zsh-autosuggestions \
  "$ZSH_CUSTOM/plugins/zsh-autosuggestions" 2>/dev/null || true
git clone --depth=1 --no-tags https://github.com/zsh-users/zsh-completions \
  "$ZSH_CUSTOM/plugins/zsh-completions" 2>/dev/null || true
git clone --depth=1 --no-tags https://github.com/zsh-users/zsh-history-substring-search \
  "$ZSH_CUSTOM/plugins/zsh-history-substring-search" 2>/dev/null || true
