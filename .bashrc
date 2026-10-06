# shellcheck shell=bash
# ~/.bashrc: executed by bash(1) for non-login shells.

##########################################
## Prompt
##

# Pre-computed escapes: tput inside PS1 re-execs per prompt and breaks without a terminfo entry.
BOLD_RED='\[\e[1;31m\]'
NC='\[\e[0m\]'
PS1="${BOLD_RED}\d \t \u@\h:\w ${NC}> "
export PS1
umask 022

##########################################
## Get "Install Prompt" when "Command not found"
##
export COMMAND_NOT_FOUND_INSTALL_PROMPT=1

##########################################
## Locale - prefer US English with UTF-8
#export LC_ALL="en_US.UTF-8"
#export LANG="en_US"

##########################################
## Dotfiles root
##
# Repo root from this file's own location, so the checkout can live anywhere. BASH_SOURCE
# is the symlink path when this file is linked into $HOME, hence readlink -f.
export DOTFILES_DIR="${DOTFILES_DIR:-$(dirname -- "$(readlink -f -- "${BASH_SOURCE[0]:-$HOME/.bashrc}")")}"

##########################################
## Aliases
##

# colorized shortcuts
export LS_OPTIONS='--color=auto'
# Only a database file yields an eval-able string; bare `dircolors` emits shell definitions.
if [[ -r ~/.dircolors ]]; then
  eval "$(dircolors -b ~/.dircolors)"
fi
alias ls='ls $LS_OPTIONS'
alias la='ls $LS_OPTIONS -A'
alias l='ls $LS_OPTIONS -hFtr'
alias ll='ls $LS_OPTIONS -lAhFtr'
alias ip='ip -c'

## Prompt before destructive ops. These shadow the real commands, so children that
## inherit them (scripts, editors) also get the prompt -- use `rmf` for a clean delete.
alias rm='rm -i'
alias rmf='rm -f'
alias cp='cp -i'
alias mv='mv -i'

## alias to be a bit faster:
alias diff='diff -u'
alias g="git"
alias px='ps aux | grep -v grep | grep'

## apt-get
alias update="sudo apt-get update"
alias install="sudo apt-get install"
alias upgrade="sudo apt-get upgrade"
alias remove="sudo apt-get remove"

# services alias
alias service="sudo service"

##########################################
## Shared with zsh
##
if [ -r "$DOTFILES_DIR/shell/common.sh" ]; then
  # shellcheck source=/dev/null
  source "$DOTFILES_DIR/shell/common.sh"
fi

##########################################
## Settings
##

# No beeping
set bell-style visible
# Tab once for complete
set show-all-if-ambiguous on
# Show file info in complete
set visible-stats on
# disables the use of Ctrl-D to exit the shell
set -o ignoreeof


##########################################
## Options
##
## https://www.gnu.org/software/bash/manual/bash.html#The-Shopt-Builtin

_shopts=(
  cdspell                  # correct minor spelling errors in a cd command
  checkhash                # check hash table before path search
  checkwinsize             # update LINES and COLUMNS after every command
  cmdhist                  # cause multi-line commands to be appended to your bash history as a single line command
  histappend               # Append to the Bash history file, rather than overwriting it
  histverify               # history expansion (the !something) allows to edit the expanded line before executing
  huponexit                # SIGHUP all jobs on exit
  lithist                  # save multi line comments to history with new lines
  nocaseglob               # case-insensitive globbing (used in pathname expansion)
  no_empty_cmd_completion  # Do not attempt completion on an empty line
)

# try to enable some Bash 4 features, if possible:
if (( BASH_VERSINFO[0] > 3 )); then
  _shopts+=(
    autocd                 # like zsh,  `automatic cd`, e.g. `**/here` will enter `./foo/bar/here`
    checkjobs              # check running jobs when exiting interactive shell
    globstar               # `recursive globbing`, e.g. `echo **/*.txt`
  )
fi

shopt -s "${_shopts[@]}"; unset _shopts

##########################################
## Autocomplete
##
# Autocomplete for alias 'g' (git)
complete -o default -o nospace -F _git g
# Autocompletion for git
if [ -r "$DOTFILES_DIR/git-completion/git-completion.bash" ]; then
    # shellcheck source=/dev/null
    source "$DOTFILES_DIR/git-completion/git-completion.bash"
fi
# Github CLI -- cached, since regenerating costs ~50ms on every shell start.
if command -v gh >/dev/null 2>&1; then
    _gh_completion="${XDG_CACHE_HOME:-$HOME/.cache}/gh-completion.bash"
    if [ ! -s "$_gh_completion" ] || [ "$HOME/.config/gh/hosts.yml" -nt "$_gh_completion" ]; then
        mkdir -p "$(dirname -- "$_gh_completion")"
        gh completion -s bash > "$_gh_completion" 2>/dev/null || true
    fi
    if [ -r "$_gh_completion" ]; then
        # shellcheck source=/dev/null
        . "$_gh_completion"
    fi
    unset _gh_completion
fi

##########################################
##  Bash Colors
##

light_red='\033[1;31m'
nocolor='\033[0m'

## Colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

##########################################
##  ii : show host related infos
##

function ii() {
  local HOST
  HOST=$(hostname -f 2>/dev/null || hostname)
  local O_LANG=$LANG
  local O_LC_ALL=$LC_ALL
  local MY_IFS
  if command -v ifconfig >/dev/null 2>&1; then
    MY_IFS=$(/sbin/ifconfig | awk '/Link / { print $1 }')
  else
    MY_IFS=$(ip addr show | awk '/inet / { print $NF }')
  fi

  LANG=C
  LC_ALL=C

  echo -e "\n${nocolor}You are logged in to ${light_red}${HOST}${nocolor} - $(date)"
  echo -e "\n${light_red}Kernel version:${nocolor} " ; uname -a
  echo -e "\n${light_red}Users logged on:${nocolor} " ; w -h
  echo -e "\n${light_red}Machine stats :${nocolor} " ; uptime
  echo -e "\n${light_red}Memory stats :${nocolor} " ; free -m
  echo -e "\n${light_red}Disk stats :${nocolor} " ; df -h

  for my_if in $MY_IFS; do
    echo -e "\n${light_red}Interface $my_if :${nocolor}"
    if command -v ifconfig >/dev/null 2>&1; then
      /sbin/ifconfig "$my_if" | awk '/inet / { print $2 } ' | cut -d ":" -f 2
      /sbin/ifconfig "$my_if" | awk '/inet6 / { print $3 } '
      /sbin/ifconfig "$my_if" | awk '/TX b/ { print "TX " $3 $4 " RX " $7 $8 } '
    else
      ip addr show "$my_if" | awk '/inet / { print $2 }'
      ip -6 addr show "$my_if" | awk '/inet6 / { print $2 }'
      ip -s link show "$my_if" | awk '/RX/ { print "TX " $2 $3 " RX " $6 $7 }'
    fi
  done

  echo
  LANG=$O_LANG
  LC_ALL=$O_LC_ALL
}

##########################################
## Coding Tools Setup
##

setup_opencode() {
    "$DOTFILES_DIR/coding-tools/install_opencode.sh"
    "$DOTFILES_DIR/coding-tools/install_opencode_orchestrator.sh"
}

setup_mistral_vibe() {
    "$DOTFILES_DIR/coding-tools/install_mistral_vibe.sh"
}
