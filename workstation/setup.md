
---> Ubuntu pro account
sudo pro attach $UBUNTU_PRO_ACCOUNT_UID

--->  
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -


---> Docker 

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-add-repository -y ppa:system76-dev/stable
sudo apt update 
sudo apt upgrade 

----> 
sudo mkdir /var/projects/
sudo chmod -R 777 /var/projects/

sudo ln -s /var/projects/ /
sudo ln -s /var/projects ~

---> create the liste of file modele
 
cd ~/Modèles; touch mardown.md; touch python.py; touch javascript.js; touch typescript.js

---> list of the software to install in the pc
sudo apt update 
sudop apt upgrade  
sudo apt install fish nmap vim git docker docker-compose inkscape htop terminator chromium-browser jupyter python3 python3-venv python3-dev tensorman gimp blender google-chrome-stable steam-installer wah-plugins python3-pip nodejs npm curl wget gnome-screenshot python3-pyqt5 snap cargo graphicsmagick-imagemagick-compat gunicorn ipython3 certbot python3-certbot-nginx zip ca-certificates gnupg lsb-release cmake valac libgtk-3-dev libgee-0.8-dev libclutter-gtk-1.0-dev libclutter-1.0-dev libwebkit2gtk-4.0-dev libclutter-gst-3.0-dev code apt-transport-https openssh-server yt-dlp system76-driver system76-driver-nvidia python3-django neovim tree virtualenv


----> Visual studio code.
wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O /tmp/code_latest_amd64.deb
sudo dpkg -i /tmp/code_latest_amd64.deb

----> Install rust
sudo curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
sudo curl https://sh.rustup.rs -sSf | sh

----> snap install 

sudo snap install snap-store

sudo snap install opera whatsapp-linux-app yt-dlp slack brave
sudo snap install --edge lutris 
sudo snap install atom --classic
sudo snap install postman
sudo snap install slack
sudo snap install bruno


sudo mkdir /var/projects/
sudo chmod -R 777 /var/projects/
rm -rf ./Musique/
ln -s /var/projects/ ./Musique 


----> list of the python3 lib install.
sudo pip install --upgrade pip
sudo pip install PyAutoGUI streamlit colorama
python3 -m pip install --upgrade pip

----> list of npm package

sudo npm install -g n
sudo n lts
sudo npm i -g opencommit npm@latest @angular/cli electron typescript
sudo npm install --save-dev @types/electron
sudo npm install ng


---> list of the tools to install in the visual studio code 

---> create symbolic link of the project directory in all directory 
 

---> git setup 

git config --global user.name "px57"
git config --global user.email "david@prepera.io"
git config --global credential.helper 'cache --timeout=86400'
git config --global http.version HTTP/1.1
git config --global http.postBuffer 524288000
git config --global http.postBuffer 524288000
git config pull.rebase false
git config --global core.editor "vim"

sudo git config --global user.name "px57"
sudo git config --global user.email "david@prepera.io"
sudo git config --global credential.helper 'cache --timeout=86400'
sudo git config --global http.version HTTP/1.1
sudo git config --global http.postBuffer 524288000
sudo git config --global http.postBuffer 524288000
sudo git config pull.rebase false
sudo git config --global core.editor "vim"


---> IA commit
https://lib.rs/crates/commitgpt

mkdir -p ~/.config/commitgpt
touch ~/.config/commitgpt/config.toml

echo 'api_key = "YOUR_OPENAI_API_KEY"' > ~/.config/commitgpt/config.toml

git add -A ; commitgpt --suggestions 7 --max-tokens 100 ""

---> Install anydesk
sudo apt install anydesk

---> Configure visual studio code

- configure shortcut 
> ctrl+shift+p
> preferences: open keyboard shortcuts (Json)
- Copy this document
// Place your key bindings in this file to override the defaults
[
    { "key": "ctrl+g", "command": "workbench.action.quickOpen", }
]


---> Add gpt helper in the terminal 
https://linux.how2shout.com/shellgpt-install-and-use-chatgpt-in-ubuntu-linux-terminal/

---> Resoudre le probleme du tab. 

gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Alt>Tab']"

---> 

------ [INSTALL PROJECT]

-- [GPM]
cd /projects/
git clone https://github.com/px57/gpm.git
cd ./gpm/
python3 setup.py

-- [XIT-MASTER]
cd /projects/
mkdir venture
cd ./venture
git clone https://github.com/px57/xit-master.git --depth=1 --branch=prod base_code
git clone https://github.com/cartesis07/startup-analyst.git
sudo docker compose  -f ./docker_compose_dev.yml up
-- [SPACEBRICK]
cd /projects/
mkdir spacebricks
cd ./spacebricks/
git clone http://github.com/px57/spacebrick-frontend.git
git clone https://github.com/px57/spacebrick-documentation.git
git clone https://github.com/px57/spacebrick-backend.git

# Install frontend 
cd ./spacebrick-frontend/
npm install 

cd ./../

cd ./spacebrick-backend/
sudo docker-compose  -f ./docker_compose_dev.yml up
-- [BEBUZZ]

cd /projects/
mkdir buzz
cd ./buzz/
git clone https://github.com/bebuzzapp/buzz-intern-server.git
git clone https://github.com/bebuzzapp/documentation.git
git clone https://github.com/bebuzzapp/buzz-ios-app.git
git clone https://github.com/bebuzzapp/buzz-infra.git
git clone https://github.com/bebuzzapp/buzz-matchmaking.git 
git clone https://github.com/bebuzzapp/buzz-ChatBotAI.git
git clone https://github.com/bebuzzapp/buzz-timer.git
