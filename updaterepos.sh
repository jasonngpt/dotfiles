#!/bin/sh
# Update Script for Git Repos
# Jason Ng PT <me@jasonngpt.com>

clear
echo "Welcome to Update Script"
echo

echo "Updating Vundle from Github.."
cd ~/.vim/bundle/vundle
git pull origin

echo
echo "Updating oh-my-zsh.."
cd ~/.oh-my-zsh
git pull origin

echo "Updating rbenv.."
cd ~/.rbenv
git pull origin
echo "Updating ruby-build.."
cd ~/.rbenv/plugins/ruby-build
git pull origin

echo "Updating plenv.."
cd ~/.plenv
git pull origin
echo "Cloning perl-build.."
cd ~/.plenv/plugins/perl-build
git pull origin

#echo "Updating nvm.."
#cd ~/.nvm
#git pull origin

echo "Updating personal dotfiles.."
cd ~/.dotfiles
git pull origin master
echo "Install vim plugins with Vundle with BundleInstall.."
vim +BundleInstall +qall
