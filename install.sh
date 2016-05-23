#!/bin/bash
# Make sure you have wget and unzip installed!

# Change to Home directory
cd ~

# Make mod directory
mkdir ~/.minetest/mods/mtddos/

# Set variables
MODDIR="~/.minetest/mods/mtddos/"

# Fetch mod
echo "Fetching Mod: MTDDOS"
wget https://github.com/hyperdriveguy/mtddos/archive/master.zip

# Unzip mod
echo "Unzipping: MTDDOS"
unzip master.zip $MODDIR

# Change to mod directory
cd $MODDIR

# Make scripts executable
echo "Making scripts executable"
chmod 777 server_restart
chmod 777 server_shutdown

# Add scripts to /etc/sudoers.d
echo "You need to provide your password"
sudo echo "neohexane ALL=(ALL) NOPASSWD : ~/.minetest/mods/mtddos/server_restart" >> /etc/sudoers.d/mtddos
sudo echo "neohexane ALL=(ALL) NOPASSWD : ~/.minetest/mods/mtddos/server_shutdown" >> /etc/sudoers.d/mtddos

# Cleanup
echo "Cleaning up..."
rm install.sh
rm README.md
rm ~/master.zip

# Delete self
cd ~/Downloads
rm install.sh

echo "Done!"
