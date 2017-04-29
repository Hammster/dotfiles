# Hammsters dotfiles

Hello there stranger, these are my dotfiles. I need a very flexible dotfile since
i use pretty much all OS for developing and testing.

My dotfiles support:

-   Windows 10, Windows 8
-   Ubuntu (Tested with Xenial)
-   OSX


--------------------------------------------------------------------------------

## Install

### Windows:

Before you clone the repo you should have two dependencies installed:

1.  [chocolatey](https://chocolatey.org/)
2.  [babun](http://babun.github.io/), when chocolatey is installed just run
    `choco install -y babun`
3.  clone the repo to your `~/` folder via bubun/cygwin
4.  Run sh `sh ~/dotfiles/install.sh`
    -   This will set up aliases and backup previous files in `~/dotfiles-old`
    -   Note: Your dotfiles from `%USERPROFILE\*` will be added to `~/dotfiles-old`


### Ubuntu/OSX

Before you clone the repo you should have two dependencies installed:

1.  Install zsh
    -   Ubuntu: `apt install zsh`
    -   OSX: `brew install zsh`
2.  Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
3.  Clone the repo into your home folder.
4.  Run `sh ~/dotfiles/install.sh`
    -   This will set up aliases and backup previous files in `~/dotfiles-old`


--------------------------------------------------------------------------------

## Note

Feel free to use and customize the dotfiles to your demand, just make sure that
you change the `_analyticsUserId` value in atom/config.cson so that the folks
over at atom are not irritated ;)
