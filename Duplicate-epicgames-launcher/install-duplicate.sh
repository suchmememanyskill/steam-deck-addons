#!/bin/bash

echo Hello! This script will install Duplicate
echo Making directories..
mkdir -p ~/.bin

echo Downloading files..
curl https://github.com/suchmememanyskill/Duplicate/releases/download/1.6/Linux.zip -L -o ~/.bin/temp.zip
curl https://raw.githubusercontent.com/suchmememanyskill/steam-deck-addons/main/Duplicate-epicgames-launcher/Duplicate.desktop -o ~/.local/share/applications/Duplicate.desktop

echo Unzipping files..
unzip -d ~/.bin ~/.bin/temp.zip 
rm -f ~/.bin/temp.zip

echo Removing old folder
rm -rf ~/.bin/Duplicate

echo Renaming folders
mv ~/.bin/Linux ~/.bin/Duplicate

echo Setting permissions..
chmod a+x ~/.bin/Duplicate/Duplicate
chmod a+x ~/.bin/Duplicate/legendary

read -p "Done! Press enter to exit"
