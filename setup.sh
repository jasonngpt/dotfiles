#!/bin/sh
# Setup Script 
# Jason Ng PT <me@jasonngpt.com>

clear
echo "Welcome to Setup Script"
echo
echo "Starting to Install git, vim, tmux, zsh, irssi, curl, terminator and g++ for compiling.."
sudo apt-get install git vim tmux zsh irssi curl terminator g++

echo
echo "Checking out Jason Ng PT dotfiles.."
git clone https://github.com/jasonngpt/dotfiles.git ~/.dotfiles

echo "Cloning Vundle from Github.."
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

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
vim

echo
echo "Changing Shell for User to zsh.."
chsh -s /bin/zsh

#echo "Installing perlbrew.."
#curl -kL http://install.perlbrew.pl | bash
#echo "perlbrew done. pls install perl.."

#echo "Installing nvm.."
#curl https://raw.github.com/creationix/nvm/master/install.sh | sh
#echo "nvm done. pls install node.."

echo
echo "Install zlib and readline for rails first.."
sudo apt-get install libssl-dev zlib1g-dev libreadline-dev

echo "Checking out rbenv and setting up environment.."
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo "Checking out ruby-build.."
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo "rbenv done and configured. pls install new ruby version i.e. rbenv install 2.0.0-p0"

echo "Change Irssi Password.."
vi ~/.dotfiles/irssi/config

echo "Installing additional libraries for nokogiri (ruby) and curb (ruby).."
sudo apt-get install libxml2 libxml2-dev libxslt1-dev libcurl3 libcurl3-gnutls libcurl4-openssl-dev
