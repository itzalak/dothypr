#!/bin/bash

set -uo pipefail

PKGS=(
    nano
    vim
    openssh
    htop
    wget
    iwd
    wireless_tools
    wpa_supplicant
    smartmontools
    xdg-utils
    # https://wiki.archlinux.org/title/PipeWire
    pipewire
    pipewire-alsa
    pipewire-jack
    pipewire-pulse
    gst-plugin-pipewire
    libpulse
    wireplumber
    # hardware
    # AMD
    mesa
    xf86-video-amdgpu
    xf86-video-ati
    libva-mesa-driver
    vulkan-radeon
    # Nvidia
    # dkms
    # nvidia-open
    # nvidia-open-dkms
    # nvidia-utils
    # lib32-nvidia-utils
    # egl-wayland
)

echo "Installing packages"

for PKG in "${PKGS[@]}"; do
    echo "Installing package: $PKG"
    sudo pacman -S "$PKG" --noconfirm --needed
done
