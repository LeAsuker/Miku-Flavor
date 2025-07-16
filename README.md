# Miku-Flavor v0.2
A self-installing rice for Debian-based Linux distributions using X11.

## Introduction
What has always bothered me about Linux ricing is that it is seen as something that is Arch-exclusive and often very difficult to do. Frankly, no. Every distribution that supports a DE can be riced, including beginner-friendly ones like Mint.

This rice is supposed to be simple to install and use. As I will update it I will also include some simple commentary on how it is built and how rices are generally built.

The present version is v0.2 - the rice looks good and the only problematic thing is the colorscheme and the lack of error handling in the script.

## TODO:
  - Revise colorscheme
  - Add error-handling to install script
  - Write-up on how rices work
  - Improve alacritty configuration
  - Improve polybar configuration:
    - Make volume and keyboard changeable
  - Make the script not overwrite global configs
  - Add uninstall script

## The tools used:
  - (herbstluftwm)[https://github.com/herbstluftwm/herbstluftwm]
  - (polybar)[https://github.com/polybar/polybar]
  - (picom)[https://github.com/yshui/picom]
  - (alacritty)[https://github.com/alacritty/alacritty]

## Problems:
  - Overwrites global configs instead of changing them specifically for the window manager. **If you have any of the above tools installed, back up their config files!**

## Colorscheme:
  - 07DAE2: Robin egg blue
  - 5E5E5E: Davy's gray
  - 313131: Jet
  - F5F5F5: White Smoke
  - D00281: Magenta dye
