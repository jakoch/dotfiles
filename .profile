#!/bin/sh

#
# ~/.profile: executed by Bourne-compatible login shells.
#

# Check if running under bash before sourcing .bashrc
case "$BASH" in
    *bash*)
        # Source .bashrc if it exists and is readable
        # shellcheck disable=SC1090
        [ -r ~/.bashrc ] && . ~/.bashrc
        ;;
esac

# Disable messages from other users
mesg n

# Start X if no display server is running. The TTY check keeps startx out of containers
# and SSH sessions, where it would block or fail hard.
if [ -z "$DISPLAY" ] && [ -z "$WAYLAND_DISPLAY" ]; then
    if [ -t 0 ] && [ -t 1 ] && command -v startx >/dev/null 2>&1; then
        exec startx
    fi
fi
