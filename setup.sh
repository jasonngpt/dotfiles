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
git clone git@github.com:jasonngpt/dotfiles.git ~/.dotfiles

echo
echo "Cloning Vundle from Github.."
git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/vundle

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
ln -s ~/.dotfiles/rspec ~/.rspec

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
echo "Install zlib and readline for rails first.."
sudo apt-get install libssl-dev zlib1g-dev libreadline-dev

echo
echo "Checking out rbenv and setting up environment.."
git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
echo "Checking out ruby-build.."
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo "rbenv done and configured. pls install new ruby version i.e. rbenv install 2.0.0-p0"

echo
echo "Cloning plenv and setting up environment.."
git clone git://github.com/tokuhirom/plenv.git ~/.plenv
echo "Cloning perl-build.."
git clone git://github.com/tokuhirom/Perl-Build.git ~/.plenv/plugins/perl-build/
echo "plenv done and configured. pls install new perl version i.e. plenv install 5.18.1"

echo
echo "Change Irssi Password.."
vi ~/.dotfiles/irssi/config

echo
echo "Installing additional libraries for nokogiri (ruby) and curb (ruby).."
sudo apt-get install libxml2 libxml2-dev libxslt1-dev libcurl3 libcurl3-gnutls libcurl4-openssl-dev

echo
echo "Cloning nvm and setting up.."
git clone git://github.com/creationix/nvm.git ~/.nvm
echo "nvm done. pls install node"

echo
echo "Adding F.lux.."
sudo add-apt-repository ppa:kilian/f.lux
sudo apt-get update && sudo apt-get install fluxgui
echo "flux installed.. pls configure it with gui"

echo
echo "Installing databases i.e. postgresql and sqlite3.."
sudo apt-get install postgresql libpq-dev sqlite3 libsqlite3-dev
echo "databases installed"
