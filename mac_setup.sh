
echo '---------------------------------------------'
echo '-- Welcome to my post installation script! --' 
echo '-- - - - - - - - - - - - - - - - - - - - - --'
echo '-- author: rf742  --  license: GPLv3      --'
echo '-- - - - - - - - - - - - - - - - - - - - - --'
echo '---------------------------------------------'

. ./lib.sh

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
confvim

# Installing Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;
