#!/bin/sh

# "<--Block HTTP:80-->"

# sudo firewall-cmd --permanent --direct --add-rule ipv4 filter OUTPUT 0 -p tcp -m tcp --dport 80 -j REJECT
# sudo firewall-cmd --permanent --direct --add-rule ipv6 filter OUTPUT 0 -p tcp -m tcp --dport 80 -j REJECT

# sudo firewall-cmd --reload

flatpak remove org.gnome.Maps org.gnome.Contacts org.gnome.Weather
sudo rpm-ostree override remove firefox
sudo rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo wget https://copr.fedorainfracloud.org/coprs/chenxiaolong/ubuntu-fonts/repo/fedora-35/chenxiaolong-ubuntu-fonts-fedora-35.repo -O /etc/yum.repos.d/chenxiaolong-ubuntu-fonts.repo -O /etc/yum.repos.d/chenxiaolong-ubuntu-fonts.repo

curl -LO https://raw.githubusercontent.com/dylanaraps/pfetch/master/pfetch

sudo rpm-ostree upgrade && flatpak update
