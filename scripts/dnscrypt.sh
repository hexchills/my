#!/bin/bash

# copy configs and run dnscrypt-proxy

sudo cp ../.config/dnscrypt-proxy/* /etc/dnscrypt-proxy/
sudo service dnscrypt-proxy start --now
sudo systemctl restart systemd-resolved.service && sudo service NetworkManager restart
