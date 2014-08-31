#!/bin/sh

# terminal stuffs
mkdir ~/bin
cd ~/bin
git clone https://github.com/steverobbins/dotfiles.git
curl -o ~/bin/dotfiles/git-completion https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
curl -o ~/bin/dotfiles/svn-color https://raw.githubusercontent.com/jmlacroix/svn-color/master/svn-color.sh
touch ~/.bash_profile
echo ". ~/bin/dotfiles/bash_profile" >> ~/.bash_profile
cat ~/bin/dotfiles/.gitconfig >> ~/.gitconfig
source ~/.bash_profile

# softwares
curl -o ~/bin/n98-magerun.phar https://raw.githubusercontent.com/netz98/n98-magerun/master/n98-magerun.phar
chmod +x ~/bin/n98-magerun.phar

curl -o ~/bin/modman https://raw.githubusercontent.com/colinmollenhour/modman/master/modman
chmod +x ~/bin/n98-magerun.phar

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
