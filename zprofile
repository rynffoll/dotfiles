# -*- mode: sh -*-
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[ -f /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=$PATH:$HOME/bin:$HOME/go/bin:$HOME/.cargo/bin:$HOME/.local/bin
