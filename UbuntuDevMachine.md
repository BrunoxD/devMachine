# Softwares Install

## Ubuntu Essential Libraries
sudo apt-get install net-tools  
sudo apt-get install ubuntu-restricted-extras  
sudo apt-get install libavcodec-extra

## APP Repository
sudo apt-get install software-properties-common python-software-properties

### Reset Repositories
sudo rm /etc/apt/sources.list  
sudo software-properties-gtk

## Git
sudo apt-get install git

## Plymouth
sudo apt-get install plymouth

## Plymouth Themes
https://www.youtube.com/watch?v=YRuqn2sliqA   
https://www.gnome-look.org/p/1111515/  
https://www.gnome-look.org/p/1009736/  
https://www.gnome-look.org/p/1009456/  
https://www.gnome-look.org/p/1111249/  
https://www.gnome-look.org/p/1000019/  
sudo update-alternatives --config default.plymouth  
sudo update-initramfs -u

## Curl
sudo apt-get install curl

## Zerofree
sudo apt-get install zerofree

## Valgrind
sudo apt-get install valgrind 

## GDB
sudo apt-get install gdb

## Screenfetch
sudo apt-get install screenfetch

## Neofetch
sudo apt-get install neofetch

## PostgreeSQL
sudo apt-get install postgreesql postgreesql-contrib

## R
sudo apt-get install r-base

## Vim
sudo apt-get install vim

## Inxi
sudo apt-get install inxi

## Python Pip3
sudo apt-get install python3-pip

## Python Libraries
sudo apt-get install python3-tk  
sudo apt-get install python3-numpy  
sudo apt-get install python3-matplotlib  
sudo apt-get install python3-nltk  
sudo apt-get install python3-scipy  
sudo apt-get install python3-pandas  
sudo apt-get install python3-imageio

## Sublime Text (https://www.sublimetext.com/docs/3/linux_repositories.html##apt)
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -  
sudo apt-get install apt-transport-https  
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list  
sudo apt-get update  
sudo apt-get install sublime-text 

## Stacer
sudo add-apt-repository ppa:oguzhaninan/stacer  
sudo apt-get update  
sudo apt-get install stacer

## XFCE4
sudo apt-get install xfce4

## XDM
sudo apt-get install xdm

## Slim
sudo apt-get install slim  
/usr/share/slim/themes/  
/etc/slim.conf  
http://ubuntuhandbook.org/index.php/2013/08/install-use-slim-login-manager-in-ubuntu/  
https://github.com/DirectorX/slim-void-theme/releases  

## Bash Theme
tiny.cc/terminal

## VLC
sudo apt-get install vlc

## Firefox
sudo apt-get install firefox

### Bookmarks
Sharelatex  
GitHub  
Google Docs  
Trello  
Google Drive  
Dropbox  
4Devs  

## 7-Zip
sudo apt-get install p7zip-full

## Octave
sudo apt-get install octave

## Nomacs
sudo apt-get install nomacs

## File-Roller
sudo apt-get install file-roller

## Gimp
sudo apt-get install gimp

## Inkscape
sudo apt-get install inkscape

## Audacity
sudo apt-get install audacity

## Evince
sudo apt-get install evince

## Terminator
sudo apt-get install terminator

## Htop
sudo apt-get install htop

## Franz
wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.15/franz_5.0.0-beta.15_amd64.deb -O franz.deb  
sudo apt-get install libx11-dev libxext-dev libxss-dev libxkbfile-dev  

## Docker (https://linuxconfig.org/how-to-install-docker-on-ubuntu-18-04-bionic-beaver)
sudo apt-get install \  
apt-transport-https \  
ca-certificates \  
curl \  
software-properties-common  
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"  
sudo apt-get update  
sudo apt-get install docker.io  
sudo docker run hello-world  

## VSCode (https://code.visualstudio.com/docs/?dv=linux64_deb)
sudo dpkg -i *.deb

## ffmpeg
sudo apt-get install ffmpeg

## MyPaint
sudo apt-get install mypaint

## Gitk
sudo apt-get install gitk

## Npm
sudo apt-get install npm

## TLDR
sudo npm install -g tldr
