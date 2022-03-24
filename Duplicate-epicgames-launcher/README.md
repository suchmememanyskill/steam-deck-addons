[![Donations](https://img.shields.io/badge/Support%20on-Ko--Fi-red)](https://ko-fi.com/suchmememanyskill)

# Duplicate

Duplicate is an epic games launcher alternative with integration in steam. It's available on both Linux and Windows. [Source code is available here](https://github.com/suchmememanyskill/Duplicate)

![Example](https://raw.githubusercontent.com/suchmememanyskill/steam-deck-addons/main/Duplicate-epicgames-launcher/Example.png)

![Example2](https://raw.githubusercontent.com/suchmememanyskill/steam-deck-addons/main/Duplicate-epicgames-launcher/Example2.png)

## Notes:
- This app is broken in the game ui of the steam deck. Please use the app in desktop mode.
- You need to reboot steam to see the changes made to the shortcuts. Switching back to game mode also restarts steam
- Duplicate will automatically use proton, if wine is unavailable.

## Install (Steam deck):
1. Launch into the desktop mode
2. [Download the `install-duplicate.sh` script](https://github.com/suchmememanyskill/steam-deckt-addons/releases/download/1.0/install-duplicate.sh). Save the file when prompted
3. Right click `install-duplicate.sh` in Dolphin and select Properties
4. Navigate to the Permissions tab
5. Check 'Is executable' then click 'OK'
6. Right click `install-duplicate.sh` in Dolphin and select 'Run in Konsole'

## First time setup (Logging in)
1. Launch into the desktop mode, if not already
2. Search for Duplicate in the start menu and launch it
3. You will be asked to log in. Click the orange link to open the epic games login page in your default browser and log in. Assuming you're using Firefox, the last row of the resulting page says `sid:    "xxxxxxxxxxxxxxxxxxx"`. Copy the text between the quotes and paste this into Duplicate.

## Usage
- You can change the location of future downloads by clicking on `Download location:`, clicking `Browse` and selecting a new folder
- You can install a game by pressing on a `Not Installed` game and pressing `Install`
- You can configure a game's launch options by pressing on an `Installed` game, and pressing `Info`. You can also configure to run with a specific version of proton. You can also uninstall a game via the `Info` menu
- You can sync the current installed games by pressing `Update Steam Games`. You can remove all previously synced games by pressing 'Remove Steam Games'

## Uninstall
1. Navigate to `~/.local/share/applications` and delete `Duplicate.desktop`
2. Navigate to `~/.bin` and delete `Duplicate`

## Changelog
- 1.6 @ [Duplicate](https://github.com/suchmememanyskill/Duplicate/releases/tag/1.6): Initial release for deck