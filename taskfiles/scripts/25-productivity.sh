#!/bin/bash

set -uo pipefail

PKGS=(
	obsidian
	vivaldi
	slack-desktop-wayland
	spotify-launcher
	ticktick
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	yay -S "$PKG" --noconfirm --needed
done
