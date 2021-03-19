#!/bin/bash

# defaults
defaults write NSGlobalDomain CGFontRenderingFontSmoothingDisabled -bool false
defaults write NSGlobalDomain ApplePressAndHoldEnabled             -bool false

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
defaults write com.knollsoft.Rectangle restore         '{ keyCode = 51;  modifierFlags = 1835008; }'
defaults write com.knollsoft.Rectangle rightHalf       '{ keyCode = 124; modifierFlags = 1835008; }'
defaults write com.knollsoft.Rectangle smaller         '{}'
defaults write com.knollsoft.Rectangle topHalf         '{ keyCode = 126; modifierFlags = 1835008; }'
defaults write com.knollsoft.Rectangle topLeft         '{}'
defaults write com.knollsoft.Rectangle topRight        '{}'

# reload Rectangle
pkill Rectangle && open -a Rectangle

# dictionaries
wget -c -O ~/Library/Spelling/ru_RU.aff "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/ru_RU/ru_RU.aff"
wget -c -O ~/Library/Spelling/ru_RU.dic "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/ru_RU/ru_RU.dic"
wget -c -O ~/Library/Spelling/en_US.aff "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.aff"
wget -c -O ~/Library/Spelling/en_US.dic "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.dic"
