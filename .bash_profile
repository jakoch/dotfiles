if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

[[ -z $DISPLAY ]] && exec startx
