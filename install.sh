#!/bin/bash

WORK_DIR=$(pwd)

cd appendfiles
for filename in *; do
    echo ${filename} >> ${HOME}/\.${filename}
done
cd ${WORK_DIR}

cd dotfiles
for filename in *; do
    mv ${filename} ${HOME}/\.${filename}
done
cd ${WORK_DIR}

source ${HOME}/.bash_profile
source ${HOME}/.bashrc

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew update
brew upgrade

brew tap homebrew/science
brew tap caskroom/cask
brew tap sanemat/font
brew tap airtoxin/mycask

brew install bash-completion
brew install direnv
brew install go
brew install graphviz
brew install jq
brew install nkf
brew install mongodb
brew install node
brew install rename
brew install python
brew install https://raw.github.com/tasuten/homebrew-myformulas/master/osx-cpu-temp.rb
brew install rmtrash
brew install sl
brew install sqlite
brew install the_silver_sercher
brew install tig
brew install tree
brew install youtube-dl
brew install wget
brew install peco

brew install brew-cask

brew cask install atom
brew cask install alfred
brew cask install appcleaner
brew cask install bettertouchtool
brew cask install caffeine
brew cask install diskwave
brew cask install dropbox
brew cask install kobito
brew cask install mongohub
brew cask install skype
brew cask install the-unarchiver
brew cask install google-chrome
brew cask install google-japanese-ime
brew cask install vlc
brew cask install bartender
brew cask install node-webkit
brew cask install evernote
brew cask install moom
brew cask install sublime-text
brew cask install steam
brew cask install bitcasa
brew cask install yorufukurou
brew cask install soundflower
brew cask install tagr
brew cask install processing
brew cask install transmit
brew cask install unity3d
brew cask install unity-web-player
brew cask install xld
brew cask install processing
brew cask install nuwk
brew cask install mow
brew cask install netlogo
brew cask install minecraft
brew cask install transmission
brew cask install origin
brew cask install brettspielwelt
brew cask install isse

# mecab
brew install mecab
brew install mecab-ipadic
MECAB_VERSION=$(mecab-config --version)
wget https://mecab.googlecode.com/files/mecab-python-${MECAB_VERSION}.tar.gz
pip install mecab-python-${MECAB_VERSION}.tar.gz
rm mecab-python-${MECAB_VERSION}.tar.gz

# ricty font
brew install ricty
cp -f /usr/local/Cellar/ricty/*/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# Ableton Live
# LadioCast
# Go2Shell
# LINE
# MathType 6

# node
sudo npm i -g bower
sudo npm i -g coffee-script
sudo npm i -g express
sudo npm i -g grunt-cli
sudo npm i -g gulp
sudo npm i -g jshint
sudo npm i -g mocha
sudo npm i -g node-dev
sudo npm i -g nodemon
sudo npm i -g phantomjs
sudo npm i -g yeoman

# python modules
pip install ipython
pip install numpy
pip install scipy
pip install matplotlib
pip install pandas
pip install scikit-learn
pip install scikit-image
pip install numexpr
pip install nltk
pip install networkx
pip install BeautifulSoup
pip install ipython-beautifulsoup
pip install fake-factory
pip install mecab-python
pip install csvkit
pip install Pillow

# sublime-text
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/* ${HOME}/.bin/

brew install opencv

brew cask alfred link
brew cleanup
brew cask cleanup

defaults write com.apple.screencapture location ~/Dropbox/Public/screenshots
defaults write com.apple.screencapture name "screenshot"
