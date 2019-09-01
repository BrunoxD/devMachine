#!/bin/bash

SUDOERS=""
KERNEL=""
PRE_INSTALL="sudo apt install -y "
PPA=""
INSTALL="sudo apt install -y "
CONFIG=""
GIT_RESET=""
PIP=""

# Softwares Install  
## System Utils  
## Kernel Update V5.0
KERNEL="sudo apt install --install-recommends linux-generic-hwe-18.04 xserver-xorg-hwe-18.04 "

### Ubuntu Essential Libraries  
INSTALL+="net-tools "
INSTALL+="ubuntu-restricted-extras "
INSTALL+="libavcodec-extra "

### Synaptic
INSTALL+="synaptic "

### APP Repository  
PRE_INSTALL+="software-properties-common "

### Headers
INSTALL+="linux-headers-$(uname -r) "
INSTALL+="build-essential "
INSTALL+="dkms "

### GNOME Terminal
PRE_INSTALL+="gnome-terminal "   

### Path Configuration
#`echo -e "\nsource /etc/environment\n" >> .bashrc`

### Sudoers Configuration
SUDOERS='sudo bash -c "echo \"$USER ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers" '

## Customization  
INSTALL+="xfce4 "

### XFCE Panel Switch
INSTALL+="xfpanel-switch "

### [Whisker Menu](https://www.vivaolinux.com.br/dica/Configurando-o-Whisker-Menu-no-XFCE4)
INSTALL+="xfce4-whiskermenu-plugin "

#"sudo apt install slim -y \
#&& sudo cp -r devMachine/slim-themes/ubuntu /usr/share/slim/themes/ \
#&& sudo sed -i 's/debian-softwaves/ubuntu/g' /etc/slim.conf \
#&& sudo sed -i "4i Conflicts=getty@tty1.service" /lib/systemd/system/slim.service

### Bash Theme  
#`wget http://tiny.cc/terminal -O .bashrc`

### Adapta GTK Theme
PPA="sudo apt-add-repository ppa:tista/adapta -y "
INSTALL+="adapta-gtk-theme "

### [Arc-Flatabulous Theme](https://github.com/andreisergiu98/arc-flatabulous-theme)
CONFIG+='git clone https://github.com/andreisergiu98/arc-flatabulous-theme --depth 1 '
CONFIG+='&& cd arc-flatabulous-theme '
INSTALL+="autoconf "
INSTALL+="automake "
INSTALL+="sassc "
INSTALL+="pkg-config "
INSTALL+="optipng "
INSTALL+="inkscape "
CONFIG+="&& ./autogen.sh --prefix=/usr --with-gtk3=3.22.30 --with-gnome-shell=3.28.2 "
CONFIG+="&& sudo make install "


## Terminal Tools  
### Curl  
PRE_INSTALL+="curl "
### Zerofree  
INSTALL+="zerofree "
### Screenfetch  
INSTALL+="screenfetch "
### Neofetch  
INSTALL+="neofetch "
### Inxi  
INSTALL+="inxi "
### Htop  
INSTALL+="htop "
### Git  
PRE_INSTALL+="git "
#### Reset Git Configuration
GIT_RESET='sudo bash -c "echo \"rm -rf ~/.gitconfig\" >> /etc/profile '
### Gitk  
INSTALL+="gitk "
### 7-Zip  
INSTALL+="p7zip-full "
### NPM  
CONFIG+="&& curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - "
CONFIG+="&& sudo apt install -y nodejs "
### TLDR  
CONFIG+="&& sudo npm install -g tldr "
### [Yarn](https://yarnpkg.com/en/docs/install#debian-stable)
CONFIG+="&& curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - "
CONFIG+='&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list '
CONFIG+="&& sudo apt update && sudo apt install yarn "

## C/C++ Development  
### Valgrind  
INSTALL+="valgrind "
### GDB  
INSTALL+="gdb "
### Qt5
INSTALL+="qt5-default "
### FreeGLUT 
INSTALL+="freeglut3-dev "
  
## Python 3 Development  
### Python Pip 3  
INSTALL+="python3-pip "
PIP="sudo -H pip3 install -U pip -y "
### Python Libraries  
### NumPy, Matplotlib, NLTK, SciPy, Pandas, ImageIO, OpenGL, rstr, Regex, Faker, Beautiful Soup, SpaCy, Bokeh, Scikit-learn, StatsModels, Seaborn, Plotly, Pydot, Theano, Keras, Scrapy, Jupyter Notebook
#git clone https://github.com/BrunoxD/devMachine \
#&& cd devMachine/scripts/ \
#&& sudo ./Install.sh
### TkInter  
INSTALL+="python3-tk "
### TensorFlow
#`sudo -H pip3 install -U tensorflow`

## Mathematical Programming  
### R  
INSTALL+="r-base "
### Octave  
INSTALL+="octave "

## Data Base Management System   
### PostgreeSQL  
INSTALL+="postgresql "
INSTALL+="postgresql-contrib "
### Driver Qt5
INSTALL+="libqt5sql5-psql "

## Container  
### [Docker](https://linuxconfig.org/how-to-install-docker-on-ubuntu-18-04-bionic-beaver)  
INSTALL+="apt-transport-https "
INSTALL+="ca-certificates "
INSTALL+="curl "
INSTALL+="software-properties-common "
CONFIG+="&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - "
CONFIG+='&& sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y '
CONFIG+="&& sudo apt update "
CONFIG+="&& sudo apt install docker-ce -y " 

### [Docker Compose](https://github.com/docker/compose/releases)
CONFIG+="&& sudo curl -L https://github.com/docker/compose/releases/download/1.24.0-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose "
CONFIG+="&& sudo chmod +x /usr/local/bin/docker-compose "

## Source Code Editor  
### [Sublime Text](https://www.sublimetext.com/docs/3/linux_repositories.html####apt)
CONFIG+="&& wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - "
CONFIG+="&& sudo apt install apt-transport-https "
CONFIG+='&& echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list '
CONFIG+="&& sudo apt update "
CONFIG+="&& sudo apt install sublime-text "
#### Packages
  # - Git
  # - GitGutter
  # - GraphQL
  # - Rainglow

### Vim  
INSTALL+="vim "

### [VSCode](https://code.visualstudio.com/docs/setup/linux) 
CONFIG+="&& curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg "
CONFIG+="&& sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg "
CONFIG+="&& sudo sh -c 'echo \"deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main\" > /etc/apt/sources.list.d/vscode.list' "
CONFIG+="&& sudo apt update "
CONFIG+="&& sudo apt install code "

## Graphical Tools
### Stacer  
PPA+="&& sudo add-apt-repository ppa:oguzhaninan/stacer -y "
INSTALL+="&& sudo apt install stacer "
### Baobab  
INSTALL+="baobab "
### BleachBit
INSTALL+="bleachbit "
### GNOME Calculator
INSTALL+="gnome-calculator "
### File-Roller  
INSTALL+="file-roller "
INSTALL+="thunar-archive-plugin "
### GtkHash
INSTALL+="thunar-gtkhash "
### FileZilla
INSTALL+="filezilla "
### Transmission
INSTALL+="transmission "
### ScreenShooter
INSTALL+="xfce4-screenshooter "
### Kazam
INSTALL+="kazam "
### Terminator  
INSTALL+="terminator "
### Firefox Quantum  
INSTALL+="firefox "
#### Bookmarks  
  # - Overleaf  
  # - GitHub  
  # - Google Docs  
  # - Trello  
  # - Google Drive  
  # - Dropbox  
  # - 4Devs  
  # - Draw.io
  # - Kaggle
  # - Google Colaboratory
  # - Google Translator

#### Add-ons
  # - uBlock Origin
  # - Video DownloadHelper  

#### Themes
  # - [Starry Space Fantasy](https://addons.mozilla.org/pt-BR/firefox/addon/starry-space-fantasy/)  

#### Privacy
  # - Keeps Cookies and Cache until be closed

## Multimedia
### [OpenShot](https://www.openshot.org/pt/ppa/)
PPA+="&& sudo add-apt-repository ppa:openshot.developers/ppa -y "
INSTALL+="openshot-qt "
### Nomacs  
INSTALL+="nomacs "
### Gimp  
INSTALL+="gimp "
### Inkscape  
INSTALL+="inkscape "
### MyPaint  
INSTALL+="mypaint "
### Audacity  
INSTALL+="audacity "
### Evince  
INSTALL+="evince "
### Master PDF Editor
CONFIG+="&& wget https://code-industry.net/public/master-pdf-editor-5.4.38-qt5.amd64.deb -O master-pdf-editor.deb "
CONFIG+="&& sudo apt install ./master-pdf-editor.deb -f -y "
CONFIG+="&& sudo apt install libsane1 -y "
### ffmpeg  
INSTALL+="ffmpeg "
### VLC  
INSTALL+="vlc "
### MPV
#`sudo apt install mpv`

### Fix for VLC and OpenShot in VirtualBox 6.0.4
#sudo apt install patchelf \
#&& sudo patchelf --add-needed libcrypt.so.1 /opt/VBoxGuestAdditions-6.0.4/lib/VBoxOGLcrutil.so

#echo "$KERNEL&& $INSTALL&& $SUDOERS&& $GIT_RESET"
echo "$SUDOERS"
echo "$KERNEL"
echo "$PRE_INSTALL"
echo "$PPA&& $INSTALL&& $CONFIG&& $GIT_RESET&& $PIP"