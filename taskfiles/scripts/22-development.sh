#!/bin/bash

set -uo pipefail

PKGS=(
	ktlint

	# Lua
	lua
	luarocks
	stylua

	# IDE
	intellij-idea-community-edition
	pycharm-community-edition

	# Misc
	cargo
	npm
	jq
	shellcheck
	yq
	markdownlint-cli2
)

echo "Installing required packages for development"

for PKG in "${PKGS[@]}"; do
	echo "Installing package: $PKG"
	yay -S "$PKG" --noconfirm --needed
done

echo "Development setup is complete"
