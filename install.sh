#!/bin/bash
# ------------------------------------------------------------------------------
# Install Script
#
# Author: @Hammster Hans Koch <mail@hans-koch.me>
# ------------------------------------------------------------------------------

echo "
--------------------------------------------------------------------------------
   __ __                     __                ___       __  ____ __
  / // /__ ___ _  __ _  ___ / /____ _______   / _ \___  / /_/ _(_) /__ ___
 / _  / _ \`/  ' \/  ' \(_-</ __/ -_) __(_-<  / // / _ \/ __/ _/ / / -_|_-<
/_//_/\_,_/_/_/_/_/_/_/___/\__/\__/_/ /___/ /____/\___/\__/_//_/_/\__/___/
                                                              - 0.0.1-alpha -
"

# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------

DOTFILE_CURRENT_OS="n/a";
case "$(uname -s)" in
  Darwin)
    DOTFILE_CURRENT_OS="OSX"
  ;;

  Linux)
    if [ "$(lsb_release -is)" = "Ubuntu" ]; then
      DOTFILE_CURRENT_OS="Linux"
    else
      echo 'I only use Ubuntu sry, stranger'
      exit 2
    fi
  ;;

  CYGWIN*|MINGW32*|MSYS*)
    DOTFILE_CURRENT_OS="Windows"
    DOTFILES_WINDOWS_HOME="/c/Users/$USERNAME"
    DOTFILES_WINDOWS_HOME_CYGWIN="$DOTFILES_WINDOWS_HOME/.babun/cygwin/home/$USERNAME"
  ;;
esac

# ------------------------------------------------------------------------------
# Includes
# ------------------------------------------------------------------------------

# core

if [ $DOTFILE_CURRENT_OS = "Windows" ]; then
  . ~/dotfiles/win-dependencies
fi
. ~/dotfiles/util

# modules

. ~/dotfiles/zsh/init
. ~/dotfiles/atom/init
