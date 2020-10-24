#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y

mkdir ~/dvhome
mkdir ~/dvhome/code
mkdir ~/dvhome/notes
mkdir ~/dvhome/tools

sudo add-apt-repository -y ppa:kelleyk/emacs
sudo add-apt-repository -y universe
sudo add-apt-repository -y ppa:vantuz/cool-retro-term
sudo add-apt-repository -y ppa:pinta-maintainers/pinta-stable
sudo add-apt-repository -y ppa:teejee2008/ppa
sudo apt-get update

sudo apt-get -y  install timeshift

sudo apt -y install ubuntu-restricted-extras

echo "INSTALLING VLC"
sudo snap install vlc

echo "INSTALLING CHROME"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install ./google-chrome-stable_current_amd64.deb


echo "INSTALLING SUBLIME"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get -y install sublime-text


echo "INSTALLING GNOME TWEAKS"
sudo apt -y install gnome-tweak-tool


echo "INSTALLING EMACS27"
sudo apt -y install emacs27

echo "INSTALLING DEFAULT JAVA JDK"
sudo apt -y install default-jdk
sudo java -version

sudo echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> /etc/profile

echo "INSTALLING GIT"
sudo apt -y install git-all
git --version
#download emacs script


echo "INSTALLING INTELLIJ"
sudo snap install intellij-idea-community --classic

echo "INSTALLING ECLIPSE"
sudo snap install --classic eclipse

echo "INSTALLING VSCODE"
sudo snap install --classic code


echo "INSTALLING NODE"
sudo apt install nodejs
sudo apt install npm
nodejs -v


echo "INSTALLING GO"
wget "https://golang.org/doc/install?download=go1.15.3.linux-amd64.tar.gz"
tar -C /usr/local -xzf go1.15.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

sudo echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile
#GO ROOT GO PATH

echo "INSTALLING SDK"
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

echo "INSTALLING GRADLE"
sdk install gradle 6.7

echo "INSTALLING SPOTIFY"
snap install spotify

echo "INSTALLING PINTA"
sudo apt-get  -y install pinta

echo "INSTALLING RETRO TERM"
sudo apt -y install cool-retro-term

sudo ufw enable

# #maven m2

#launch bar on each monitor
#clean launch bar 

#startup apps

#ubuntu cleaner


  ##manual
  #14. Configure Keyboard Shortcuts
#  19. Install Additional Proprietary Graphics Drivers
 # 16. Enable the Canonical Partners Repository



