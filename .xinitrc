#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

## launch SSH agents
if ! pgrep -u "$USER" ssh-agent >/dev/null; then
  eval "$(/usr/bin/ssh-agent)"
fi
if ! pgrep -u "$USER" gpg-agent >/dev/null; then
  eval "$(/usr/bin/gpg-agent --daemon)"
fi

## launch dropbox, if installed
# [ -x ~/.dropbox-dist/dropboxd ] && ~/.dropbox-dist/dropboxd &

# use our fonts
#xset fp+ /home/$USER/fonts &
xset fp+ "$HOME/.fonts" &
xset fp rehash &

# invoke global X session script
#. /etc/X11/Xsession

# set sound volume
# amixer fails hard with no ALSA mixer, so make it best-effort.
if command -v amixer >/dev/null 2>&1; then
    amixer sset 'Master' 20% || true
    amixer sset 'Master' unmute || true
fi

## launch dwm
#exec /usr/local/bin/dwm

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        # shellcheck source=/dev/null
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources

exec i3 --force-xinerama
