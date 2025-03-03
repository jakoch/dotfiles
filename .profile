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
