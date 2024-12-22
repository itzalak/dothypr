#!/bin/bash

set -uo pipefail

PKGS=(
    # Nvidia
    # https://wiki.hyprland.org/Nvidia/
    dkms
    nvidia-open
    nvidia-open-dkms
    nvidia-utils
    lib32-nvidia-utils
    egl-wayland
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
    echo "Installing package: $PKG"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Manual steps required for successfull installation. please update mkinitcpio and modprobe"
