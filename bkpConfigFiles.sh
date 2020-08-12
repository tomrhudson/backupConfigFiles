#!/bin/bash

# A bash script to backup important files on my Mac
# Tom Hudson
# to make this file executable, change the permissions on this file in Terminal by:
# chmod +x bkpConfigFiles.sh
clear

backupFolder=~/Documents/aaaFiles/
backupSSHFolder=${backupFolder}SSH
currentDate=$(date +"%d-%b-%Y at %H:%M:%S")

echo $backupSSHFolder

msg="starting backup of"
complete=" have been successfully copied to "

echo "Setting root backup folder to" $backupFolder


# SSH directory
# location: ~/.ssh/
#   config files
echo $msg " ssh files"
cp -R ~/.ssh/ $backupSSHFolder
echo "ssh files " $complete " " $backupFolder

# bash Profile file
# location: ~/.zshrc
# this file contains all of my aliases, etc.
echo $msg "profile file"
cp ~/.zshrc $backupFolder
echo "profile file " $complete " " $backupFolder

# Cleaning up...
# echo "Cleaning up..."
# rm .DS_Store

echo
echo "backup complete!"
echo

echo $currentDate" backup completed" >> ${backupFolder}log.txt
