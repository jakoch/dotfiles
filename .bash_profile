#!/bin/bash

# bash reads .bash_profile, not .profile, for login shells. Sourcing .bashrc directly
# here would skip what .profile does -- `mesg n`, the startx guard -- and duplicate that
# guard, so chain to .profile instead. Login-shell-only settings would go above it.

if [ -r "$HOME/.profile" ]; then
    # shellcheck disable=SC1091
    source "$HOME/.profile"
fi
