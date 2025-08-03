# Miku-Flavor v0.6
A self-installing rice for Debian-based Linux distributions based on Hatsune Miku.

## Introduction
What has always bothered me about Linux ricing is that it is seen as something that is Arch-exclusive and often very difficult to do. Frankly, no. Every distribution that supports a DE can be riced, including beginner-friendly ones like Mint.

This rice is supposed to be simple to install and use. As I will update it I will also include some simple commentary on how it and rices in general are made.

The present version is v0.6 - Script includes error handling and global configurations of the tools are not overwritten.

## Installation:
  Prerequisites: apt package manager and X11.

  1. Download the 'miku_flavor_install.sh' script.
  2. Allow it to be executed by the owner.
     - Go to the script's directory, open the terminal, and type 'chmod u+x miku_flavor_install.sh'
  3. Run the script with 'path/to/miku_flavor_install.sh'. The installation should be automatic, but you might need to press Mod+Shift+R to reload the window manager configuration once it's done.
     - If you have trouble, go to the script's directory and type './miku_flavor_install.sh' into the terminal.
     - **Do NOT run the script with sudo, it will break the home directory mechanisms.**

## Usage:
This entire project is based on herbstluftwm, a window manager. Window managers are something like the desktop environments you probably know - MATE, KDE Plasma, Cinnamon, etc. DEs/WMs are chosen before login, usually with an icon somewhere to the top and right of the login prompts. Find that icon, click it, and choose herbstluftwm.

For information concerning the keybinds, this is a vanilla HLWM setup with some extra keybinds added for convenience. I recommend you to study the official HLWM page and the autostart file, which I have commented, for a tutorial.

The added keybinds are:
  - Mod+d: dmenu, an alternative to the usual start menu.
  - Mod+w: Firefox.
  - Mod+n: Nemo file explorer.

Miku-Flavor uses a custom configuration folder at $HOME/.config/mikuflavor/ that includes all config files used as well as the wallpaper. The only exception is the HLWM 'autostart' file in $HOME/.config/herbstluftwm/

The install script can also be used as a 'reset script' - if you break your configuration, simply run the script again to fix it.

## Issues:
  - Overwrites global autostart file of herbstluftwm, back yours up if you have a custom one.
  - Setting up keyboard layouts needs to be done manually at the end of the autostart file.
  - HLWM seems to have trouble working on VMs - I couldn't get it to work on a Kali VM and it was freezing for a tester on a Mint VM. Everything installed properly, though.

## TODO:
  - Make setup script interactive
  - Add versions for other package managers
  - Improve color scheme
  - Include pywal setup
  - Add lock screen
  - Write-up on how rices work
  - Add fitting font
  - Add uninstall script
  - Add more screenshots

## Tools used:
  - [herbstluftwm](https://github.com/herbstluftwm/herbstluftwm) - Window manager and core of this setup
  - [polybar](https://github.com/polybar/polybar) - Taskbar
  - [picom](https://github.com/yshui/picom) - Compositor for cool effects
  - [alacritty](https://github.com/alacritty/alacritty) - Terminal emulator
  - [rofi](https://github.com/davatorium/rofi) - Used for menus
  - [rofi-wifi-menu](https://github.com/zbaylin/rofi-wifi-menu) - Miku-Flavor uses a customized version hooked into polybar
  - [pywal](https://github.com/dylanaraps/pywal) - Used for automatic colorscheme generation and management
