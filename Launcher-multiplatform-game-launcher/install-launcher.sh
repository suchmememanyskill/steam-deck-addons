#!/bin/bash

echo Hello! This script will install the latest Alfae
echo Making directories..
mkdir -p ~/.bin

echo Downloading files..
curl https://github.com/suchmememanyskill/Launcher/releases/latest/download/Linux.zip -L -o ~/.bin/temp.zip
rm ~/.local/share/applications/Launcher.desktop
curl https://raw.githubusercontent.com/suchmememanyskill/steam-deck-addons/main/Launcher-multiplatform-game-launcher/Launcher.desktop > ~/.local/share/applications/Alfae.desktop

echo Unzipping files..
unzip -d ~/.bin ~/.bin/temp.zip 
rm -f ~/.bin/temp.zip

echo Removing old folder
rm -rf ~/.bin/Launcher
rm -rf ~/.bin/Alfae

echo Renaming folders
mv ~/.bin/Release ~/.bin/Alfae

echo Setting permissions..
chmod a+x ~/.bin/Alfae/Alfae
chmod a+x ~/.bin/Alfae/legendary
chmod a+x ~/.bin/Alfae/gogdl

read -p "Done! Press enter to exit"
