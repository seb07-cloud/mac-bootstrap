#!/bin/bash

apps=(
    AudioSwitcher
    Alfred
    1Password 
    AltTab
    AppCleaner
    Bartender
    BetterTouchTool
    Caffeine
    BetterDisplay
    BetterSnapTool
    BetterTouchTool
    CheatSheet
    Black Magic Disk Speed Test
    Captain
    Close All
    Command X
    Docker
    Discord
    draw.io
    Firefox
    ForkLift
    Git
    Foxit
    Outlook
    iTerm 
    Stats
    Teams
    Visual Studio Code
    GreenShot
    Homeassistant
    HyperDuck
    Karabiner Elements
    Ledger Live
    Logi Options
    Menuwhere
    Microsoft Edge
    Microsoft Remote Desktop
    Microsoft Teams
    Microsoft Excel 
    Microsoft Word
    Microsoft Powerpoint
    Microsoft OneNote
    Microsoft OneDrive
    Microsoft Outlook
    Mini Play
    Obsidian
    Postman
    Powershell
    SensibleSideButtons
    Sonos
    Spotify
    Steam
    Stream Deck
    Telegram 
    Twitter
    TinkerTool
    The Unarchiver
    TradingView
    UTM 
    Zed
)

echo "Installing apps with Homebrew..."

# Check if Homebrew is installed, install if not
if test ! $(which brew); then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Updating Homebrew..."
brew update

echo "Installing Git..."
brew install git

# Iterate the string array using for loop

for val in ${apps[@]}; do
   echo "Installing $val..."
   if test ! $(which $val); then
    echo "Installing $val..."
    brew install --cask $val
   fi
done

done

echo "Done installing!"
