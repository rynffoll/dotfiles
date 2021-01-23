#!/bin/bash

[[ ! $(command -v brew) ]] && arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

arch -x86_64 brew bundle install -v --file=Brewfile
