#!/bin/sh

sudo apt update

# Dependencies
sudo apt install -y wget build-essential cmake cmake-extras curl gettext libnotify-bin light meson ninja-build libxcb-util0-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-cursor-dev libxcb-xinerama0-dev libstartup-notification0-dev

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
mkdir ~/Screenshots/

# Sway installation for Debian Bookworm
sudo apt install -y sway waybar swaylock swayidle swaybg swayimg wofi

# my favorite terminal
sudo apt install -y alacritty

# grim and slurp for screenshots
sudo apt install -y grim slurp

# System services for laptops
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends light

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# LibreOffice + MS word fonts
sudo apt install -y libreoffice ttf-mscorefonts-installer

# Thunar file manager
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Browsers
sudo apt install -y firefox-esr chromium

# dunst notifications
sudo apt install -y dunst unzip xdotool libnotify-dev

# Sound
sudo apt install -y pipewire pavucontrol pamixer

# Multimedia
sudo apt install -y mpv mpv-mpris nvtop pamixer ffmpeg qimgv gimp obs-studio mkvtoolnix-gui redshift eog brightnessctl vlc

# text editors
sudo apt install -y l3afpad 
sudo apt install -y geany geany-plugin-addons geany-plugin-git-changebar geany-plugin-overview geany-plugin-spellcheck geany-plugin-treebrowser geany-plugin-vimode

# Printing and bluetooth (if needed)
sudo apt install -y cups system-config-printer simple-scan
sudo apt install -y bluez blueman

sudo systemctl enable cups
sudo systemctl enable bluetooth

# PDF 
sudo apt install -y evince pdfarranger

# Others
sudo apt install -y figlet galculator cpu-x udns-utils whois curl tree neofetch linux-utils

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus papirus-icon-theme
bash ~/debian-bookworm-setup/coding-fonts.sh

# Install SDDM Console Display Manager
sudo apt install --no-install-recommends -y sddm
sudo systemctl enable sddm

# Install the Ly Console Display Manager
bash ~/debian-bookworm-setup/ly.sh

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thank you.\e[0m\n"
