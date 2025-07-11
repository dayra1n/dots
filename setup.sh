#!/bin/bash

# set script to exit on error
set -e

# variables
RC='\e[0m'
RED='\e[31m'
YELLOW='\e[33m'
GREEN='\e[32m'
BLUE='\e[34m'

u="$USER"

while :
do
  read -p "Hi $u, would you like to install niri dependecies? (y/n): " resp

    if [[ $resp =~ ^[Nn]$ ]]; then
      exit 1

    elif [[ $resp =~ ^[Yy]$ ]]; then

      echo -e "${YELLOW}Installing paru as AUR helper...${RC}"

      git clone https://aur.archlinux.org/paru-bin.git
      cd paru-bin/
      makepkg -si
      cd .. 
      rm -rf paru-bin/
      echo -e "${GREEN}AUR helper installed.${RC}"

      echo -e "${YELLOW}Installing packages...${RC}"

      # define packages
      niri_pkgs='niri xdg-desktop-portal-gtk xdg-desktop-portal-gnome gnome-keyring xwayland-satellite waybar hyprlock hypridle swww mako'
      util_pkgs='man btop gvfs gvfs-afc p7zip unzip alsa-utils net-tools imagemagick nm-connection-editor brightnessctl wl-clipboard'
      app_pkgs='librewolf-bin foot fuzzel mpv mpd rmpc cava neovim'
      theme_pkgs='nwg-look papirus-icon-theme gnome-themes-extra waypaper hellwal'
      fonts_pkgs='ttf-jetbrains-mono-nerd noto-fonts noto-fonts-cjk noto-fonts-emoji'

      paru -Syu $niri_pkgs $util_pkgs $app_pkgs $theme_pkgs $fonts_pkgs

      echo -e "${GREEN}Packages installed.\n${RC}"
      
      # setup configs and clean up home
      cp -r .config/ .local/ .bashrc ~/
      mkdir -p ~/.config/gtk-2.0/
      mkdir -p ~/.config/git/
      touch ~/.config/git/gitconfig

      echo -e  "${BLUE}Enjoy Niri.${RC}"
      exit 1

      echo -e "${RED}Please type Y for confirm or N for decling (^C to quit.)${RC}"
    fi 
done
