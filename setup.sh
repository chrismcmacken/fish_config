#!/bin/bash

BASEDIR=$(pwd -L)

if ! [ -f ~/.config/fish ]; then
	echo "creating symlink..."
	ln -sf "$BASEDIR/config" ~/.config/fish
fi
