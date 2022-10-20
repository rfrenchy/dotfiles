/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install neovim
brew install go
brew install git

# Vim - Plugin Manager
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vim - Nerd Tree
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
