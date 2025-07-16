apt update 
apt -qq install wget

apt -qq install dmenu

apt -qq install herbstluftwm
mkdir -p $HOME/.config/herbstluftwm
cd $HOME/.config/herbstluftwm
wget -O autostart https://raw.githubusercontent.com/ASTROfocs/Miku-Flavor/refs/heads/main/Configs/autostart
chmod u+x autostart

apt -qq install polybar
mkdir -p $HOME/.config/polybar
cd $HOME/.config/polybar
wget -O https://raw.githubusercontent.com/ASTROfocs/Miku-Flavor/refs/heads/main/Configs/config.ini

apt -qq install picom
mkdir -p $HOME/.config/picom
cd $HOME/.config/picom
wget -O picom.conf https://raw.githubusercontent.com/ASTROfocs/Miku-Flavor/refs/heads/main/Configs/picom.conf

apt -qq install alacritty
mkdir -p $HOME/.config/alacritty
cd $HOME/.config/alacritty
wget -O alacritty.toml https://raw.githubusercontent.com/ASTROfocs/Miku-Flavor/refs/heads/main/Configs/alacritty.toml
