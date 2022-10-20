/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install neovim
brew install go
brew install git

# Vim - Plugin Manager
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vim - Nerd Tree
git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree

# Vim - Toast Color Theme
mkdir -p ~/.vim/colors
curl -o ~/.vim/colors/toast.vim https://raw.githubusercontent.com/jsit/toast.vim/master/colors/toast.vim

# Vim - Go
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
