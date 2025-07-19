# Miku-Flavor v0.4
A self-installing rice for Debian-based Linux distributions inspired by Hatsune Miku.

## Introduction
What has always bothered me about Linux ricing is that it is seen as something that is Arch-exclusive and often very difficult to do. Frankly, no. Every distribution that supports a DE can be riced, including beginner-friendly ones like Mint.

This rice is supposed to be simple to install and use. As I will update it I will also include some simple commentary on how it and rices in general are made.

The present version is v0.4 - everything should be functional, the aesthetics are pleasing and there is some error handling in the script.

## Installation:
  Prerequisites: apt package manager and X11.

  1. Download the 'miku_flavor_install.sh' script.
  2. Allow it to be executed by the owner.
     - Go to the script's directory, open the terminal, and type 'chmod u+x miku_flavor_install.sh'
  3. Run the script with 'path/to/miku_flavor_install.sh'. The installation should be automatic, but you might need to press Mod+Shift+R to reload the window manager configuration once it's done.
     - If you have trouble, go to the script's directory and type './miku_flavor_install.sh' into the terminal.

## Usage:
This entire project is based on herbstluftwm, a window manager. Window managers are something like the desktop environments you probably know - MATE, KDE Plasma, Cinnamon, etc. DEs/WMs are chosen before login, usually with an icon somewhere to the top and right of the login prompts. Find that icon, click it, and choose herbstluftwm.

For information concerning the keybinds, this is a vanilla HLWM setup with some extra keybinds added for convenience. I recommend you to study the official HLWM page and the autostart file for a tutorial.

The added keybinds are:
  - Mod+d: dmenu, an alternative to the usual start menu.
  - Mod+w: Firefox, for quick access.

## TODO:
  - Revise colorscheme
  - Improve error handling in install script
  - Write-up on how rices work
  - Improve alacritty configuration
  - Improve polybar configuration:
    - **Make volume and keyboard changeable**
  - Make the script not overwrite global configs
  - Add uninstall script
  - Improve code quality of install script
  - Add more screenshots

## Tools used:
  - [herbstluftwm](https://github.com/herbstluftwm/herbstluftwm)
  - [polybar](https://github.com/polybar/polybar)
  - [picom](https://github.com/yshui/picom)
  - [alacritty](https://github.com/alacritty/alacritty)
  - [dmenu](https://github.com/aario/dmenu)

## Problems:
  - Overwrites global configs instead of changing them specifically for the window manager. **If you have any of the above tools installed, back up their config files first!**
  - Changing keyboard layouts and volume level is problematic and requires the terminal for now. **Fixing this is my main priority.**
  - HLWM seems to have trouble working on VMs - I couldn't get it to work on a Kali VM and it was freezing for a tester on a Mint VM. Everything installed properly, though.
