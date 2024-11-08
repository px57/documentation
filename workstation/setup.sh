#!/bin/bash

echo "Démarrage de l'installation et configuration du PC..."

# Étape 1 : Attacher un compte Ubuntu Pro
echo "Attachement du compte Ubuntu Pro..."
sudo pro attach $UBUNTU_PRO_ACCOUNT_UID

# Étape 2 : Installation d'Anydesk
echo "Ajout des dépôts et installation d'Anydesk..."
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -

# Ajout du dépôt pour les pilotes System76 (Pop!_OS)
sudo apt-add-repository -y ppa:system76-dev/stable

# Mise à jour du système
sudo apt update && sudo apt upgrade -y

# Étape 3 : Configuration du dossier de projets
echo "Création et configuration du dossier de projets..."
sudo mkdir -p /var/projects/
sudo chmod -R 777 /var/projects/
sudo ln -s /var/projects /projects
sudo ln -s /var/projects ~

# Étape 4 : Création des modèles de fichiers
echo "Création des modèles de fichiers dans ~/Modèles..."
mkdir -p ~/Modèles
cd ~/Modèles
touch mardown.md python.py javascript.js typescript.js

# Étape 5 : Installation de logiciels principaux
echo "Installation des logiciels principaux..."
sudo apt install -y fish nmap vim git docker docker-compose inkscape htop terminator chromium-browser jupyter \
    python3 python3-venv python3-dev tensorman gimp blender google-chrome-stable steam-installer wah-plugins \
    python3-pip nodejs npm curl wget gnome-screenshot python3-pyqt5 snap cargo postgresql-14 \
    graphicsmagick-imagemagick-compat gunicorn ipython3 certbot python3-certbot-nginx zip ca-certificates \
    gnupg lsb-release cmake valac libgtk-3-dev libgee-0.8-dev libclutter-gtk-1.0-dev libclutter-1.0-dev \
    libwebkit2gtk-4.0-dev libclutter-gst-3.0-dev code apt-transport-https openssh-server yt-dlp \
    system76-driver system76-driver-nvidia python3-django neovim tree virtualenv anydesk

# Installation de Visual Studio Code
echo "Installation de Visual Studio Code..."
wget 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64' -O /tmp/code_latest_amd64.deb
sudo dpkg -i /tmp/code_latest_amd64.deb

# Étape 6 : Installation de Rust
echo "Installation de Rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Étape 7 : Installation des applications Snap
echo "Installation des applications Snap..."
sudo snap install snap-store
sudo snap install opera whatsapp-linux-app yt-dlp slack brave
sudo snap install --edge lutris
sudo snap install atom --classic
sudo snap install postman
sudo snap install slack

# Étape 8 : Installation des bibliothèques Python
echo "Installation des bibliothèques Python..."
sudo pip install --upgrade pip
sudo pip install PyAutoGUI streamlit colorama

# Étape 9 : Installation des packages npm globaux
echo "Installation des packages npm globaux..."
sudo npm install -g n
sudo n lts
sudo npm i -g opencommit npm@latest @angular/cli electron typescript
sudo npm install --save-dev @types/electron

# Étape 10 : Configuration Git
echo "Configuration de Git..."
git config --global user.name "px57"
git config --global user.email "david@prepera.io"
git config --global credential.helper 'cache --timeout=86400'
git config --global http.version HTTP/1.1
git config --global http.postBuffer 524288000
git config pull.rebase false
git config --global core.editor "vim"

# Installation d'un fond d'écran animé via Flatpak
echo "Installation d'un fond d'écran animé avec Flatpak..."
flatpak install flathub io.github.jeffshee.Hidamari -y

# Étape 11 : Configuration de CommitGPT
echo "Configuration de CommitGPT..."
mkdir -p ~/.config/commitgpt
echo 'api_key = "YOUR_OPENAI_API_KEY"' > ~/.config/commitgpt/config.toml
git add -A; commitgpt --suggestions 7 --max-tokens 100 ""

echo "Installation et configuration terminées avec succès ! Redémarrage recommandé pour appliquer tous les changements."

