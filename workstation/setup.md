
---> Ubuntu pro account
sudo pro attach C1299udPbArg31Eo3XFDyj3iJzXGkj

--->  
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -


sudo apt-add-repository -y ppa:system76-dev/stable
sudo apt update 
sudo apt upgrade 

----> 
sudo mkdir /var/projects/
sudo chmod -R 777 /var/projects/

sudo ln -s /var/projects/ /
sudo ln -s /var/projects /home/david/

---> create the liste of file modele
 
cd ~/Modèles; touch mardown.md; touch python.py; touch javascript.js; touch typescript.js

---> list of the software to install in the pc
sudo apt update 
sudop apt upgrade  
sudo apt install fish nmap vim git docker docker-compose inkscape htop terminator chromium-browser jupyter python3 python3-venv python3-dev tensorman gimp blender google-chrome-stable steam-installer wah-plugins python3-pip nodejs npm curl wget gnome-screenshot python3-pyqt5 snap cargo postgresql-14 curl vim ffmpeg htop nmap iptraf tree gnupg curl virtualenv curl graphicsmagick-imagemagick-compat gunicorn git python3 python3-venv python3-pip ipython3 certbot python3-certbot-nginx zip ca-certificates curl gnupg lsb-release   docker-compose  cmake valac libgtk-3-dev libgee-0.8-dev libclutter-gtk-1.0-dev libclutter-1.0-dev libwebkit2gtk-4.0-dev libclutter-gst-3.0-dev code apt-transport-https openssh-server yt-dlp system76-driver system76-driver-nvidia python3-django neovim
----> Visual studio code.
wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O /tmp/code_latest_amd64.deb
sudo dpkg -i /tmp/code_latest_amd64.deb

----> Install rust
sudo curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo curl https://sh.rustup.rs -sSf | sh

----> snap install 

sudo snap install opera whatsapp-linux-app yt-dlp slack draw.io brave
sudo snap install --edge lutris 
sudo snap install atom --classic


----> list of the python3 lib install.
sudo pip install --upgrade pip
sudo pip install PyAutoGUI streamlit

----> list of npm package

sudo npm install -g n
sudo n lts
sudo npm i -g opencommit npm@latest @angular/cli electron typescript
sudo npm install --save-dev @types/electron


---> list of the tools to install in the visual studio code 

---> create symbolic link of the project directory in all directory 
 

---> git setup 

git config --global user.name "projeta618"
git config --global user.email "projeta618@gmail.com"
git config --global credential.helper 'cache --timeout=86400'
git config --global http.version HTTP/1.1
git config --global http.postBuffer 524288000
git config --global http.postBuffer 524288000

---> Animated Background
https://flathub.org/apps/io.github.jeffshee.Hidamari
flatpak install flathub io.github.jeffshee.Hidamari

---> IA commit
https://lib.rs/crates/commitgpt

mkdir -p ~/.config/commitgpt
touch ~/.config/commitgpt/config.toml

echo 'api_key = "YOUR_OPENAI_API_KEY"' > ~/.config/commitgpt/config.toml

git add -A ; commitgpt --suggestions 7 --max-tokens 100 ""

---> Install anydesk
sudo apt install anydesk

---> Configure vim plugin
git config --global core.editor "vim"

---> Configure visual studio code

- configure shortcut 
> ctrl+shift+p
> preferences: open keyboard shortcuts (Json)
- Copy this document
// Place your key bindings in this file to override the defaults
[
    { "key": "ctrl+g", "command": "workbench.action.quickOpen", }
]
