#!/bin/sh

# terminal stuffs
mkdir ~/bin
cd ~/bin
git clone https://github.com/steverobbins/dotfiles.git
touch ~/.bash_profile
echo ". ~/bin/dotfiles/.bash_profile" >> ~/.bash_profile
cat ~/bin/dotfiles/.gitconfig >> ~/.gitconfig

# fun stuff
curl -o ~/bin/git-completion https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
chmod +x ~/bin/git-completion

curl -o ~/bin/git-prompt https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
chmod +x ~/bin/git-prompt

curl -o ~/bin/svn-color https://raw.githubusercontent.com/jmlacroix/svn-color/master/svn-color.sh
chmod +x ~/bin/svn-color

cd ~
curl -sS https://getcomposer.org/installer | php -- --install-dir=bin
mv bin/composer.phar bin/composer

mkdir ~/Project
git clone https://github.com/netz98/n98-magerun.git ~/Project/n98-magerun
cd ~/Project/n98-magerun
composer install
chmod +x bin/n98-magerun
cd ../
ln -s ~/Project/n98-magerun/bin/n98-magerun magerun

curl -o ~/bin/modman https://raw.githubusercontent.com/colinmollenhour/modman/master/modman
chmod +x ~/bin/modman

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
