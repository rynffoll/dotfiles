#!/bin/bash

# homebrew
read -r -p "homebrew?"
[[ ! $(command -v brew) ]] && arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

arch -x86_64 brew bundle install -v --file=Brewfile

# dotfiles
read -r -p "dotfiles?"

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

# directories
read -r -p "directories?"
[ ! -d ~/Org ] && ln -sv ~/Sync/Org ~/Org

# dictionaries
read -r -p "dictionaries?"

wget -c "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/ru_RU/ru_RU.aff" -O ~/Library/Spelling/ru_RU.aff
wget -c "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/ru_RU/ru_RU.dic" -O ~/Library/Spelling/ru_RU.dic
wget -c "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.aff"    -O ~/Library/Spelling/en_US.aff
wget -c "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.dic"    -O ~/Library/Spelling/en_US.dic

# defaults
read -r -p "defaults?"

defaults write NSGlobalDomain CGFontRenderingFontSmoothingDisabled -bool false
echo "NSGlobalDomain/CGFontRenderingFontSmoothingDisabled -> $(defaults read NSGlobalDomain CGFontRenderingFontSmoothingDisabled)"

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
echo "NSGlobalDomain/ApplePressAndHoldEnabled -> $(defaults read NSGlobalDomain ApplePressAndHoldEnabled)"
