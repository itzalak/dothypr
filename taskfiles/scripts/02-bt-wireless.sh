#!/bin/bash

set -uo pipefail

PKGS=(
  # https://wiki.archlinux.org/title/Bluetooth
  bluez
  bluez-utils
  bluez-hid2hci
  # https://wiki.archlinux.org/title/Iwd
  iwd
  impala
)

echo "Installing wireless and bluetooth related packages"

for PKG in "${PKGS[@]}"; do
  echo "Installing package: $PKG"
  sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Setting wireless and bluetooth services"

sudo systemctl enable --now bluetooth.service

echo "Wireless and bluetooth setup is complete"
