if [ ! -f /usr/bin/composer ]; then
	curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
fi

if [ ! -d ~/.composer/vendor/fxp ]; then
	/usr/bin/composer global require "fxp/composer-asset-plugin:1.0.0"
fi