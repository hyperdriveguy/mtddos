#!/bin/bash
# Make sure you have wget and unzip installed!

# Fetch mod
wget https://github.com/hyperdriveguy/mtddos/archive/master.zip

# Unzip mod
unzip master.zip ~/.minetest/mods/mtddos

# Change to mod directory
cd ~/.minetest/mods/mtddos

# Make scripts executable
chmod 777 server_restart
chmod 777 server_shutdown

# Add scripts to /etc/sudoers.d
sudo printf "neohexane ALL=(ALL) NOPASSWD : \n" >> /etc/sudoers.d/mtddos
