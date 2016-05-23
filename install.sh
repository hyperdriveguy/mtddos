#!/bin/bash

# Make scripts executable
echo "Making scripts executable"
chmod 777 server_restart
chmod 777 server_shutdown

# Add scripts to /etc/sudoers.d
echo "You need to be root for this!"
sudo echo "neohexane ALL=(ALL) NOPASSWD : ~/.minetest/mods/mtddos/server_restart" >> /etc/sudoers.d/mtddos
sudo echo "neohexane ALL=(ALL) NOPASSWD : ~/.minetest/mods/mtddos/server_shutdown" >> /etc/sudoers.d/mtddos

echo "Done!"
