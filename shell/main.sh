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

echo "Is this a work machine? (yes/no)"
read CONTINUE

while [[ $CONTINUE != "no" && $CONTINUE != "yes" ]]; do
	echo "You must enter 'yes' or 'no'."
	echo "Is this a work machine? (yes/no)"
	read CONTINUE
done

if [ $CONTINUE == "yes"]; then
	$SCRIPT_DIR/work.sh
fi

echo "Done provisioning!"