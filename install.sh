#!/bin/bash
# ------------------------------------------------------------------------------
# Install Script
#
# Author: @Hammster Hans Koch <mail@hans-koch.me>
# ------------------------------------------------------------------------------

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
      echo 'I only use Ubuntu sry stranger'
      exit 2
    fi
  ;;

  CYGWIN*|MINGW32*|MSYS*)
    DOTFILE_CURRENT_OS="Windows"
  ;;
esac

# ------------------------------------------------------------------------------
# Includes
# ------------------------------------------------------------------------------

. ~/dotfiles/atom/init
