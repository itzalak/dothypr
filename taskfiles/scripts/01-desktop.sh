#!/bin/bash

set -uo pipefail

PKGS=(
	vim
	openssh
	htop
	wget
	iwd
	wireless_tools
	wpa_supplicant
	smartmontools
	xdg-utils
	brightnessctl
	bottom
	# https://wiki.archlinux.org/title/PipeWire
	pipewire
	pipewire-alsa
	pipewire-jack
	pipewire-pulse
	gst-plugin-pipewire
	libpulse
	wireplumber
	helvum
	pavucontrol
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	sudo pacman -S "$PKG" --noconfirm --needed
done
