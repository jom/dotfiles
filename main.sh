#!/usr/bin/env bash

# Set up brew
./brew.sh

# Set up brew binaries
./brew_binaries.sh

# Set up brew casks
./brew_casks.sh

# Non-mackup dotfiles
./dotfiles.sh

# Mackup stuff
./mackup.sh

# PHP stuff
./dev_php.sh

# Run OS X settings
./osx.sh