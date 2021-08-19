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

doas apt install git groff ranger zathura zathura-djvu wget curl neofetch asunder cmus i3 xorg terminator feh firefox-esr fish vim-gtk -y
echo 'exec i3' > ~/.xinitrc


#echo 'Installing Doom Emacs'
#sudo apt install emacs-nox -y;
#git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d;
#~/.emacs.d/bin/doom install;

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

echo 'execute pathogen#infect()' > ~/.vimrc
echo 'filetype plugin on' >> ~/.vimrc
echo 'syntax on' >> ~/.vimrc
echo 'set encoding=utf-8' >> ~/.vimrc
echo 'set number relativenumber' >> ~/.vimrc
echo 'set splitbelow splitright' >> ~/.vimrc
echo 'map <leader>q :q<enter>' >> ~/.vimrc
echo 'map <leader>w :w<enter>' >> ~/.vimrc

########################
## defaulting to fish ###
########################
cd;
chsh -s `which fish`;


# Installing Rust
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;

# set up wallpaper
mkdir ~/wp
echo 'feh --bg-max --randomize ~/wp/* &' >> ~/.xinitrc


echo 'Done'
echo 'Dotfiles still need to be installed.'
echo 'logout and back in to change to the fish shell'
echo 'place any wallpapers in ~/wp to have feh randomly load one upon login'
