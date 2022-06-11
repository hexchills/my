#!/bin/sh
sudo apt remove gnome-calendar cheese gnome-contacts gnome-todo gnome-maps libreoffice four-in-a-row im-config malcontent* lightsoff polari 
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo apt update -y && sudo apt upgrade -y && flatpak update

flatpak install flathub com.github.johnfactotum.Foliate -y
flatpak install flathub com.github.gi_lom.dialect -y
flatpak install flathub io.freetubeapp.FreeTube -y
flatpak install flathub com.github.Eloston.UngoogledChromium -y
flatpak install com.vscodium.codium -y
flatpak install com.github.tchx84.Flatseal -y
flatpak install flathub io.gitlab.librewolf-community -y
flatpak install flathub org.gnome.Evince -y

sudo apt install emacs ripgrep ngrep sway ark ffmpeg age chkrootkit drawing rkhunter fzf git fd-find ncdu adb gnome-feeds openjdk-17-jdk docker celluloid mpv aria2 lynx uget vim gimp firefox-esr qbittorrent zsh dino-im wireguard bat neofetch neovim qemu okular podman feh htop ruby golang tor nmap gparted keepassxc pwgen wireshark bleachbit ftp weechat aircrack-ng

sudo apt update -y && sudo apt autoremove -y && sudo apt upgrade -y

sh -c "$(curl -fsSL https://starship.rs/install.sh)"
go get -u github.com/cheat/cheat/cmd/cheat

podman pull docker.io/library/ubuntu
podman pull docker.io/library/fedora
podman pull docker.io/library/alpine

mkdir ~/.config/wezterm
mv .config/wezterm.lua ~/.config/wezterm

mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim

sudo apt update -y && sudo apt upgrade -y && flatpak update

echo "zsh" >> ~/.bashrc
curl https://getcroc.schollz.com | bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
