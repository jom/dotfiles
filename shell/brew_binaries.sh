binaries=(
	ack
	automake
	bandwhich
	bash
	bchunk
	brew-php-switcher
	composer
	coreutils
	drud/ddev/ddev
	dnsmasq
	docker
	docker-compose
	docker-machine-driver-xhyve
	dockutil
	duti
	exiftool
	findutils
	git
	gnu-sed
	graphicsmagick
	grep
	hub
	imagemagick
	jo
	jq
	mackup
	mas-cli/tap/mas
	mtr
	mysql
	mysql-utilities
	mysql@5.6
	node@10
	php
	php@7.2
	php@7.3
	pkg-config
	protobuf@3.7
	python
	r
	rename
	rsync
	ruby
	trash
	tree
	unison
	wget
	wp-cli
	xhyve
	yarn
	zsh
	zsh-completions
)

echo "Installing brew binaries..."
brew install ${binaries[@]}

# if [ ! -f /usr/local/bin/dinghy ]; then
# 	brew install https://github.com/codekitchen/dinghy/raw/latest/dinghy.rb
# fi

brew cleanup
