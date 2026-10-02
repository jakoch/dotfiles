# shellcheck shell=bash
#
# Aliases shared by .bashrc and .zshrc. POSIX-compatible -- no arrays, no [[ ]] -- so
# both shells source it unchanged. Never executed.

##########################################
## Navigation
##

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'

##########################################
## Search
##
alias grep='grep --color=auto'
alias grepc='grep --color=auto -C 3'
alias grepnc='grep --color=none'
alias rgc='rg --context 3'

# fuzzy search file content with preview
alias rgpreview='rg --files | fzf --preview "rg --color=always {}"'

##########################################
## Clipboard
##

if command -v xclip >/dev/null 2>&1; then
  alias c="tr -d '\n' | xclip -selection clipboard"
elif command -v wl-copy >/dev/null 2>&1; then
  alias c="tr -d '\n' | wl-copy"
fi

##########################################
## Misc
##

alias cls='clear'
alias df='df -h'
alias du='du -h'
alias dum='du --max-depth=1 | sort -h'
alias h='history'
alias utc='date -u "+%Y-%m-%dT%H:%MZ"'
alias wget='wget -c'

##########################################
## System monitoring
##

alias topcpu='ps -eo pcpu,pmem,pid,user,args | sort -k 1 -r | head -10'

if command -v ss >/dev/null 2>&1; then
  alias local_ports='ss -tuln'
  alias local_ports_p='ss -tulnp'
elif command -v netstat >/dev/null 2>&1; then
  alias local_ports='netstat -tuln'
  alias local_ports_p='netstat -tulnp'
fi
