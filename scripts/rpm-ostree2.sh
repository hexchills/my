flatpak install flathub com.github.gi_lom.dialect -y
flatpak install flathub io.freetubeapp.FreeTube -y
flatpak install flathub com.github.Eloston.UngoogledChromium -y
flatpak install com.vscodium.codium -y
flatpak install com.github.tchx84.Flatseal -y
flatpak install flathub io.gitlab.librewolf-community -y

sudo rpm-ostree install ubuntu-family-fonts cheat ripgrep emacs aerc file-roller-nautilus ngrep badwolf httpie openssl starship lsd sway rescene ffmpeg gocryptfs age chkrootkit drawing rkhunter fzf git fd-find ncdu android-tools gnome-feeds gtkhash fontconfig-ubuntu ubuntu-font-gsettings java-11-openjdk-devel docker yaru-gtk4-theme yaru-icon-theme celluloid mpv aria2 foliate torbrowser-launcher lynx uget vim gimp icecat qbittorrent zsh dino wireguard-tools bat exa neofetch gnome-tweaks neovim qemu virt-manager qemu-kvm okular feh htop ruby go tor nmap claws-mail claws-mail-plugins-pgp claws-mail-plugins-litehtml-viewer keepassxc kleopatra pwgen wireshark bleachbit epiphany telnet gparted ftp dash weechat aircrack-ng

podman pull docker.io/library/ubuntu
podman pull docker.io/library/fedora
podman pull docker.io/library/alpine

mkdir ~/.config/wezterm
mv wezterm.lua ~/.config/wezterm

mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim

sudo rpm-ostree upgrade && flatpak update