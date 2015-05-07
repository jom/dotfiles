#!/usr/bin/env bash

export GOOGLE_DRIVE_MACKUP_DIR="Google Drive/Mackup"

if [ ! -d .mackup ]; then
	cd ~

	while [ ! -d "$GOOGLE_DRIVE_MACKUP_DIR" ]; do
		echo "Waiting for Google Drive Mackup folder ($GOOGLE_DRIVE_MACKUP_DIR)..."
		sleep 60
	done

	FILECOUNT=$(find "$GOOGLE_DRIVE_MACKUP_DIR" -type f | wc -l)
	FILECOUNT_CLEAN=$(echo "$FILECOUNT" | tr -d '[[:space:]]')

	while [ $FILECOUNT_CLEAN -lt 500 ]; do
		echo "Waiting for Google Drive Mackup files A..."
		sleep 10
		FILECOUNT=$(find "$GOOGLE_DRIVE_MACKUP_DIR" -type f | wc -l)
		FILECOUNT_CLEAN=$(echo "$FILECOUNT" | tr -d '[[:space:]]')
	done

	/usr/local/bin/mackup restore
fi