#!/bin/bash
# ------------------------------------------------------------------------------
# Install Script
#
# Author: @Hammster Hans Koch <mail@hans-koch.me>
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
DOTFILES_WINDOWS_HOME="/c/Users/$USERNAME"
DOTFILES_WINDOWS_HOME_CYGWIN="$DOTFILES_WINDOWS_HOME/.babun/cygwin/home/$USERNAME"
DOTFILE_CURRENT_OS="n/a";
case "$(uname -s)" in
  Darwin)
    DOTFILE_CURRENT_OS="OSX"
  ;;

  Linux)
    if [ "$(lsb_release -is)" = "Ubuntu" ]; then
      DOTFILE_CURRENT_OS="Linux"
    else
      echo 'I only use Ubuntu sry stranger'
      exit 2
    fi
  ;;

  CYGWIN*|MINGW32*|MSYS*)
    DOTFILE_CURRENT_OS="Windows"
    DOTFILES_WINDOWS_HOME="%USERPROFILE%"
    DOTFILES_WINDOWS_HOME_CYGWIN="%USERPROFILE%/.babun/cygwin/home/%username%/"
  ;;
esac

# ------------------------------------------------------------------------------
# Includes
# ------------------------------------------------------------------------------

# core

. ~/dotfiles/util

# modules

. ~/dotfiles/zsh/init
. ~/dotfiles/atom/init
