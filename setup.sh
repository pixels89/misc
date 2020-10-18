#!/bin/bash

mkdir ~/dvhome
mkdir ~/dvhome/code
mkdir ~/dvhome/notes
mkdir ~/dvhome/tools


echo "INSTALLING CHROME"
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo apt -y install ./google-chrome-stable_current_amd64.deb


echo "INSTALLING SUBLIME"
#wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
#sudo apt-get update
#sudo apt-get -y install sublime-text
#sudo apt-get remove sublime-text && sudo apt-get autoremove


echo "INSTALLING GNOME TWEAKS"
#sudo add-apt-repository universe
#sudo apt -y install gnome-tweak-tool


echo "INSTALLING EMACS27"
#sudo add-apt-repository ppa:kelleyk/emacs
#sudo apt-get update
#sudo apt -y install emacs27


#dev
echo "INSTALLING DEFAULT JAVA JDK"
#sudo apt -y install default-jdk
#sudo java -version


echo "INSTALLING GIT"
sudo apt -y install git-all
git --version



sudo snap install intellij-idea-community --classic

sudo snap install --classic eclipse

sudo snap install --classic code


sudo echo "" > /etc/environment


#maven

#gradle

#env variables
#path

#javahome, m2, go


