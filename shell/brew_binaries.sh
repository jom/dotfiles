binaries=(
	graphicsmagick	# Image manipulation library
	rename			    # CLI: rename files
	trash			      # CLI: send files to trash
	tree			      # CLI: view directory as tree
	ack				      # CLI: better grep
	hub				      # GitHub helpers for git
	git				      # Version control
	dockutil        # Manage OS X dock
	autoconf        # Autotools
	automake        # Autotools
	node            # Node.js
	duti            # Set default applications
	bchunk          # disk format stuff
	jq              # JSON parser for bash
	wget
	mackup
	mysql-utilities
	dnsmasq
	rsync
	unison
	php@7.3
	composer
	wp-cli
	docker
	docker-compose
	docker-machine
	docker-machine-driver-xhyve
	xhyve
	yarn
	mas
	ddev
)

echo "Installing brew binaries..."
brew install ${binaries[@]}

# if [ ! -f /usr/local/bin/dinghy ]; then
# 	brew install https://github.com/codekitchen/dinghy/raw/latest/dinghy.rb
# fi

brew cleanup
