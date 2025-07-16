apt update 
apt -qq install wget

apt -qq install dmenu

apt -qq install herbstluftwm
mkdir -p $HOME/.config/herbstluftwm
cd $HOME/.config/herbstluftwm
wget -O autostart https://raw.githubusercontent.com/ASTROfocs/configs/refs/heads/main/autostart && echo "HLWM config downloaded!"
chmod u+x autostart

apt -qq install polybar
mkdir -p $HOME/.config/polybar
cd $HOME/.config/polybar
wget -O config.ini https://raw.githubusercontent.com/ASTROfocs/configs/refs/heads/main/config.ini && echo "Polybar config downloaded!"

apt -qq install picom
mkdir -p $HOME/.config/picom
cd $HOME/.config/picom
wget -O picom.conf https://raw.githubusercontent.com/ASTROfocs/configs/refs/heads/main/picom.conf

apt -qq install alacritty
mkdir -p $HOME/.config/alacritty
cd $HOME/.config/alacritty
wget -O alacritty.toml https://raw.githubusercontent.com/ASTROfocs/configs/refs/heads/main/alacritty.toml
