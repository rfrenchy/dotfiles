mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew

brew install bat -- fancy cat
brew install bottom -- fancy system monitor
brew install git
brew install gotags

brew install jq -- json helper
brew install lolcat 
brew install openvpn
brew install pipx -- python package management 

brew install postgresql@16
brew install python@3.11

brew install virtualenv -- depency of: https://github.com/ms-jpq/chadtree (nvim plugin)

brew install eza -- modern ls
brew install inotify-tools
brew install imagemagick

brew install tmux -- mUlTiPlExEr
brew install tpm -- tmux plugin manager

-- *** can't install casks on linux so switch to apt ***
apt install alacritty --brew install --cask alacritty
