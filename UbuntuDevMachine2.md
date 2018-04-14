# Softwares Install  
## System Utils  
### Ubuntu Essential Libraries  
sudo apt-get install net-tools  
sudo apt-get install ubuntu-restricted-extras  
sudo apt-get install libavcodec-extra  

### APP Repository  
sudo apt-get install software-properties-common python-software-properties  

### Reset Repositories
sudo rm /etc/apt/sources.list  
sudo software-properties-gtk

## Customization  
### XFCE4  
sudo apt-get install xfce4
### XDM  
sudo apt-get install xdm
### Slim  
sudo apt-get install slim  
/usr/share/slim/themes/  
/etc/slim.conf  
http://ubuntuhandbook.org/index.php/2013/08/install-use-slim-login-manager-in-ubuntu/  
https://github.com/DirectorX/slim-void-theme/releases  
### Bash Theme  
tiny.cc/terminal  
### Plymouth  
sudo apt-get install plymouth
### Plymouth Themes  
https://www.youtube.com/watch?v=YRuqn2sliqA  
https://www.gnome-look.org/p/1111515/  
https://www.gnome-look.org/p/1009736/  
https://www.gnome-look.org/p/1009456/  
https://www.gnome-look.org/p/1111249/  
https://www.gnome-look.org/p/1000019/  
sudo update-alternatives --config default.plymouth  
sudo update-initramfs -u  

## Terminal Tools  
### Curl  
sudo apt-get install curl
### Zerofree  
sudo apt-get install zerofree
### Screenfetch  
sudo apt-get install screenfetch
### Neofetch  
sudo apt-get install neofetch
### Inxi  
sudo apt-get install inxi
### Htop  
sudo apt-get install htop
### Git  
sudo apt-get install git
### Gitk  
sudo apt-get install gitk
### 7-Zip  
sudo apt-get install p7zip-full
### Npm  
sudo apt-get install npm
### TLDR  
sudo npm install -g tldr  

## C Development  
### Valgrind  
sudo apt-get install valgrind 
### GDB  
sudo apt-get install gdb
  
## Python Development  
### Python Pip 3  
sudo apt-get install python3-pip  
### Python Libraries  
  ### TkInter  
  sudo apt-get install python3-tk
  ### NumPy  
  sudo apt-get install python3-numpy
  ### Matplotlib  
  sudo apt-get install python3-matplotlib
  ### NLTK  
  sudo apt-get install python3-nltk
  ### SciPy  
  sudo apt-get install python3-scipy
  ### Pandas  
  sudo apt-get install python3-pandas
  ### ImageIO  
  sudo apt-get install python3-imageio

## Mathematical Programming  
### R  
sudo apt-get install r-base
### Octave  
sudo apt-get install octave  

## SGBD  
### PostgreeSQL  
sudo apt-get install postgreesql postgreesql-contrib  

## Container  
### [Docker](https://linuxconfig.org/how-to-install-docker-on-ubuntu-18-04-bionic-beaver)  
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

## Source Code Editor  
### [Sublime Text](https://www.sublimetext.com/docs/3/linux_repositories.html####apt)
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -  
sudo apt-get install apt-transport-https  
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list  
sudo apt-get update  
sudo apt-get install sublime-text  

### Vim  
sudo apt-get install vim  

### [VSCode](https://code.visualstudio.com/docs/?dv=linux64_deb)  
sudo dpkg -i *.deb  

## Graphical Tools  
### Stacer  
sudo add-apt-repository ppa:oguzhaninan/stacer  
sudo apt-get update  
sudo apt-get install stacer  
### File-Roller  
sudo apt-get install file-roller  
### Terminator  
sudo apt-get install terminator  
### Franz  
wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.15/franz_5.0.0-beta.15_amd64.deb -O franz.deb  
sudo apt-get install libx11-dev libxext-dev libxss-dev libxkbfile-dev  
### Firefox Quantum  
sudo apt-get install firefox
#### Bookmarks  
  - Sharelatex  
  - GitHub  
  - Google Docs  
  - Trello  
  - Google Drive  
  - Dropbox  
  - 4Devs  

## Multimedia
### Nomacs  
sudo apt-get install nomacs  
### Gimp  
sudo apt-get install gimp  
### Inkscape  
sudo apt-get install inkscape  
### MyPaint  
sudo apt-get install mypaint  
### Audacity  
sudo apt-get install audacity  
### Evince  
sudo apt-get install evince  
### ffmpeg  
sudo apt-get install ffmpeg  
### VLC  
sudo apt-get install vlc  
