#! /usr/bin/env bash

echo "Installing OhMyZsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Interesting mac settings: https://gist.github.com/bradp/bea76b16d3325f5c47d4

echo "Enabling subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2

echo "Showing all filename extensions in Finder by default"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Disabling the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Avoiding the creation of .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "Setting the icon size of Dock items to 36 pixels for optimal size/screen-realestate"
defaults write com.apple.dock tilesize -int 36

echo "Setting Dock to auto-hide and removing the auto-hiding delay"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

echo "Setting screenshots location to ~/Pictures/Screenshots"
mkdir -p "$HOME/Pictures/Screenshots"
defaults write com.apple.screencapture location -string "$HOME/Pictures/Screenshots"

echo "Setting screenshot format to PNG"
defaults write com.apple.screencapture type -string "png"

echo "Disable 'natural' (Lion-style) scrolling"
#defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "Show path bar..."
defaults write com.apple.finder ShowPathbar -bool true

echo "Show status bar..."
defaults write com.apple.finder ShowStatusBar -bool true

echo "Disable natural scrolling..."
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "TODO: Finder - Show Library folder..."
#defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "TODO: Finder - Calculate folder..."
#defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "TODO: Finder - Text size 14..."
#defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "TODO: Finder - New Finder opens in Documents..."
#defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "TODO: Finder - New Finder opens in Documents..."
#defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "TODO: Finder - Show <username> in sidebar..."
#defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "TODO: Finder - Remove tags from sidebar..."
#defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

echo "Finder - Use list view in all Finder windows by default"
defaults write com.apple.finder FXPreferredViewStyle Nlsv

killall Finder

echo "Done!"
