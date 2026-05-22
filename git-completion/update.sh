#!/bin/bash

# check if curl is installed
if ! command -v curl &> /dev/null
then
    echo "curl could not be found"
    exit
fi

# update files from git
curl -OL https://github.com/git/git/raw/master/contrib/completion/git-completion.bash
curl -OL https://github.com/git/git/raw/master/contrib/completion/git-prompt.sh
