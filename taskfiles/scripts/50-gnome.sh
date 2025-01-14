#!/bin/bash

set -uo pipefail

PKGS=(
	gnome
	gnome-tweaks
	xclip
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	sudo pacman -S "$PKG" --noconfirm --needed
done

YAY_PKGS=(
	whitesur-gtk-theme
	whitesur-icon-theme

)

echo "Installing yay packages"

for YAY in "${YAY_PKGS[@]}"; do
	echo "Installing package: $YAY"
	yay -S "$YAY" --noconfirm --needed
done

echo "Packages installed"
