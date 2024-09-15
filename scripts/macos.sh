#!/bin/bash

# https://macos-defaults.com/

# Keyboard

# https://mac-key-repeat.zaymon.dev/
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat         -int 15 # Delay until repeat
defaults write -g KeyRepeat                -int 2  # Key repeat rate

defaults write kCFPreferencesAnyApplication TSMLanguageIndicatorEnabled -int 0 # Sonoma: Disable language popup

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

# iTerm2
defaults write com.googlecode.iterm2 TabViewType                 -int 2     # Appearance / General / Tab bar location - Left
defaults write com.googlecode.iterm2 TabStyleWithAutomaticOption -int 5     # Appearance / General / Theme - Minimal
defaults write com.googlecode.iterm2 SwitchPaneModifier          -int 5     # Keys / Navigation Shortcuts / Shorcut to choose a split pane - ⌥ Number
defaults write com.googlecode.iterm2 JiggleTTYSizeOnClearBuffer  -bool true # Respects multi-line prompt on clear buffer

/usr/libexec/PlistBuddy -c "Delete :'New Bookmarks':0:'Unlimited Scrollback'" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Add :'New Bookmarks':0:'Unlimited Scrollback' bool true" ~/Library/Preferences/com.googlecode.iterm2.plist

# Raycast
defaults write com.raycast.macos raycastPreferredWindowMode -string 'compact'
defaults write com.raycast.macos navigationCommandStyleIdentifierKey -string 'vim'

killall Raycast && open -a Raycast

# Dictionaries
curl -sS -C - -o ~/Library/Spelling/ru_RU.aff "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/ru_RU/ru_RU.aff"
curl -sS -C - -o ~/Library/Spelling/ru_RU.dic "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/ru_RU/ru_RU.dic"
curl -sS -C - -o ~/Library/Spelling/en_US.aff "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.aff"
curl -sS -C - -o ~/Library/Spelling/en_US.dic "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.dic"
