# Default Commands

Turn off .DS_Store

    $ defaults write com.apple.desktopservices DSDontWriteNetworkStores true

Install xcode

_might not need this anymore_

    $ xcode-select --install

Change screenshots dir

    $ defaults write com.apple.screencapture location /Volumes/Data/tmp/screenshots

Install homebrew and update it

    $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    $ brew update

Install zsh

    $ brew install zsh
    $ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

Install iterm2

    $ brew install iterm2
