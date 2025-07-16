#!/bin/bash

apt update
generic_err="Could not download necessary packages, exiting with 1!"
apt -qq install wget || (echo $generic_err; exit 1)
apt -qq install dmenu || (echo $generic_err; exit 1)
apt -qq install feh || (echo $generic_err; exit 1)


apt -qq install herbstluftwm || (echo $generic_err; exit 1)

hlwm_link=https://raw.githubusercontent.com/ASTROfocs/Miku-Flavor/refs/heads/main/Configs/autostart

mkdir -p $HOME/.config/herbstluftwm
cd $HOME/.config/herbstluftwm

if ! curl --head --silent $hlwm_link >/dev/null 2>&1; then
    echo "Could not reach github for HLWM setup, exiting with 1."
	exit 1
fi

wget -O autostart $hlwm_link
chmod u+x autostart

apt -qq install polybar || (echo $generic_err; exit 1)

polybar_link=https://raw.githubusercontent.com/ASTROfocs/Miku-Flavor/refs/heads/main/Configs/config.ini

mkdir -p $HOME/.config/polybar
cd $HOME/.config/polybar

if ! curl --head --silent $polybar_link >/dev/null 2>&1; then
    echo "Could not reach github for Polybar setup, exiting with 1."
	exit 1
fi

wget -O config.ini $polybar_link

apt -qq install picom || (echo $generic_err; exit 1)

picom_link=https://raw.githubusercontent.com/ASTROfocs/Miku-Flavor/refs/heads/main/Configs/picom.conf

mkdir -p $HOME/.config/picom
cd $HOME/.config/picom

if ! curl --head --silent $picom_link >/dev/null 2>&1; then
    echo "Could not reach github for Polybar setup, exiting with 1."
	exit 1
fi

wget -O picom.conf $picom_link

apt -qq install alacritty || (echo $generic_err; exit 1)

alacritty_link=https://raw.githubusercontent.com/ASTROfocs/Miku-Flavor/refs/heads/main/Configs/alacritty.toml

mkdir -p $HOME/.config/alacritty
cd $HOME/.config/alacritty

if ! curl --head --silent $alacritty_link >/dev/null 2>&1; then
    echo "Could not reach github for Polybar setup, exiting with 1."
	exit 1
fi

wget -O alacritty.toml $alacritty_link

echo "Installation succesful!"
exit 0
