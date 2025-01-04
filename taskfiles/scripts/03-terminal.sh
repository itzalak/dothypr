#!/bin/bash

set -uo pipefail

PKGS=(
	alacritty
	bash-completion
	bat
	fd
	fish
	fzf
	ghostty
	kitty
	man-db
	man-pages
	p7zip
	poppler
	ripgrep
	ripgrep-all
	starship
	stow
	yazi
	zoxide
	zsh
)

echo "Installing terminal related packages"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	sudo pacman -S "$PKG" --noconfirm --needed
done
