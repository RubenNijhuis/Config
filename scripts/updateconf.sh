#!/bin/zsh

# Files to copy over
ZSHRC=~/.zshrc
VSC=~/Library/Application\ Support/Code/User/settings.json
GIT=~/.gitconfig
CONFSCRIPT=~/Code/Scripts/updateconf.sh

# Config dir location
CONFIGFOLDER=~/Code/Config

# Copy these files over
cp $ZSHRC $CONFIGFOLDER
cp $VSC $CONFIGFOLDER
cp $GIT $CONFIGFOLDER
cp $CONFSCRIPT $CONFIGFOLDER/scripts

# Push changes to github
cd $CONFIGFOLDER
git pull
git add .
git commit -m "Configuration files update"
git push