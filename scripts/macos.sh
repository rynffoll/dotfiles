#!/bin/bash

# https://macos-defaults.com/

# Keyboard

# https://mac-key-repeat.zaymon.dev/
defaults write -g ApplePressAndHoldEnabled -bool false

# Keyboard > Key repeat rate > Fast
defaults write -g InitialKeyRepeat -int 15
# Keyboard > Delay until repeat > Short
defaults write -g KeyRepeat -int 2

# Keyboard > Text Input > Input Sources > Edit > Automatically switch to a document's input source
defaults write com.apple.HIToolbox AppleGlobalTextInputProperties -dict-add "TextInputGlobalPropertyPerContextInput" -bool true

# Keyboard > Keyboard Navigation
defaults write NSGlobalDomain AppleKeyboardUIMode -int "2"

# defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled -bool false # Disable language indicator

# Dock
defaults write com.apple.dock autohide -bool true

killall Dock

# Mission Control
defaults write com.apple.dock mru-spaces -bool false # Automatic rearrange Spaces based on most recent use

killall Dock

# Finder
defaults write -g AppleShowAllExtensions    -bool true
defaults write com.apple.finder ShowPathbar -bool true

killall Finder

# Safari
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

killall Safari && open -a Safari

# Emacs
defaults write org.gnu.Emacs AppleFontSmoothing -int 0

# Raycast
defaults write com.raycast.macos raycastPreferredWindowMode -string 'compact'
defaults write com.raycast.macos navigationCommandStyleIdentifierKey -string 'vim'

killall Raycast && open -a Raycast
