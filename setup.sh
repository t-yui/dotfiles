#!/bin/env bash


# install bash settings
DOT_FILES=(.bashrc .bash_profile)
for file in ${DOT_FILES[@]}
do
    ln -s ${HOME}/dotfiles/${file} ${HOME}/${file}
done


# install misawat-pms/dotfiles
wget https://github.com/misawat-pms/dotfiles/archive/master.zip
unzip unzip master.zip
mkdir ~/.config
mkdir ~/.vim
ln -sf dotfiles-master/.config/nvim ~/.config/
ln -sf dotfiles-master/.vim/rc ~/.vim/
ln -sf dotfiles-master/.vimrc ~/


