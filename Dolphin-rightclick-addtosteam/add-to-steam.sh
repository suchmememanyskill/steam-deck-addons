#!/bin/bash

echo Hello! This script will add an 'add to steam' button to the right click menu of applications
echo Making directories..
mkdir -p ~/.local/share/kservices5/ServiceMenus
mkdir -p ~/.bin

echo Downloading files..
curl https://github.com/suchmememanyskill/steam-deck-addons/releases/download/1.0/SimpleSteamShortcutAdder -L -o ~/.bin/SimpleSteamShortcutAdder
curl https://raw.githubusercontent.com/suchmememanyskill/steam-deckt-addons/main/Dolphin-rightclick-addtosteam/SimpleSteamShortcutAdder.desktop -o ~/.local/share/kservices5/ServiceMenus/SimpleSteamShortcutAdder.desktop

echo Setting permissions..
chmod a+x ~/.bin/SimpleSteamShortcutAdder

read -p "Done! Press enter to exit"
