#!/bin/sh

sudo dnf remove NetworkManager-config-connectivity-fedora firefox cheese gnome-maps gnome-contacts gnome-weather cups ;
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y ;
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo ;

sudo dnf update -y && flatpak update ;

flatpak install flathub com.github.gi_lom.dialect -y
flatpak install flathub io.freetubeapp.FreeTube -y
flatpak install flathub com.github.Eloston.UngoogledChromium -y
flatpak install com.vscodium.codium -y
flatpak install com.github.tchx84.Flatseal -y
flatpak install flathub io.gitlab.librewolf-community -y
flatpak install flathub fr.romainvigier.MetadataCleaner -y
flatpak install flathub com.github.micahflee.torbrowser-launcher -y
flatpak install com.system76.Popsicle -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub net.cozic.joplin_desktop -y
flatpak install flathub com.github.ryonakano.pinit -y

sudo dnf install wget2 torsocks intel-opencl xclip qrencode g++ evolution minder cmake lm_sensors-libs zstd zulucrypt qbittorrent flatpak-selinux distrobox rclone python3-devel python3-virtualenv gnome-extensions-app srm megatools fontawesome-fonts yarnpkg nodejs testdisk telegram-desktop  cheat emacs ripgrep file-roller-nautilus ngrep badwolf httpie openssl starship lsd sway rescene ffmpeg age chkrootkit drawing rkhunter fzf git fd-find ncdu android-tools gnome-feeds gtkhash java-11-openjdk-devel docker yaru-gtk4-theme yaru-icon-theme celluloid mpv aria2 foliate lynx speedtest-cli vim gimp icecat zsh dino wireguard-tools bat exa neofetch gnome-tweaks neovim @virtualization okular toolbox podman feh htop ruby go tor nmap claws-mail claws-mail-plugins-pgp claws-mail-plugins-litehtml-viewer gparted keepassxc kleopatra pwgen wireshark bleachbit epiphany telnet gparted ftp dash weechat aircrack-ng ;

pip3 install qrcode ;

podman pull docker.io/library/ubuntu ;
podman pull docker.io/library/fedora ;
podman pull docker.io/library/alpine ;

# WezTerm
mkdir ~/.config/wezterm ;
cp ../.config/wezterm/wezterm.lua ~/.config/wezterm ;

# NeoVim
mkdir ~/.config/nvim ;
cp ../.config/init.vim ~/.config/nvim/ ;

# MPV
cp ../.config/mpv.conf ~/.config/mpv/ ;

# htop
mkdir ~/.config/htop/
cp ../.config/htoprc ~/.config/htop/ ;

sudo dnf update -y && flatpak update ;

# OhMyZsh
echo "zsh" >> ~/.bashrc ;

# Croc
curl https://getcroc.schollz.com | bash ;

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' ;

# OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
