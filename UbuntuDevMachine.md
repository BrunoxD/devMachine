# Softwares Install  
## System Utils  
### Ubuntu Essential Libraries  
`sudo apt install net-tools`  
`sudo apt install ubuntu-restricted-extras`  
`sudo apt install libavcodec-extra`  

### Synaptic
`sudo apt install synaptic`

### APP Repository  
`sudo apt install software-properties-common`  

### Headers
`sudo apt install linux-headers-$(uname -r) build-essential dkms`

### GNOME Terminal
`sudo apt install gnome-terminal`  

### Reset Repositories
`sudo rm /etc/apt/sources.list`  
`sudo software-properties-gtk`  

### Path Configuration
`echo -e "\nsource /etc/environment\n" >> .bashrc`

### Sudoers Configuration
`sudo bash -c "echo \"$USER ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers"`

## Customization  
### [XFCE4](https://superuser.com/questions/887430/xfce-login-error-unable-to-load-failsafe-session)
`sudo apt install xfce4`  

### XFCE Panel Switch
`sudo apt install xfpanel-switch`

### [Whisker Menu](https://www.vivaolinux.com.br/dica/Configurando-o-Whisker-Menu-no-XFCE4)
`sudo apt install xfce4-whiskermenu-plugin`

### [Slim](http://ubuntuhandbook.org/index.php/2013/08/install-use-slim-login-manager-in-ubuntu/)
`sudo apt install slim`  
`sudo cp -r slim-themes/ubuntu /usr/share/slim/themes/`  
`sudo nano /etc/slim.conf`  
https://github.com/DirectorX/slim-void-theme/releases  

### Bash Theme  
`wget http://tiny.cc/terminal -O .bashrc`

### Plymouth  
`sudo apt install plymouth`

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
2.`sudo apt install adapta-gtk-theme`

### [Arc-Flatabulous Theme](https://github.com/andreisergiu98/arc-flatabulous-theme)
1.`git clone https://github.com/andreisergiu98/arc-flatabulous-theme --depth 1 && cd arc-flatabulous-theme`  
2.`sudo apt install libgtk-3-dev`  
3.`sudo apt install sassc`  
4.`./autogen.sh --prefix=/usr`  
5.`sudo make install`  

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
1.`curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -`  
2.`sudo apt install -y nodejs`  
### TLDR  
`sudo npm install -g tldr`    
### [Yarn](https://yarnpkg.com/en/docs/install#debian-stable)
1.`curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -`  
2.`echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/  sources.list.d/yarn.list`  
3.`sudo apt update && sudo apt install yarn`  
4.`yarn --version`  

## C/C++ Development  
### Valgrind  
`sudo apt install valgrind` 
### GDB  
`sudo apt install gdb`
### Qt5
`sudo apt install qt5-default`
### FreeGLUT 
`sudo apt install freeglut3-dev`
  
## Python Development  
### Python Pip 3  
`sudo apt install python3-pip`  
### Jupyter Notebook
`sudo apt install ipython3`  
`sudo apt install jupyter`  
### Python Libraries  
  ### TkInter  
  `sudo apt install python3-tk`
  ### NumPy  
  `sudo apt install python3-numpy`
  ### Matplotlib  
  `sudo apt install python3-matplotlib`
  ### NLTK  
  `sudo apt install python3-nltk`
  ### SciPy  
  `sudo apt install python3-scipy`
  ### Pandas  
  `sudo apt install python3-pandas`
  ### ImageIO  
  `sudo apt install python3-imageio`  
  ### OpenGL
  `sudo apt install python3-opengl`  
  ### rstr
  `sudo apt install python3-rstr`
  ### Regex
  `sudo apt install python3-regex`
  ### Faker
  `sudo pip3 install -U Faker`
  ### Beautiful Soup
  `sudo apt install python3-bs4`
  ### SpaCy
  `sudo pip3 install -U spacy`
  ### Bokeh
  `sudo pip3 install -U bokeh`
  ### Scikit-learn
  `sudo apt install python3-sklearn`
  ### TensorFlow
  `sudo pip3 install -U tensorflow`
  ### StatsModels
  `sudo apt install python3-statsmodels`
  ### Seaborn
  `sudo apt install python3-seaborn`
  ### Plotly
  `sudo apt install python3-plotly`
  ### Pydot
  `sudo apt install python3-pydot`
  ### Theano
  `sudo apt install python3-theano`
  ### Keras
  `sudo apt install python3-keras`
  ### Scrapy
  `sudo apt install python3-scrapy`

## Mathematical Programming  
### R  
`sudo apt install r-base`
### Octave  
`sudo apt install octave`  

## Data Base Management System   
### PostgreeSQL  
`sudo apt install postgresql postgresql-contrib` 
### Driver Qt5
`sudo apt install libqt5sql5-psql`

## Container  
### [Docker](https://linuxconfig.org/how-to-install-docker-on-ubuntu-18-04-bionic-beaver)  
```
sudo apt install \
apt-transport-https \
ca-certificates \
curl \
software-properties-common
```  
2.`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`  
3.`sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"`  
4.`sudo apt update`  
5.`sudo apt install docker-ce`  
6.`sudo docker run hello-world`  

### [Docker Compose](https://github.com/docker/compose/releases)
1.`sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose`  
2.`sudo chmod +x /usr/local/bin/docker-compose`

## Source Code Editor  
### [Sublime Text](https://www.sublimetext.com/docs/3/linux_repositories.html####apt)
1.`wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -`  
2.`sudo apt install apt-transport-https`  
3.`echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list`  
4.`sudo apt update`  
5.`sudo apt install sublime-text`  
#### Packages
  - Git
  - GitGutter
  - GraphQL
  - Rainglow

### Vim  
`sudo apt install vim`  

### [VSCode](https://code.visualstudio.com/docs/setup/linux) 
1.`curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg`  
2.`sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg`  
3.`sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'`  
4.`sudo apt update`  
5.`sudo apt install code`  

## Graphical Tools
### Stacer  
1.`sudo add-apt-repository ppa:oguzhaninan/stacer`  
2.`sudo apt update`  
3.`sudo apt install stacer`  
### BleachBit
`sudo apt install bleachbit`
### GNOME Calculator
`sudo apt install gnome-calculator`
### File-Roller  
`sudo apt install file-roller`  
`sudo apt install thunar-archive-plugin`  
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
### Franz  
1.`wget https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.18/franz_5.0.0-beta.18_amd64.deb -O franz.deb`  
2.`sudo apt install libx11-dev libxext-dev libxss-dev libxkbfile-dev`  
3.`sudo dpkg -i franz.deb`  
4.`sudo apt-get --fix-broken install`  
### Firefox Quantum  
`sudo apt install firefox`
#### Bookmarks  
  - Sharelatex  
  - GitHub  
  - Google Docs  
  - Trello  
  - Google Drive  
  - Dropbox  
  - 4Devs  
  - Draw.io
  - Kaggle
  - Google Tradutor

#### Add-ons
  - uBlock Origin
  - Video DownloadHelper  

#### Themes
  - [Starry Space Fantasy](https://addons.mozilla.org/pt-BR/firefox/addon/starry-space-fantasy/)  

#### Privacy
  - Keeps Cookies and Cache until be closed

## Multimedia
### [OpenShot](https://www.openshot.org/pt/ppa/)
1.`sudo add-apt-repository ppa:openshot.developers/ppa`  
2.`sudo apt update`  
3.`sudo apt install openshot-qt -y`  
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
1.`wget https://code-industry.net/public/master-pdf-editor-5.1.12_qt5.amd64.deb -O master-pdf-editor.deb`  
2.`sudo dpkg -i master-pdf-editor.deb`
3.`sudo apt-get --fix-broken install`  
### ffmpeg  
`sudo apt install ffmpeg`  
### VLC  
`sudo apt install vlc`  
