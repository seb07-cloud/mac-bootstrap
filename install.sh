#!/bin/bash

# Check if Homebrew is installed, install if not
if test ! $(which brew); then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Homebrew..."
brew update

echo "Installing Git..."
brew install git

declare -a StringArray=(
  "alfred" 
  "1password"
  "alt-tab"
  "appcleaner"
  "bartender"
  "bettertouchtool"
  "caffeine"
  "bettersnaptool"
  "cheatsheet"
  "blackmagic-disk-speed-test"
  "captain"
  "docker"
  "discord"
  "drawio"
  "firefox"
  "forklift"
  "git"
  "foxit-reader"
  "microsoft-outlook"
  "iterm2"
  "stats"
  "microsoft-teams"
  "visual-studio-code"
  "greenshot"
  "homeassistant"
  "karabiner-elements"
  "ledger-live"
  "logitech-options"
  "menuwhere"
  "microsoft-edge"
  "microsoft-remote-desktop"
  "microsoft-office" # This will include Excel, Word, Powerpoint, OneNote
  "microsoft-onedrive"
  "obsidian"
  "postman"
  "powershell"
  "sensiblesidebuttons"
  "sonos"
  "spotify"
  "steam"
  "telegram"
  "twitter"
  "tinkertool"
  "the-unarchiver"
  "tradingview"
  "utm"
  "zed"
)

# Iterate the string array using for loop
for val in ${StringArray[@]}; do
   echo "Installing $val..."
   brew install --cask $val
done

echo "Done installing!"
