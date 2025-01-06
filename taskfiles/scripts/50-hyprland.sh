#!/bin/bash

set -uo pipefail

PKGS=(
	hyprland
	dunst
	kitty
	xdg-desktop-portal-hyprland
	xdg-desktop-portal-gtk
	qt5-wayland
	qt6-wayland
	polkit-kde-agent
	grim
	slurp
	# Thunar
	# https://wiki.archlinux.org/title/Thunar
	thunar
	thunar-archive-plugin
	thunar-volman
	tumbler
	gvfs
	# Others
	waybar
	wpaperd
	cliphist
	fuzzel
	nwg-look
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Packages installed"
