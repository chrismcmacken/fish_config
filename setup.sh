#!/bin/bash

BASEDIR=$(pwd -L)
echo "$BASEDIR"

if ! [ -f ~/.config/fish ]; then
	echo "creating symlink..."
	ln -sf "$BASEDIR/config" ~/.config/fish
fi
