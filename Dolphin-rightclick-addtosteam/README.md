# Add to steam

This is a simple application that adds the path passed as a commandline argument to Steam. The .desktop file adds an entry to the right click menu in Dolphin of Windows or Linux executables to add them to Steam. [The source code for the application can be found here](https://github.com/suchmememanyskill/Duplicate/tree/main/SimpleSteamShortcutAdder). This should also work in other kde enviroments. I've only tested it on the Steam Deck and on Manjaro

![Example](https://raw.githubusercontent.com/suchmememanyskill/steam-deckt-addons/main/Dolphin-rightclick-addtosteam/Example.png)

## Notes:
- This currently does not support multiple users well. It only updates whatever the first user is.
- You need to reboot steam to see the changes made to the shortcuts

## Install (Steam deck):
1. Launch into the desktop mode
2. [Download the `add-to-steam.sh` script](https://github.com/suchmememanyskill/steam-deckt-addons/releases/download/1.0/add-to-steam.sh). Save the file when prompted
3. Right click `add-to-steam.sh` in Dolphin and select Properties
4. Navigate to the Permissions tab
5. Check 'Is executable', then click 'OK'
6. Right click `add-to-steam.sh` in Dolphin and select 'Run in Konsole'

## Uninstall
1. Navigate to `~/.local/share/kservices5/ServiceMenus/` and delete `SimpleSteamShortcutAdder.desktop`
