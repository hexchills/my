echo $(tput setaf 1)'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'
echo $(tput setaf 1)'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'

echo "$(tput setaf 1)install: veracrypt, wezterm"

echo $(tput setaf 1)'alias pipup="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f
1  | xargs -n1 pip install -U"

alias pipup="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias up="sudo rpm-ostree upgrade && flatpak update && pipup"
alias xmr="curl https://rate.sx/xmr@10d"
alias eth="curl https://rate.sx/eth@10d"
alias btc="curl https://rate.sx/btc@10d"
alias crypto="curl https://rate.sx"
alias ker="ping gnu.org"
alias xb="xmr && btc"
alias ll="lsd -l"
alias img="wezterm imgcat"
alias netw="sudo service NetworkManager restart"
alias kali="podman exec -ti --user unknown --privileged kali /bin/zsh"
alias kali-start="podman start kali kali"
alias kali-stop="podman stop kali kali"
alias poff="kali-stop && poweroff"
alias dns-restart="sudo systemctl restart systemd-resolved.service && sudo service NetworkManager restart"

fcd() {
  cd "$(find -type d | fzf)"
}

open() {
  xdg-open "$(find -type f | fzf)"
}

url() {
  xdg-open "https://$1/"
}
eval "$(starship init zsh)"

<<<---------------- !!! TURN ON DoT !!! ---------------->>> HowToDoT.txt'


echo "zsh" >> ~/.bashrc;
curl https://getcroc.schollz.com | bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
