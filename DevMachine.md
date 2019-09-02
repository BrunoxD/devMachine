# Softwares Install  
## System Utils  
### Kernel Update 5.0
```
sudo apt install --install-recommends \
linux-generic-hwe-18.04 \
xserver-xorg-hwe-18.04
```

### Ubuntu Essential Libraries  
```
sudo apt install net-tools \
ubuntu-restricted-extras \
libavcodec-extra
```

### Synaptic
`sudo apt install synaptic`

### APP Repository  
`sudo apt install software-properties-common`  

### Headers
```
sudo apt install linux-headers-$(uname -r) \
build-essential \
dkms
```

### GNOME Terminal
`sudo apt install gnome-terminal`  

### ZSH + [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
```
sudo apt install zsh -y \
&& sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
&& chsh -s $(which zsh)
```

#### ZSH Path and Themes
```
cp -f devMachine/zsh-themes/.zshrc ~ \
&& cp -f devMachine/zsh-themes/b2.zsh-theme ~/.oh-my-zsh/themes/
```
#### [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
`git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`

#### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`

### Default Shell Bash
`chsh -s $(which bash)`

### Reset Repositories
```
sudo rm /etc/apt/sources.list \
&& sudo software-properties-gtk
```

### Path Configuration
`echo -e "\nsource /etc/environment\n" >> .bashrc`

### Sudoers Configuration
`sudo bash -c "echo \"$USER ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers"`

## Customization  
### [XFCE4](https://superuser.com/questions/887430/xfce-login-error-unable-to-load-failsafe-session)
```
sudo apt install xfce4 \
&& export XDG_CONFIG_DIRS=/etc/xdg \
&& sudo chown -R $USER $HOME
```

### XFCE Panel Switch
`sudo apt install xfpanel-switch`

### [Whisker Menu](https://www.vivaolinux.com.br/dica/Configurando-o-Whisker-Menu-no-XFCE4)
`sudo apt install xfce4-whiskermenu-plugin`

### [Slim](http://ubuntuhandbook.org/index.php/2013/08/install-use-slim-login-manager-in-ubuntu/)
```
sudo apt install slim -y \
&& sudo cp -r devMachine/slim-themes/ubuntu /usr/share/slim/themes/ \
&& sudo sed -i 's/debian-softwaves/ubuntu/g' /etc/slim.conf \
&& sudo sed -i "4i Conflicts=getty@tty1.service" /lib/systemd/system/slim.service
```
https://github.com/DirectorX/slim-void-theme/releases  

### Bash Theme  
`wget http://tiny.cc/bash -O .bashrc`

### Plymouth  
`sudo apt install plymouth`

### Plymouth Themes  
```
sudo apt install plymouth-theme-ubuntu-logo -y \
&& echo FRAMEBUFFER=y | sudo tee /etc/initramfs-tools/conf.d/splash \
&& sudo update-initramfs -u
```
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
```
sudo apt-add-repository ppa:tista/adapta \
&& sudo apt install adapta-gtk-theme
```

### [Arc-Flatabulous Theme](https://github.com/andreisergiu98/arc-flatabulous-theme)
```
git clone https://github.com/andreisergiu98/arc-flatabulous-theme --depth 1 \
&& cd arc-flatabulous-theme \
&& sudo apt install autoconf \
automake \
sassc \
pkg-config \
git \
optipng \
inkscape \
libgtk-3-dev \
&& ./autogen.sh --prefix=/usr \
&& sudo make install
```

## Terminal Tools  
### Curl  
`sudo apt install curl`
### Zerofree  
`sudo apt install zerofree`
### Screenfetch  
`sudo apt install screenfetch`
### Neofetch  
`sudo apt install neofetch`
### Inxi  
`sudo apt install inxi`
### Htop  
`sudo apt install htop`
### Git  
`sudo apt install git`
#### Reset Git Configuration
`sudo bash -c "echo \"rm -rf ~/.gitconfig\" >> /etc/profile"`
### Gitk  
`sudo apt install gitk`
### 7-Zip  
`sudo apt install p7zip-full`
### NPM  
```
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - \
&& sudo apt install -y nodejs
```
### TLDR  
`sudo npm install -g tldr`    
### [Yarn](https://yarnpkg.com/en/docs/install#debian-stable)
```
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list \
&& sudo apt update && sudo apt install yarn
```
### [Pandoc](https://gist.github.com/rain1024/98dd5e2c6c8c28f9ea9d)
```
sudo apt install -y texlive-latex-base \
texlive-fonts-recommended \
pandoc
```

## C/C++ Development  
### Valgrind  
`sudo apt install valgrind` 
### GDB  
`sudo apt install gdb`
### Qt5
`sudo apt install qt5-default`
### FreeGLUT 
`sudo apt install freeglut3-dev`
  
## Python 3 Development  
### Python Pip 3  
```
sudo apt install python3-pip \
&& sudo -H pip3 install -U pip
```
### Python Libraries  
### NumPy, Matplotlib, NLTK, SciPy, Pandas, ImageIO, OpenGL, rstr, Regex, Faker, Beautiful Soup, SpaCy, Bokeh, Scikit-learn, StatsModels, Seaborn, Plotly, Pydot, Theano, Keras, Scrapy, Jupyter Notebook
```
git clone https://github.com/BrunoxD/devMachine \
&& cd devMachine/scripts/ \
&& sudo ./Install.sh
```
### TkInter  
`sudo apt install python3-tk`
### TensorFlow
`sudo -H pip3 install -U tensorflow`

## Mathematical Programming  
### R  
`sudo apt install r-base`
### Octave  
`sudo apt install octave`  

## Data Base Management System   
### PostgreeSQL  
```
sudo apt install postgresql \
postgresql-contrib
```
### Driver Qt5
`sudo apt install libqt5sql5-psql`

## Container  
### [Docker](https://linuxconfig.org/how-to-install-docker-on-ubuntu-18-04-bionic-beaver)  
```
sudo apt install \
apt-transport-https \
ca-certificates \
curl \
software-properties-common \
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - \
&& sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" \
&& sudo apt update \
&& sudo apt install docker-ce \
&& sudo docker run hello-world`
```  

### [Docker Compose](https://github.com/docker/compose/releases)
```
sudo curl -L https://github.com/docker/compose/releases/download/1.25.0-rc2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose \
&& sudo chmod +x /usr/local/bin/docker-compose
```

## Source Code Editor  
### [Sublime Text](https://www.sublimetext.com/docs/3/linux_repositories.html####apt)
```
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - \
&& sudo apt install apt-transport-https \
&& echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list \
&& sudo apt update \
&& sudo apt install sublime-text
```
#### Packages
  - Git
  - GitGutter
  - GraphQL
  - Rainglow

### Vim  
`sudo apt install vim`  

### [VSCode](https://code.visualstudio.com/docs/setup/linux) 
```
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg \
&& sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg \
&& sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list' \
&& sudo apt update \
&& sudo apt install code
```
#### Packages
  - Monokai Pro  
  - Python  

## Graphical Tools
### Insomnia
```
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list \
&& wget -qO - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add - \
&& sudo apt-get update \
&& sudo apt-get install insomnia -y
```

### Stacer  
```
sudo add-apt-repository ppa:oguzhaninan/stacer \
&& sudo apt update \
&& sudo apt install stacer
```
### Baobab  
`sudo apt install baobab`
### BleachBit
`sudo apt install bleachbit`
### GNOME Calculator
`sudo apt install gnome-calculator`
### File-Roller  
```
sudo apt install file-roller \
thunar-archive-plugin
```
### GtkHash
`sudo apt install thunar-gtkhash`  
### FileZilla
`sudo apt install filezilla`
### Transmission
`sudo apt install transmission`
### ScreenShooter
`sudo apt install xfce4-screenshooter`
### Kazam
`sudo apt install kazam`
### Terminator  
`sudo apt install terminator`  
### Firefox Quantum  
`sudo apt install firefox`
#### Bookmarks  
  - Overleaf  
  - GitHub  
  - Google Docs  
  - Trello  
  - Google Drive  
  - Dropbox  
  - 4Devs  
  - Draw.io
  - Kaggle
  - Google Colaboratory
  - Google Translator

#### Add-ons
  - uBlock Origin
  - Video DownloadHelper  

#### Themes
  - [Starry Space Fantasy](https://addons.mozilla.org/pt-BR/firefox/addon/starry-space-fantasy/)  

#### Privacy
  - Keeps Cookies and Cache until be closed

## Multimedia
### [OpenShot](https://www.openshot.org/pt/ppa/)
```
sudo add-apt-repository ppa:openshot.developers/ppa \
&& sudo apt update \
&& sudo apt install openshot-qt -y
```
### Nomacs  
`sudo apt install nomacs`  
### Gimp  
`sudo apt install gimp`  
### Inkscape  
`sudo apt install inkscape`  
### MyPaint  
`sudo apt install mypaint`  
### Audacity  
`sudo apt install audacity`  
### Evince  
`sudo apt install evince`  
### Master PDF Editor
```
wget https://code-industry.net/public/master-pdf-editor-5.4.38-qt5.amd64.deb -O master-pdf-editor.deb \
&& sudo apt install libsane1 ./master-pdf-editor.deb -y
```
### ffmpeg  
`sudo apt install ffmpeg`  
### VLC  
`sudo apt install vlc`  