#!/bin/bash

ln -sv "$(pwd)/bash_profile" ~/.bash_profile
ln -sv "$(pwd)/bashrc" ~/.bashrc

ln -sv "$(pwd)/zprofile" ~/.zprofile
ln -sv "$(pwd)/zshrc" ~/.zshrc

ln -sv "$(pwd)/config/fish/config.fish" ~/.config/fish/config.fish
ln -sv "$(pwd)/config/fish/fish_plugins" ~/.config/fish/fish_plugins

ln -sv "$(pwd)/tmux.conf" ~/.tmux.conf

mkdir -v ~/.config/git
ln -sv "$(pwd)/config/git/config" ~/.config/git/config
ln -sv "$(pwd)/config/git/ignore" ~/.config/git/ignore

ln -sv "$(pwd)/ideavimrc" ~/.ideavimrc

mkdir -v ~/.ssh && chmod 700 ~/.ssh
ln -sv "$(pwd)/ssh/config" ~/.ssh/config

mkdir -v ~/.gnupg && chmod 700 ~/.gnupg
ln -sv "$(pwd)/gnupg/gpg-agent.conf" ~/.gnupg/gpg-agent.conf

mkdir -v ~/.clojure
ln -sv "$(pwd)/clojure/deps.edn" ~/.clojure/deps.edn

mkdir -pv ~/.config/karabiner
ln -sv "$(pwd)/config/karabiner/karabiner.json" ~/.config/karabiner/karabiner.json

mkdir -pv ~/.config/ghostty
ln -sv "$(pwd)/config/ghostty/config" ~/.config/ghostty/config
ln -svh "$(pwd)/config/ghostty/themes" ~/.config/ghostty/themes

mkdir -pv ~/.config/mise
ln -sv "$(pwd)/config/mise/config.toml" ~/.config/mise/config.toml

mkdir -pv ~/.config/emacs-plus
ln -sv "$(pwd)/config/emacs-plus/build.yml" ~/.config/emacs-plus/build.yml

[ ! -d ~/Org ] && ln -sv ~/Library/Mobile\ Documents/com~apple~CloudDocs/Org ~/Org
