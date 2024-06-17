#!/bin/bash

#####################################################################################
#Credits for original script to https://github.com/drewgrif/bookworm-scripts
#####################################################################################
# Dependencies
sudo apt install -y build-essential cmake cmake-extras curl wget gettext libnotify-bin light meson ninja-build libxcb-util0-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-cursor-dev libxcb-xinerama0-dev libstartup-notification0-dev

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

# Sway installation for Debian Bookworm
sudo apt install -y sway waybar swaylock swayidle swaybg wofi grim slurp alacritty

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Browser Installation
sudo apt install -y flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub org.mozilla.firefox

# dunst or mako
sudo apt install -y dunst unzip xdotool libnotify-dev

# Sound
sudo apt install -y pipewire pavucontrol pamixer

# Multimedia
sudo apt install -y mpv mpv-mpris nvtop pamixer ffmpeg qimgv gimp mkvtoolnix-gui eog brightnessctl

# nwg-look takes the place of lxappearance in x11 
# 
#bash ~/bookworm-scripts/resources/nwg-look
sudo apt install -y libgtk-3-dev libcairo2-dev libglib2.0-bin zip

cd ~/Downloads

wget https://github.com/nwg-piotr/nwg-look/archive/refs/tags/v0.2.6.zip
unzip v0.2.6.zip
cd nwg-look-0.2.6

make build
sudo make install

cd ..
rm -rf nwg-look-0.2.6

rm v0.2.6.zip

# text editor
sudo apt install -y vim gedit

# Printing and bluetooth
sudo apt install -y cups system-config-printer simple-scan bluez blueman

sudo systemctl enable cups
sudo systemctl enable bluetooth

# Others
sudo apt install -y evince pdfarranger okular figlet galculator cpu-x udns-utils whois tree
wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.14.0/fastfetch-linux-amd64.deb
dpkg -i fastfetch-linux-amd64.deb
rm fastfetch-linux-amd64.deb

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus papirus-icon-theme
sudo apt install unzip -y

mkdir -p ~/.local/share/fonts

cd /tmp
fonts=( 
"CascadiaCode"
"FiraCode"  
"Hack"  
"Inconsolata"
"JetBrainsMono" 
"Meslo"
"Mononoki" 
"RobotoMono" 
"SourceCodePro" 
"UbuntuMono"
)

for font in ${fonts[@]}
do
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/$font.zip
	unzip $font.zip -d $HOME/.local/share/fonts/$font/
    rm $font.zip
done
fc-cache

# Install SDDM Console Display Manager
sudo apt install --no-install-recommends -y sddm
sudo systemctl enable sddm

sudo apt autoremove -y

sleep 0.5
clear

printf "\e[1;32mYou can reboot now!\e[0m\n"