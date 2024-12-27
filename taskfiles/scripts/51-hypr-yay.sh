#!/bin/bash

set -uo pipefail

PKGS=(
	hyprland-qtutils
	hyprsunset
	bemoji
)

echo "Installing hypr AUR packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	yay -S "$PKG" --noconfirm --needed
done
