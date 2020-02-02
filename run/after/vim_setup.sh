#!/bin/sh
set -o errexit -o nounset

readonly VIM_PLUG_DIR="$HOME/.vim/autoload/plug.vim"

if [ ! -f "$VIM_PLUG_DIR" ]; then
    echo "Downloading vim-plug..."
    curl -#fLo "$VIM_PLUG_DIR" --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

nvim +PlugUpdate +PlugUpgrade +qall
