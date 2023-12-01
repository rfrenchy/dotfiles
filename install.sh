mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

brew install bat -- fancy cat
brew install bottom -- fancy sys info
brew install git
brew install gotags

brew install jq -- json helper
brew install lolcat 
brew install openvpn
brew install pipx -- python package management 

brew install postgresql@16
brew install python@3.11
brew install tmux -- mUlTiPlExEr
brew install virtualenv -- depency of: https://github.com/ms-jpq/chadtree (nvim plugin)

brew install tpm -- tmux plugin manager

-- can't install casks on linux
--brew install --cask alacritty
