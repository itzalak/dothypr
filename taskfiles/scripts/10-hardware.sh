#!/bin/bash

set -uo pipefail

PKGS=(
	# AMD
	mesa
	xf86-video-amdgpu
	xf86-video-ati
	libva-mesa-driver
	vulkan-radeon
	# Nvidia
	dkms
	nvidia-open
	nvidia-utils
	nvidia-settings
	lib32-nvidia-utils
	egl-wayland
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	sudo pacman -S "$PKG" --noconfirm --needed
done
