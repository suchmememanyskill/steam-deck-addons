#!/bin/bash

echo Hello! This script will install Alfae v1.1
echo Making directories..
mkdir -p ~/.bin

echo Downloading files..
curl https://github.com/suchmememanyskill/Launcher/releases/download/1.1.0/Linux.zip -L -o ~/.bin/temp.zip
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
