#!/bin/bash

[[ ! $(command -v brew) ]] && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

ln -sv "$(pwd)/Brewfile" ~/.Brewfile

brew bundle check --global || brew bundle install --global -v
