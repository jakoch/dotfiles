#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

## launch SSH agents
eval $(/usr/bin/killall ssh-agent; /usr/bin/ssh-agent)
eval $(/usr/bin/killall gpg-agent; /usr/bin/gpg-agent --daemon)

## launch dropbox, if installed
#[ -x ~/.dropbox-dist/dropboxd & ]

# use our fonts
#xset fp+ /home/$USER/fonts &
xset fp+ ./fonts &
xset fp rehash &

# invoke global X session script
#. /etc/X11/Xsession

# set sound volume
amixer sset 'Master' 20%
amixer sset 'Master' unmute

## launch dwm
#exec /usr/local/bin/dwm

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec i3 --force-xinerama