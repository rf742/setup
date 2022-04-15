#!/usr/bin/env sh

echo '---------------------------------------------'
echo '-- Welcome to my post installation script! --' 
echo '-- - - - - - - - - - - - - - - - - - - - - --'
echo '-- author: rf742  --  license: GPLv3      --'
echo '-- - - - - - - - - - - - - - - - - - - - - --'
echo '---------------------------------------------'

# I am setting this up with alpine 3.14 in mind
. ./lib.sh
# apk add doas
# echo 'permit me as root' > /etc/doas.conf
## now logout and log back in as user

doas setup-xorg-base
doas apk add git groff ranger wget curl neofetch tmux cmus zsh vim lsblk xf86-video-intel dwm dmenu st feh
echo 'exec dwm' > "$HOME/.xinitrc"
doas addgroup me video
doas addgroup me input


###########################################
#### vim with ultisnip and snippets #######
###########################################

confvim


echo 'Done.'
echo 'Dotfiles still need to be installed. (run symlink.sh)'
echo 'You should also edit /etc/shadow as root to modify your user shell from ash to zsh'
echo 'Do this prior to logging back in so that zsh is set up when it loads.'
