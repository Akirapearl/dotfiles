# Welcome to my dotfiles!
-- Repository initilized on April 2024

# Contents

Alacritty (v.0.12.2)

Starship

Sway

Waybar

### Newest!

Sway installation script (bash), intended for unattended default installation for a Debian 12 
installation using the aforementioned wayland-based WM. 

	- TLDR; Contains loads of package installation and some minor implementations as fonts or fastfetch using
	git clone commands etc.
	- At the time of writing, this newly added script does not apply any dotfiles present within this directory.

## Requirements
	> Software stated above
	* Two nerd fonts (Alacritty)

### Used fonts (Apr2024)
	- FiraCode
	- Jetbrains Mono


## How to use/install (alacritty & starship)

	1. Ensure /home/$USER/.config/ && ~/.local/share/fonts exists, otherwise, create those.
	2. Install [starship](https://starship.rs/).
	3. Install alacritty.
	4. Move the alacritty folder under /home/$USER/.config/ .
	4.5 Install fonts (move under ~/.local/share/fonts exists), download links can be found within instal.sh file.
	5. Move starship.toml file under the same directory.

Opening a new terminal window should show up the applied configs.


## How to use/install (sway/waybar)

	1. Ensure /home/$USER/.config/sway && /home/$USER/.config/waybar directories exist.
	2. Move files under the sway and waybar directories included within this repo to the ones
	at step 1.
	3. Reload sway, by default it should be the combination of superkey (windows key) + shift + c
	4. Enjoy! Modify! Tinker! 




### Expected results:

![screenshot for expected result of my terminal customizaton](https://raw.githubusercontent.com/Akirapearl/dotfiles/main/images/result_term.png) 
![Default wallpaper](https://raw.githubusercontent.com/Akirapearl/dotfiles/main/images/nikon-f2-50mm-f-1-4-flic-aurora-800-the_arctic_monkey.png)
![fastfetch](https://raw.githubusercontent.com/Akirapearl/dotfiles/main/images/fetch.png)
![tiling terminal with browser](https://raw.githubusercontent.com/Akirapearl/dotfiles/main/images/browser.png)



### Disclamer

I don't claim any authority or ownership over media used within this repository, nothing about it is to be commercially used, just for my personal computer and 
sharing knowledge purposes.

Used resources: 
- https://www.reddit.com/r/analog/comments/1bg1831/nikon_f2_50mm_f14_flic_aurora_800/ - Default wallpaper.
- https://github.com/Egosummiki/dotfiles/tree/master/waybar - OG config files for waybar (v.1 for me, first modification 17/05/2024)
- https://github.com/drewgrif/bookworm-scripts - OG script taken as reference for sway_debian.sh file