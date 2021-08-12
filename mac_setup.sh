
echo '---------------------------------------------'
echo '-- Welcome to my post installation script! --' 
echo '-- - - - - - - - - - - - - - - - - - - - - --'
echo '-- author: rf742  --  license: GPLv3      --'
echo '-- - - - - - - - - - - - - - - - - - - - - --'
echo '---------------------------------------------'

echo "installing homebrew"	
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install groff wget neofetch

read -p "Are we installing emacs(y/n)?" bloat
case "$bloat" in
	y|Y ) echo "proceeding..."; 
		brew install emacs
		git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d;
		~/.emacs.d/bin/doom install;;
	n|N ) echo "good choice.";;
	* ) echo "invalid, not installing emacs.";;
esac

brew install macvim;
echo 'vim installed'
# installation of pathogen plugin manager
mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim;
# move to the bundle dir to install plugins
cd ~/.vim/bundle;
# install the snippet engine
git clone https://github.com/SirVer/ultisnips.git;
# install the snippets themselves
git clone https://github.com/honza/vim-snippets.git;

# Installing Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
