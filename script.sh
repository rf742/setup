echo '---------------------------------------------'
echo '-- Welcome to my post installation script! --' 
echo '-- - - - - - - - - - - - - - - - - - - - - --'
echo '-- author: rf742  --  license: GPLv3      --'
echo '-- - - - - - - - - - - - - - - - - - - - - --'
echo '---------------------------------------------'

# I am setting this up with debian 11.0.0 in mind
 
# apt update
# apt upgrade
# apt install doas
# echo 'permit me as root' > /etc/doas.conf
## now logout and log back in as user


read -p 'Have you already set up doas? If not read the file above'
doas apt install git groff ranger zathura zathura-djvu wget curl neofetch asunder cmus dwm xorg terminator feh firefox-esr zsh vim-gtk -y
echo 'exec dwm' > ~/.xinitrc


###########################################
#### vim with ultisnip and snippets #######
###########################################

# installation of pathogen plugin manager
mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim;
# move to the bundle dir to install plugins
cd ~/.vim/bundle;
# install the snippet engine
git clone https://github.com/SirVer/ultisnips.git;
# install the snippets themselves
git clone https://github.com/honza/vim-snippets.git;

########################
## defaulting to zsh ###
########################
cd;
chsh -s `which zsh`;


# set up wallpaper
mkdir ~/wp
echo 'feh --bg-max --randomize ~/wp/* &' >> ~/.xinitrc


echo 'Done.'
echo 'Dotfiles still need to be installed. (run symlink.sh)'
echo 'Do this prior to logging back in so that zsh is set up when it loads.'
echo 'Place any wallpapers in ~/wp to have feh randomly load one upon login.'
