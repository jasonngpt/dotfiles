#!/bin/sh
# Setup Script 
# Jason Ng PT <me@jasonngpt.com>

clear
echo "Welcome to Setup Script"
echo
echo "Starting to Install git, vim, tmux, zsh.."
sudo apt-get install git vim tmux zsh irssi

echo
echo "Checking out Jason Ng PT dotfiles.."
git clone https://github.com/jasonngpt/dotfiles.git ~/.dotfiles

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
echo "Creating links for irssi autorun scripts"
ln -s ~/.dotfiles/irssi/scripts/nickcolor.pl ~/.dotfiles/irssi/scripts/autorun/nickcolor.pl
ln -s ~/.dotfiles/irssi/scripts/highlite.pl ~/.dotfiles/irssi/scripts/autorun/highlite.pl
ln -s ~/.dotfiles/irssi/scripts/irssinotifier.pl ~/.dotfiles/irssi/scripts/autorun/irssinotifier.pl
ln -s ~/.dotfiles/irssi/scripts/tmux_away.pl ~/.dotfiles/irssi/scripts/autorun/tmux_away.pl
ln -s ~/.dotfiles/irssi/scripts/trackbar.pl ~/.dotfiles/irssi/scripts/autorun/trackbar.pl
ln -s ~/.dotfiles/irssi/scripts/nickcolor.pl ~/.dotfiles/irssi/scripts/autorun/nickcolor.pl

echo
echo "Changing Shell for User to zsh.."
chsh -s /bin/zsh

echo "Installing perlbrew.."
curl -kL http://install.perlbrew.pl | bash
echo "perlbrew done. pls install perl.."

echo "Installing nvm.."
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
echo "nvm done. pls install node.."

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
