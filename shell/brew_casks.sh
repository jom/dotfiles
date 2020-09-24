# Install homebrew cask
# brew install caskroom/cask/brew-cask

# Tap custom casks
# brew tap casidiablo/homebrew-custom

# Tap development versions
# brew tap caskroom/versions

apps=(
    # atom                                # Text Editor
    google-chrome			            # Chrome, that Google browser
    firefox                             # firefox
    transmit                            # File transmission
    # appcleaner				            # Delete apps thoroughly
    # spotify                             # Music streaming
    sublime-text
    google-backup-and-sync			            # Google Drive
    # bettertouchtool                     # Hotkeys and trackpad
    # flash-player                      # Flash player
    # flux                                # Screen management
    #dash                                # documentation
    local
    # skim                                # PDF reader
    # adobe-creative-cloud		        # Adobe
    # rescuetime				            # Keep track of time
    # virtualbox                          # Virtualbox
    #vagrant                             # Vagrant
    sequel-pro                          # MySQL gui
    github                              # Github.app
    # bartender                           # mind the bar
    # microsoft-office                    # shit
    # caffeine                            # stay awake
    # jump-desktop                        # jump-desktop
    # robomongo                           # robomongo
    # carbon-copy-cloner                  # carbon-copy-cloner
    # slack
    # docker-toolbox
    # skype
    # things
    # omnifocus
    doxie
    karabiner-elements
    wordpresscom
    handbrake
    tunnelblick
    # 1password
    zoom
    # micro-snitch
    little-snitch
    sourcetree
    mtmr
    rstudio
    jetbrains-toolbox
    setapp
    whatsapp
)

echo "Installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

echo "Open Google Backup and Sync..."
open "/Applications/Backup and Sync.app"
