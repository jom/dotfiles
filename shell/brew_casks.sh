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
    Caskroom/cask/sublime-text
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
    # carbon-copy-cloner                  # carbon-copy-cloner
    slack
    Caskroom/cask/tunnelblick
    wp-cli
    homebrew/php/composer
    Caskroom/versions/docker-beta
    Caskroom/cask/ginbox
)

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

echo "Open Google Drive..."
open "/Applications/Google Drive.app"
