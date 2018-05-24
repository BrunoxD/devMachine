# Softwares Install  
## System Utils  
### Ubuntu Essential Libraries  
`sudo apt-get install net-tools`  
`sudo apt-get install ubuntu-restricted-extras`  
`sudo apt-get install libavcodec-extra`  

### Synaptic
`sudo apt-get install synaptic`

### APP Repository  
`sudo apt-get install software-properties-common python-software-properties`  

### Reset Repositories
`sudo rm /etc/apt/sources.list`  
`sudo software-properties-gtk`  

## Customization  
### XFCE4  
`sudo apt-get install xfce4`
### [Whisker Menu](https://www.vivaolinux.com.br/dica/Configurando-o-Whisker-Menu-no-XFCE4)
`sudo apt-get install xfce4-whiskermenu-plugin`
### XDM  
`sudo apt-get install xdm`
### Slim  
`sudo apt-get install slim`  
/usr/share/slim/themes/  
/etc/slim.conf  
http://ubuntuhandbook.org/index.php/2013/08/install-use-slim-login-manager-in-ubuntu/  
https://github.com/DirectorX/slim-void-theme/releases  
### Bash Theme  
http://tiny.cc/terminal  
### Plymouth  
`sudo apt-get install plymouth`
### Plymouth Themes  
https://www.youtube.com/watch?v=YRuqn2sliqA  
https://www.gnome-look.org/p/1111515/  
https://www.gnome-look.org/p/1009736/  
https://www.gnome-look.org/p/1009456/  
https://www.gnome-look.org/p/1111249/  
https://www.gnome-look.org/p/1000019/  
`sudo update-alternatives --config default.plymouth`  
`sudo update-initramfs -u`  
`sudo su`  
`echo -e "GRUB_GFXPAYLOAD_LINUX=keep\nGRUB_GFXMODE=\"800x600x32\"" >> /etc/default/grub`  
`update grub`  
### Adapta GTK Theme
1.`sudo apt-add-repository ppa:tista/adapta`  
2.`sudo apt-get install adapta-gtk-theme`
### [Arc-Flatabulous Theme](https://github.com/andreisergiu98/arc-flatabulous-theme)
1.`git clone https://github.com/andreisergiu98/arc-flatabulous-theme --depth 1 && cd arc-flatabulous-theme`  
2.`sudo apt-get install libgtk-3-dev`  
3.`sudo apt-get install sassc`  
4.`./autogen.sh --prefix=/usr`  
5.`sudo make install`  

## Terminal Tools  
### Curl  
`sudo apt-get install curl`
### Zerofree  
`sudo apt-get install zerofree`
### Screenfetch  
`sudo apt-get install screenfetch`
### Neofetch  
`sudo apt-get install neofetch`
### Inxi  
`sudo apt-get install inxi`
### Htop  
`sudo apt-get install htop`
### Git  
`sudo apt-get install git`
### Gitk  
`sudo apt-get install gitk`
### 7-Zip  
`sudo apt-get install p7zip-full`
### Npm  
`sudo apt-get install npm`
### TLDR  
`sudo npm install -g tldr`  

## C Development  
### Valgrind  
`sudo apt-get install valgrind` 
### GDB  
`sudo apt-get install gdb`
  
## Python Development  
### Python Pip 3  
`sudo apt-get install python3-pip`  
### Jupyter Notebook
`sudo pip3 install jupyter`  
`sudo apt-get install ipython3`
### Python Libraries  
  ### TkInter  
  `sudo apt-get install python3-tk`
  ### NumPy  
  `sudo apt-get install python3-numpy`
  ### Matplotlib  
  `sudo apt-get install python3-matplotlib`
  ### NLTK  
  `sudo apt-get install python3-nltk`
  ### SciPy  
  `sudo apt-get install python3-scipy`
  ### Pandas  
  `sudo apt-get install python3-pandas`
  ### ImageIO  
  `sudo apt-get install python3-imageio`
  ### OpenGL
  `sudo apt-get install python3-opengl`

## Mathematical Programming  
### R  
`sudo apt-get install r-base`
### Octave  
`sudo apt-get install octave`  

## Data Base Management System   
### PostgreeSQL  
`sudo apt-get install postgreesql postgreesql-contrib`  

## Container  
### [Docker](https://linuxconfig.org/how-to-install-docker-on-ubuntu-18-04-bionic-beaver)  
```
sudo apt-get install \
apt-transport-https \
ca-certificates \
curl \
software-properties-common
```  
2.`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`  
3.`sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"`  
4.`sudo apt-get update`  
5.`sudo apt-get install docker.io`  
6.`sudo docker run hello-world`  

### [Docker-compose](https://docs.docker.com/compose/install/#install-compose)
`sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose`  
`sudo chmod +x /usr/local/bin/docker-compose`

## Source Code Editor  
### [Sublime Text](https://www.sublimetext.com/docs/3/linux_repositories.html####apt)
1.`wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -`  
2.`sudo apt-get install apt-transport-https`  
3.`echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list`  
4.`sudo apt-get update`  
5.`sudo apt-get install sublime-text`  

### Vim  
`sudo apt-get install vim`  

### [VSCode](https://code.visualstudio.com/docs/?dv=linux64_deb)  
`sudo dpkg -i *.deb`  

## Graphical Tools  
### Stacer  
1.`sudo add-apt-repository ppa:oguzhaninan/stacer`  
2.`sudo apt-get update`  
3.`sudo apt-get install stacer`  
### BleachBit
`sudo apt-get install bleachbit`
### GNOME Calculator
`sudo apt-get install gnome-calculator`
### File-Roller  
`sudo apt-get install file-roller`  
### Terminator  
`sudo apt-get install terminator`  
### Franz  
1.`wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.15/franz_5.0.0-beta.15_amd64.deb -O franz.deb`  
2.`sudo apt-get install libx11-dev libxext-dev libxss-dev libxkbfile-dev`  
### Firefox Quantum  
`sudo apt-get install firefox`
#### Bookmarks  
  - Sharelatex  
  - GitHub  
  - Google Docs  
  - Trello  
  - Google Drive  
  - Dropbox  
  - 4Devs  
  - Draw.io  

## Multimedia
### Nomacs  
`sudo apt-get install nomacs`  
### Gimp  
`sudo apt-get install gimp`  
### Inkscape  
`sudo apt-get install inkscape`  
### MyPaint  
`sudo apt-get install mypaint`  
### Audacity  
`sudo apt-get install audacity`  
### Evince  
`sudo apt-get install evince`  
### ffmpeg  
`sudo apt-get install ffmpeg`  
### VLC  
`sudo apt-get install vlc`  
### GLUT
`sudo apt-get install freeglut3-dev`
