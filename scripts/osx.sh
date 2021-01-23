#!/bin/bash

# dictionaries
wget -c -O ~/Library/Spelling/ru_RU.aff "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/ru_RU/ru_RU.aff"
wget -c -O ~/Library/Spelling/ru_RU.dic "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/ru_RU/ru_RU.dic"
wget -c -O ~/Library/Spelling/en_US.aff "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.aff"
wget -c -O ~/Library/Spelling/en_US.dic "https://raw.githubusercontent.com/LibreOffice/dictionaries/master/en/en_US.dic"

# defaults
defaults write NSGlobalDomain CGFontRenderingFontSmoothingDisabled -bool false
echo "NSGlobalDomain/CGFontRenderingFontSmoothingDisabled -> $(defaults read NSGlobalDomain CGFontRenderingFontSmoothingDisabled)"

defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
echo "NSGlobalDomain/ApplePressAndHoldEnabled -> $(defaults read NSGlobalDomain ApplePressAndHoldEnabled)"
