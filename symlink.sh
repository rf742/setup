#! /bin/sh
mkdir -p "$HOME/.config/zsh"
ln -svf "$PWD/dots/.vimrc" "$HOME/.vimrc"
ln -svf "$PWD/dots/zsh/.zshrc" "$HOME/.config/zsh/.zshrc"
ln -svf "$PWD/dots/zsh/.zshenv" "$HOME/.zshenv"
ln -svf "$PWD/dots/zsh/.aliases" "$HOME/.config/zsh/.aliases"
ln -svf "$PWD/dots/.gitconfig" "$HOME/.gitconfig"


# symlink ~/.local/bin
mkdir -p "$HOME/.local/bin"
cd lbin
for f in *; do ln -svf $PWD/$f $HOME/.local/bin; done
