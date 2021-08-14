echo '---------------------------------------------'
echo '-- Welcome to my post installation script! --' 
echo '-- - - - - - - - - - - - - - - - - - - - - --'
echo '-- author: rf742  --  license: GPLv3      --'
echo '-- - - - - - - - - - - - - - - - - - - - - --'
echo '---------------------------------------------'

## This chunk of the script is here to verify which os is being used 
#case "$OSTYPE" in
#	"darwin"* ) os=mac;;
#	"linux-gnu"* ) os=linux;;
#	"freeBSD" ) os=bsd;;
#	* ) echo 'cant detect os, exiting. '; exit;;
#esac
###########################################

 
sudo apt update
sudo apt upgrade
sudo apt install groff ranger zathura zathura-djvu wget curl neofetch asunder cmus openbox xorg terminator feh firefox-esr fish vim-gtk -y
echo 'exec openbox' > ~/.xinitrc


read -p "Are we installing emacs(y/n)?" bloat
case "$bloat" in
	y|Y ) echo "proceeding..."; 
 	      	sudo apt install emacs-nox -y;
		git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d;
		~/.emacs.d/bin/doom install;;
	n|N ) echo "good choice.";;
	* ) echo "invalid, not installing emacs.";;
esac

###########################################
#### vim with ultisnip and snippets #######
###########################################


vimmsg='vim with python support installed.';
sudo apt install vim-gtk -y;
echo "$vimmsg"
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
chsh -s `which fish`;


# Installing Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;

# set up wallpaper
mkdir ~/wp
echo 'feh --bg-max --randomize ~/wp/* &' >> ~/.xinitrc


echo 'Done'
echo 'Dotfiles still need to be installed.'
echo 'logout and back in to change to the fish shell'
echo 'place any wallpapers in ~/wp to have feh randomly load one upon login'
