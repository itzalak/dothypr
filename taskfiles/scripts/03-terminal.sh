#!/bin/bash

set -uo pipefail

PKGS=(
  alacritty
  bat
  fd
  fzf
  man-db
  man-pages
  ripgrep
  stow
  zsh
  xclip
  fish
  wezterm
  bash-completion
  starship
  zoxide
)

echo "Installing shell related packages"

for PKG in "${PKGS[@]}"; do
  echo "Installing package: $PKG"
  sudo pacman -S "$PKG" --noconfirm --needed
done

