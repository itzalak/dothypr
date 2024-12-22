#!/bin/bash

set -uo pipefail

PKGS=(
    hyprland
    dunst
    kitty
    dolphin
    wofi
    xdg-desktop-portal-hyprland
    qt5-wayland
    qt6-wayland
    polkit-kde-agent
    grim
    slurp
    # Others
    waybar
    hyprpaper
    cliphist
    fuzzel
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
    echo "Installing package: $PKG"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Packages installed"
