#! /bin/sh

ln -svf "$PWD/dots/.vimrc" "$HOME/.vimrc"
ln -svf "$PWD/dots/.zshrc" "$HOME/.zshrc"
ln -svf "$PWD/dots/.gitconfig" "$HOME/.gitconfig"
ln -svf "$PWD/dots/.aliases" "$HOME/.aliases"


# symlink ~/.local/bin
cd lbin
for f in *; do ln -svf $PWD/$f $HOME/.local/bin; done
