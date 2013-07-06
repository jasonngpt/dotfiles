#!/bin/sh
# Setup Script 
# Jason Ng PT <me@jasonngpt.com>

clear
echo "Welcome to Setup Script"
echo
echo "Starting to Install git, vim, tmux, zsh.."
sudo apt-get install git vim tmux zsh

echo
echo "Checking out Jason Ng PT dotfiles.."
git clone https://github.com/jasonngpt/dotfiles.git ~/.dotfiles

echo
echo "Checking out oh-my-zsh.."
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo
echo "Linking config files for git, vim, tmux, zsh.."
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/gitconfig ~/.gitconfig

echo
echo "Changing Shell for User to zsh.."
chsh -s /bin/zsh

echo
echo "Install zlib first.."
sudo apt-get install libssl-dev zlib1g-dev

echo "Checking out rbenv and setting up environment.."
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo "Checking out ruby-build.."
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo "rbenv done and configured. pls install new ruby version i.e. rbenv install 2.0.0-p0"
