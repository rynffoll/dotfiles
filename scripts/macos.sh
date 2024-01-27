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

# iTerm2
defaults write com.googlecode.iterm2 TabViewType                 -int 2     # Appearance / General / Tab bar location - Left
defaults write com.googlecode.iterm2 TabStyleWithAutomaticOption -int 5     # Appearance / General / Theme - Minimal
defaults write com.googlecode.iterm2 SwitchPaneModifier          -int 5     # Keys / Navigation Shortcuts / Shorcut to choose a split pane - ⌥ Number
defaults write com.googlecode.iterm2 JiggleTTYSizeOnClearBuffer  -bool true # Respects multi-line prompt on clear buffer

/usr/libexec/PlistBuddy -c "Delete :'New Bookmarks':0:'Unlimited Scrollback'" ~/Library/Preferences/com.googlecode.iterm2.plist
/usr/libexec/PlistBuddy -c "Add :'New Bookmarks':0:'Unlimited Scrollback' bool true" ~/Library/Preferences/com.googlecode.iterm2.plist

# Rectangle
defaults write com.knollsoft.Rectangle bottomHalf      '{ keyCode = 125; modifierFlags = 1835008; }'
defaults write com.knollsoft.Rectangle bottomLeft      '{}'
defaults write com.knollsoft.Rectangle bottomRight     '{}'
defaults write com.knollsoft.Rectangle center          '{ keyCode = 36;  modifierFlags = 1835008; }'
defaults write com.knollsoft.Rectangle centerThird     '{}'
defaults write com.knollsoft.Rectangle firstThird      '{}'
defaults write com.knollsoft.Rectangle firstTwoThirds  '{}'
defaults write com.knollsoft.Rectangle larger          '{}'
defaults write com.knollsoft.Rectangle lastThird       '{}'
defaults write com.knollsoft.Rectangle lastTwoThirds   '{}'
defaults write com.knollsoft.Rectangle leftHalf        '{ keyCode = 123; modifierFlags = 1835008; }'
defaults write com.knollsoft.Rectangle maximize        '{}'
defaults write com.knollsoft.Rectangle maximizeHeight  '{}'
defaults write com.knollsoft.Rectangle nextDisplay     '{ keyCode = 124; modifierFlags = 1966080; }'
defaults write com.knollsoft.Rectangle previousDisplay '{ keyCode = 123; modifierFlags = 1966080; }'
defaults write com.knollsoft.Rectangle restore         '{ keyCode = 117; modifierFlags = 1835008; }'
defaults write com.knollsoft.Rectangle rightHalf       '{ keyCode = 124; modifierFlags = 1835008; }'
defaults write com.knollsoft.Rectangle smaller         '{}'
defaults write com.knollsoft.Rectangle topHalf         '{ keyCode = 126; modifierFlags = 1835008; }'
defaults write com.knollsoft.Rectangle topLeft         '{}'
defaults write com.knollsoft.Rectangle topRight        '{}'

killall Rectangle && open -a Rectangle

# Raycast
defaults write com.raycast.macos raycastPreferredWindowMode -string 'compact'
defaults write com.raycast.macos navigationCommandStyleIdentifierKey -string 'vim'

killall Raycast && open -a Raycast


# Dictionaries
curl -sS -C - -o ~/Library/Spelling/ru_RU.aff "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/ru_RU/ru_RU.aff"
curl -sS -C - -o ~/Library/Spelling/ru_RU.dic "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/ru_RU/ru_RU.dic"
curl -sS -C - -o ~/Library/Spelling/en_US.aff "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.aff"
curl -sS -C - -o ~/Library/Spelling/en_US.dic "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.dic"
