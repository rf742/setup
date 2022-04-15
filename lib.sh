confvim () {
echo "Beginning vim configuration"
# installation of pathogen plugin manager
mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -LSso ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim;
# move to the bundle dir to install plugins
cd ~/.vim/bundle;
# install the snippet engine
git clone https://github.com/SirVer/ultisnips.git;
# install the snippets themselves
git clone https://github.com/honza/vim-snippets.git;
echo "Successfully completed vim configuration"
}
