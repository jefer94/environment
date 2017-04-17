#!/usr/bin/fish

# base devel
echo "install base devel"
sudo pacman -S base-devel --needed

# powerline fonts
echo "install powerline fonts"
sudo pacman -S powerline-fonts --needed

# tmux with ncurses
yaourt -S tmux-git --needed

# oh my fish
echo "install oh my fish"
curl -L https://get.oh-my.fish | fish
echo "install plugins for oh my fish"
omf install bobthefish
omf install sudope

# apt-vim
echo "install apt-vim"
curl -sL https://raw.githubusercontent.com/egalpin/apt-vim/master/install.sh | sh
echo "set -gx PATH ~/.vimpkg/bin $PATH" > ~/.config/fish/config.fish
source ~/.config/fish/config.fish
echo "install plugins for vim"
apt-vim install -y https://github.com/scrooloose/nerdtree.git
apt-vim install -y https://github.com/kien/ctrlp.vim.git
apt-vim install -y https://github.com/bling/vim-airline.git
apt-vim install -y https://github.com/godlygeek/tabular.git
apt-vim install -y https://github.com/ervandew/supertab.git
apt-vim install -y https://github.com/joshdick/onedark.vim.git

echo "done"
