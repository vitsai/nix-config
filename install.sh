#!/bin/bash
# intended for fedora workstation
# because real adults don't have time to play with arch 24/7
# preinstalled: python, evince, xrandr, setxkbmap, git, curl, wget

username='vitsai'
home_dir="/home/${username}"

if [ -z "$1" ]; then
  # bleeding edge
  dnf -y update

  # enable RPM fusion
  dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
  dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

  # install utilities
  dnf install chromium i3 xmonad feh rxvt-unicode dmenu snapd
  dnf install zsh vim emacs tmux htop util-linux-user
  dnf install haskell-platform
  dnf install sl cowsay lolcat fortune

  chsh -s /bin/zsh $username
  hostname kumquat

  # move static dotfiles
  rsync -aP ./dotfiles/.[^.]* $home_dir
  echo $"#\!/bin/sh\nfeh --no-fehbg --bg-center --image-bg 'black' '${home_dir}/.img/frey.jpg'" > ${home_dir}/.fehbg

  # git repos
  git clone https://github.com/preservim/nerdtree.git ${home_dir}/.vim/pack/vendor/start/nerdtree
  vim -u NONE -c "helptags ${home_dir}/.vim/pack/vendor/start/nerdtree/doc" -c q
  
  git clone https://github.com/olivierverdier/zsh-git-prompt.git ${home_dir}/.zsh-git-prompt
  cd ${home_dir}/.zsh-git-prompt
  stack setup
  stack build && stack install

  # rust
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

  # spotify
  # dnf install lpf-spotify-client
  # lpf update spotify-client

  echo "Please log out and back in again before running with an argument."
else
  # enable classic snap support
  ln -s /var/lib/snapd/snap /snap
  # snap packages
  snap install slack --classic
  snap install spotify
  snap install --beta fasd
  echo 'eval "$(fasd --init auto)"' >> ${home_dir}/.zshrc
fi
