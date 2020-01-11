#!/bin/sh
# Setup Script 
# Jason Ng PT <me@jasonngpt.com>

clear
echo "Welcome to Setup Script"
echo
echo "Starting to Install git, vim, tmux, zsh, irssi, curl, autojump and g++ for compiling.."
sudo apt-get install git vim tmux zsh irssi curl g++ autojump

echo
echo "Checking out Jason Ng PT dotfiles.."
git clone git@github.com:jasonngpt/dotfiles.git ~/.dotfiles

echo
echo "Cloning Vundle from Github.."
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle

echo
echo "Checking out oh-my-zsh.."
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo
echo "Linking config files for git, vim, tmux, zsh, irssi.."
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/irssi ~/.irssi

echo 
echo ":BundleInstall vim plugins from Vundle.."
vim +BundleInstall +qall

echo
echo "Creating links for irssi autorun scripts"
mkdir ~/.dotfiles/irssi/scripts/autorun
ln -s ~/.dotfiles/irssi/scripts/nickcolor.pl ~/.dotfiles/irssi/scripts/autorun/nickcolor.pl
ln -s ~/.dotfiles/irssi/scripts/highlite.pl ~/.dotfiles/irssi/scripts/autorun/highlite.pl
ln -s ~/.dotfiles/irssi/scripts/irssinotifier.pl ~/.dotfiles/irssi/scripts/autorun/irssinotifier.pl
ln -s ~/.dotfiles/irssi/scripts/tmux_away.pl ~/.dotfiles/irssi/scripts/autorun/tmux_away.pl
ln -s ~/.dotfiles/irssi/scripts/trackbar.pl ~/.dotfiles/irssi/scripts/autorun/trackbar.pl

echo
echo "Changing Shell for User to zsh.."
chsh -s /bin/zsh

echo
echo "Change Irssi Password.."
vi ~/.dotfiles/irssi/config
