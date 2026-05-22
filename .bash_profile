#!/bin/bash

# Ensure .bashrc is sourced if it exists
if [ -f "$HOME/.bashrc" ]; then
    # shellcheck disable=SC1091
    source "$HOME/.bashrc"
fi

# Start X if DISPLAY is not set (indicating a graphical session isn't running)
if [ -z "$DISPLAY" ]; then
    exec startx
fi
