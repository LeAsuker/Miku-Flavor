# Miku-Flavor v0.3
A self-installing rice for Debian-based Linux distributions inspired by Hatsune Miku.

## Introduction
What has always bothered me about Linux ricing is that it is seen as something that is Arch-exclusive and often very difficult to do. Frankly, no. Every distribution that supports a DE can be riced, including beginner-friendly ones like Mint.

This rice is supposed to be simple to install and use. As I will update it I will also include some simple commentary on how it and rices in general are made.

The present version is v0.3 - the aesthetics are passable and the installation script has basic error handling built-in.

## Installation:
  Prerequisites: apt package manager and X11.

  1. Download the 'miku_flavor_install.sh' script.
  2. Allow it to be executed by the owner.
     - Go to the script's directory, open the terminal, and type 'chmod u+x miku_flavor_install.sh'
  4. Run the script. The installation should be automatic, but you might need to press Mod+Shift+R to reload the window manager configuration

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

## Tools used:
  - [herbstluftwm](https://github.com/herbstluftwm/herbstluftwm)
  - [polybar](https://github.com/polybar/polybar)
  - [picom](https://github.com/yshui/picom)
  - [alacritty](https://github.com/alacritty/alacritty)
  - [dmenu](https://github.com/aario/dmenu)

## Problems:
  - Overwrites global configs instead of changing them specifically for the window manager. **If you have any of the above tools installed, back up their config files first!**
  - Changing keyboard layouts and volume level is problematic and requires the terminal for now. **Fixing this is my main priority.**
