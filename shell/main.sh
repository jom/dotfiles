#!/usr/bin/env bash

export SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Set up brew
$SCRIPT_DIR/brew.sh

# Set up brew binaries
$SCRIPT_DIR/brew_binaries.sh

# Set up brew casks
$SCRIPT_DIR/brew_casks.sh

# Non-mackup dotfiles
$SCRIPT_DIR/dotfiles.sh

# Mackup stuff
$SCRIPT_DIR/mackup.sh

# PHP stuff
$SCRIPT_DIR/dev_php.sh

# Run OS X settings
$SCRIPT_DIR/osx.sh

read -p "Is this a work computer? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
	$SCRIPT_DIR/work.sh
fi

echo "Done provisioning!"