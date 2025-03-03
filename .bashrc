# shellcheck shell=bash
# ~/.bashrc: executed by bash(1) for non-login shells.

##########################################
## Prompt
##

export PS1="\\[$(tput setaf 1)\\]\\d \\t \\u@\\h:\\w \\[$(tput sgr 0 0)\\]>"
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
## Aliases
##

# colorized shortcuts
export LS_OPTIONS='--color=auto --human'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias ip='ip $LS_OPTIONS'
alias diff='diff $LS_OPTIONS'

## aliases to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

## alias to be a bit faster:
alias c="tr -d '\n' | pbcopy"        # Trim new lines and copy to clipboard
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear'
alias g="git"
alias h='history'
alias df='df -h'
alias du='du -h'
alias dum='du --max-depth=1'
alias grep='grep --color=always'
alias grepnc='grep --color=none'
alias px='ps aux|grep'
alias utc='date -u "+%Y-%m-%dT%H:%MZ"'
alias wget='wget -c'

## apt-get
alias update="sudo apt-get update"
alias install="sudo apt-get install"
alias upgrade="sudo apt-get upgrade"
alias remove="sudo apt-get remove"

# services alias
alias service="sudo service"

# system monitoring
alias topcpu='ps -eo pcpu,pmem,pid,user,args | sort -k 1 -r | head -10'

# show open ports
alias local_ports='sudo nmap -sT -O localhost'

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
source ~/git-completion/git-completion.bash
# Github CLI
[[ -x $( command -v gh ) ]] && eval "$( gh completion -s bash )"

##########################################
##  Bash Colors
##

black='\033[0;30m'
dark_gray='\033[1;30m'
red='\033[0;31m'
light_red='\033[1;31m'
green='\033[0;32m'
light_green='\033[1;32m'
brown='\033[0;33m'
yellow='\033[1;33m'
blue='\033[0;34m'
light_blue='\033[1;34m'
purple='\033[0;35m'
light_purple='\033[1;35m'
cyan='\033[0;36m'
light_cyan='\033[1;36m'
light_gray='\033[0;37m'
white='\033[1;37m'
nocolor='\033[0m'

## Colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

##########################################
##  ii : show host related infos
##

HOST=$(hostname -f 2>/dev/null || hostname)

function ii() {
    local O_LANG=$LANG
    local O_LC_ALL=$LC_ALL
    local MY_IF=$(/sbin/ifconfig | awk '/Link / { print $1 } ')

    LANG=C
    LC_ALL=C

    echo -e "\n${nocolor}You are logged in to ${light_red}${HOST}${nocolor} - $(date)"
    echo -e "\n${light_red}Kernel version:${nocolor} " ; uname -a
    echo -e "\n${light_red}Users logged on:${nocolor} " ; w -h
    echo -e "\n${light_red}Machine stats :${nocolor} " ; uptime
    echo -e "\n${light_red}Memory stats :${nocolor} " ; free -m
    echo -e "\n${light_red}Disk stats :${nocolor} " ; df -h
    for my_if in $MY_IF; do
    echo -e "\n${light_red}Interface $my_if :${nocolor}" ;
        /sbin/ifconfig $my_if | awk '/inet / { print $2 } ' | cut -d ":" -f 2
        /sbin/ifconfig $my_if | awk '/inet6 / { print $3 } '
        /sbin/ifconfig $my_if | awk '/TX b/ { print "TX " $3 $4 " RX " $7 $8 } '
    done
echo
LANG=$O_LANG
LC_ALL=$O_LC_ALL
}
