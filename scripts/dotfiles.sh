#!/bin/bash

ln -sv "$(pwd)/bash_profile" ~/.bash_profile
ln -sv "$(pwd)/bashrc" ~/.bashrc

ln -sv "$(pwd)/zprofile" ~/.zprofile
ln -sv "$(pwd)/zshrc" ~/.zshrc

ln -sv "$(pwd)/config/fish/config.fish" ~/.config/fish/config.fish

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

mkdir -pv ~/.config/direnv
ln -sv "$(pwd)/config/direnv/direnv.toml" ~/.config/direnv/direnv.toml

mkdir -pv ~/.config/ghostty
ln -sv "$(pwd)/config/ghostty/config" ~/.config/ghostty/config
ln -sv "$(pwd)/config/ghostty/themes" ~/.config/ghostty/themes

[ ! -d ~/Org ] && ln -sv ~/Library/Mobile\ Documents/com~apple~CloudDocs/Org ~/Org
