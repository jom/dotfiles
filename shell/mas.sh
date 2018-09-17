#!/usr/bin/env bash

apps=(
	866773894 # Quiver
	904280696 # Things3
	1238865376 # Shutterfly
	692867256 # Simplenote
	409183694 # Keynote
	453114608 # JSON Helper
	414030210 # LimeChat
	# 682658836 # GarageBand
	488536386 # Location Helper
	668208984 # GIPHY CAPTURE
	1082170746 # Aware
	1262957439 # Textual 7
	# 880001334 # Reeder
	497799835 # Xcode
	1147396723 # WhatsApp
	409201541 # Pages
	# 418903397 # Blue Planet
	409203825 # Numbers
	408981434 # iMovie
	427475982 # BreakTime
	824183456 # Affinity Photo
	472226235 # LanScan
	803453959 # Slack
	488764545 # The Clock
	568494494 # Pocket
)

echo "Installing MAS apps..."
mas install ${apps[@]}