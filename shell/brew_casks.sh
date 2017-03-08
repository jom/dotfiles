# Install homebrew cask
brew install caskroom/cask/brew-cask

# Tap custom casks
brew tap casidiablo/homebrew-custom

# Tap development versions
brew tap caskroom/versions

apps=(
    atom                                # Text Editor
    google-chrome			            # Chrome, that Google browser
    firefox                             # firefox
    transmit                            # File transmission
    appcleaner				            # Delete apps thoroughly
    # spotify                             # Music streaming
    sublime-text
    google-drive			            # Google Drive
    # bettertouchtool                     # Hotkeys and trackpad
    flash-player                               # Flash player
    flux                                # Screen management
    dash                                # documentation
    skim                                # PDF reader
    # adobe-creative-cloud		        # Adobe
    # rescuetime				            # Keep track of time
    virtualbox                          # Virtualbox
    vagrant                             # Vagrant
    sequel-pro                          # MySQL gui
    github-desktop                              # Github.app
    bartender                           # mind the bar
    # microsoft-office                    # shit
    caffeine                            # stay awake
    # jump-desktop                        # jump-desktop
    # robomongo                           # robomongo
    carbon-copy-cloner                  # carbon-copy-cloner
    slack
    wp-cli
    homebrew/php/php71
    homebrew/php/php71-imagick
    homebrew/php/php71-mcrypt
    homebrew/php/php71-xdebug
    homebrew/php/composer
    docker-toolbox
    skype
    things
    omnifocus
    sonos
    doxie
    textwrangler
    wordpresscom
    handbrake
    vagrant
    tunnelblick
    doxie
    1password
    alfred
    zoom
    micro-snitch
    little-snitch
)

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

echo "Open Google Drive..."
open "/Applications/Google Drive.app"
