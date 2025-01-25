# -*- mode: sh -*-
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[ -f /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=$PATH:$HOME/bin:$(go env GOPATH)/bin:/usr/local/opt/libpq/bin
