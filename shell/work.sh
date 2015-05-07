#!/usr/bin/env bash

export ANYCONNECT_VERSION="3.1.05178"
# export ANYCONNECT_INSTALLER="https://wiki.umms.med.umich.edu/download/attachments/118338806/anyconnect-macosx-i386-$ANYCONNECT_VERSION-k9.dmg"

dockutil --add "~/Google Drive/PSESD/Bookmarks/Servers" --section others --view list --sort name --display stack

if [ ! -d "/Applications/Cisco" ]; then
	# if [ ! -f anyconnect.dmg ]; then
 	# 	wget -O"anyconnect.dmg" $ANYCONNECT_INSTALLER
	# fi

	hdiutil mount apps/anyconnect.dmg
	sudo installer -pkg "/Volumes/AnyConnect VPN $ANYCONNECT_VERSION/vpn.pkg" -target /
	hdiutil detach -force "/Volumes/AnyConnect VPN $ANYCONNECT_VERSION"

fi

for app in "Activity Monitor" "Dock" "Finder" "SystemUIServer"; do
  killall "${app}" > /dev/null 2>&1
done