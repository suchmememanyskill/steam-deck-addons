#!/bin/bash

echo Hello! This script will install Launcher v1.0
echo Making directories..
mkdir -p ~/.bin

echo Downloading files..
curl https://github.com/suchmememanyskill/Launcher/releases/download/1.0.0/Linux.zip -L -o ~/.bin/temp.zip
curl https://raw.githubusercontent.com/suchmememanyskill/steam-deck-addons/main/Launcher-multiplatform-game-launcher/Launcher.desktop -o ~/.local/share/applications/Launcher.desktop

echo Unzipping files..
unzip -d ~/.bin ~/.bin/temp.zip 
rm -f ~/.bin/temp.zip

echo Removing old folder
rm -rf ~/.bin/Launcher

echo Renaming folders
mv ~/.bin/Release ~/.bin/Launcher

echo Setting permissions..
chmod a+x ~/.bin/Launcher/Launcher
chmod a+x ~/.bin/Launcher/legendary

read -p "Done! Press enter to exit"
