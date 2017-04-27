# Hammsters dotfiles

Hello there stranger, these are my dotfiles. I need a very flexible dotfile since
i use pretty much all OS for developing and testing.

My dotfiles support:

-   Windows 10, Windows 8
-   Ubuntu (Tested with Xenial)
-   OSX

I also include some initial setup files for each system, so its not just
configuration but also setting up the machines.

Windows:

  `install.cmd` installs chocolatey and babun, which are essential for this
  script to work in the first place. Once the dependencies are installed
  `install.sh` is called.

Ubuntu/OSX

  `install.sh` will set up aliases and backup previous files in `~/dotfiles-old`
  and call each component for example `/atom` will install the atom editor and
  download the related plugins via `apm`. 
