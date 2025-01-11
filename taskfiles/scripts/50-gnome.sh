#!/bin/bash

set -uo pipefail

PKGS=(
	baobab
	gnome-calculator
	gnome-characters
	gnome-control-center
	gnome-disk-utility
	gnome-font-viewer
	gnome-keyring
	gnome-logs
	gnome-menus
	gnome-session
	gnome-settings-daemon
	gnome-shell
	gnome-shell-extensions
	xdg-desktop-portal-gnome
	xdg-user-dirs-gtk
	seahorse
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Packages installed"
