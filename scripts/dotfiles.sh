#!/bin/bash

ln -sv "$(pwd)/bash_profile" ~/.bash_profile
ln -sv "$(pwd)/bashrc" ~/.bashrc

ln -sv "$(pwd)/zprofile" ~/.zprofile
ln -sv "$(pwd)/zshrc" ~/.zshrc

ln -sv "$(pwd)/tmux.conf" ~/.tmux.conf

ln -sv "$(pwd)/gitconfig" ~/.gitconfig
ln -sv "$(pwd)/gitignore" ~/.gitignore

ln -sv "$(pwd)/ideavimrc" ~/.ideavimrc

mkdir -v ~/.ssh && chmod 700 ~/.ssh
ln -sv "$(pwd)/ssh/config" ~/.ssh/config

mkdir -v ~/.gnupg && chmod 700 ~/.gnupg
ln -sv "$(pwd)/gnupg/gpg-agent.conf" ~/.gnupg/gpg-agent.conf

mkdir -v ~/.clojure
ln -sv "$(pwd)/clojure/deps.edn" ~/.clojure/deps.edn

mkdir -pv ~/.config/karabiner
ln -sv "$(pwd)/config/karabiner/karabiner.json" ~/.config/karabiner/karabiner.json

[ ! -d ~/Org ] && ln -sv ~/Library/Mobile\ Documents/com~apple~CloudDocs/Org ~/Org
