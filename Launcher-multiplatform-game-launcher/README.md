# Alfae v1.1.0
Alfae is an experimental project to launch GOG/Local/ItchIo/Epic/Bottles Games in an organised fashion. Also can add games to deck UI. [Source code is available here](https://github.com/suchmememanyskill/Alfae)

![Example](https://raw.githubusercontent.com/suchmememanyskill/steam-deck-addons/main/Launcher-multiplatform-game-launcher/Example1.png)

![Example2](https://raw.githubusercontent.com/suchmememanyskill/steam-deck-addons/main/Launcher-multiplatform-game-launcher/Example2.jpg)

## Notes:
- This app is broken in the game ui of the steam deck. Please use the app in desktop mode.
- You need to reboot steam to see the changes made to the shortcuts. Switching back to game mode also restarts steam

## Install (Steam deck):
1. Launch into the desktop mode
2. Open a `Konsole` window
3. Paste the following command into it: `curl https://raw.githubusercontent.com/suchmememanyskill/steam-deck-addons/main/Launcher-multiplatform-game-launcher/install-launcher.sh | sh`

## First time setup (Epic Games)
1. Launch into the desktop mode, if not already
2. Search for Alfae in the start menu and launch it
3. When the application launches, press `Plugins` on the top right, go to `Epic Games Integration` and click on `Log in`
4. You will be asked to log in. Click the orange link to open the epic games login page in your default browser and log in. Assuming you're using Firefox, the last row of the resulting page says `sid:    "xxxxxxxxxxxxxxxxxxx"`. Copy the text between the quotes and paste this into the text box.

## First time setup (Itch.io)
1. Launch into the desktop mode, if not already
2. Search for Alfae in the start menu and launch it
3. When the application launches, press `Plugins` on the top right, go to `Itch.io Integration` and click on `Log in`
4. You will be asked to log in. Click the orange link to open the itch.io login page in your default browser and log in. Generate an API key and paste the generated API key into the text box.

## First time setup (GOG)
1. Launch into the desktop mode, if not already
2. Search for Alfae in the start menu and launch it
3. When the application launches, press `Plugins` on the top right, go to `GOG Integration` and click on `Log in`
4. Follow the steps in the application to log in on GOG

## Usage
- You can change the location of future downloads by clicking on `Current download location:`, and selecting a new folder.
- You can install a game by pressing on a `Not Installed` game and pressing `Install`
- You can configure a game's launch options by pressing on an `Installed` game, and pressing `More`. It differs per game platform what options you get in the `More` box.
- You can change what the game is launched with by pressing on an `Installed` game, and pressing `More`. Then select `Set Boot Configuration`
- You can sync the current installed games to steam by pressing `Plugins`, `Steam Exporter` then `Add games to steam`. This is where you can also remove them

## Uninstall
1. Navigate to `~/.local/share/applications` and delete `Launcher.desktop`
2. Navigate to `~/.bin` and delete `Alfae`
