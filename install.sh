#!/bin/bash

clear
echo "This is a script to install my dotfiles."
echo "Type the letter for the corresponding software you want to install"
echo "============================================================="
echo "a) Starship"
echo "b) Alacritty (requirements, NOT package itself)"

read install

if [ $install == "a" ]; then
	echo "Installing starship..."
	echo "============================"
	sleep 0.5
	curl -sS https://starship.rs/install.sh | sh
	echo  'eval "$(starship init bash)"' > ~/.bashrc
	config=/home/$USER/.config/
	mkdir $config
	cp starship.toml $config

elif [ $install == "b" ]; then
	echo "============================"
	echo "Installing required nerd fonts..."
	echo "============================"
	sleep 0.5
	echo "DISCLAIMER"
	echo "This script includes FiraCode & Jetbrains Mono Fonts."
	echo "============================"
	cd /home/$USER/Downloads/
	mkdir fonts
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip 
	wget https://download.jetbrains.com/fonts/JetBrainsMono-2.304.zip	
	unzip FiraCode.zip fonts/ && unzip JetBrainsMono-2.304.zip fonts/
	dir=/home/$USER/.local/share/fonts/
	mkdir $dir
	cp ./fonts/FiraCode/* $dir && cp ./fonts/JetBrainsMono/* $dir
	ls $dir
	sleep 0.5
	mkdir /home/$USER/.config/alacritty/ 
	cp -r ./alacritty/alacritty.yml /home/$USER/.config/alacritty/ 

	fi
