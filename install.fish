#!/usr/bin/fish

# globals variables
set BACKUP ~/.backup
set CONFIG $PWD/config


# backup
echo "backup configs in $BACKUP"
mkdir .backup/
cp ~/.vimrc $BACKUP/.vimrc
cp ~/.tmux.conf $BACKUP/.tmux.conf
cp ~/.config/tilda/config_0 $BACKUP/config_0

#install
echo "make symbolic link with $CONFIG"
ln -sf $CONFIG/.vimrc ~/.vimrc
ln -sf $CONFIG/.tmux.conf ~/.tmux.conf
ln -sf $CONFIG/config_0 ~/.config/tilda/config_0

echo "for updates use git pull, don't remove environment folder"
