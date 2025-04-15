#!/bin/bash

sudo apt update

set -e  # Exit on error
set -o pipefail  # Catch errors in pipes

PLAYIT_BIN=/workspaces/FriendlySMP/playit

# Set up environment variables
sudo ln -sf /usr/share/zoneinfo/Asia/Kolkata /etc/localtime

### Install Tailscale at the default location ###
if [ ! -d "/var/lib/tailscale" ]; then
    echo "🔹 Installing Tailscale..."
    curl -fsSL https://tailscale.com/install.sh | sh
else
    echo "✅ Tailscale already installed."
fi

# Ensure tailscaled can run from the default location
TAILSCALE_EXEC="/usr/sbin/tailscaled"

sudo tailscaled > /workspaces/FriendlySMP/logs/tailscaled.log 2>&1 &
sleep 3
sudo tailscale up >> /workspaces/FriendlySMP/logs/tailscaled.log 2>&1



sudo pkill tailscaled


sudo bash /workspaces/FriendlySMP/tailscale_restore.sh


sudo iptables -A INPUT -p udp --dport 41641 -j ACCEPT

sudo iptables -A INPUT -i tailscale0 -j ACCEPT


echo "Updating ~/.bashrc with custom settings..."


cat <<EOF >> ~/.bashrc



export TZ="Asia/Kolkata"


alias setup="bash /workspaces/FriendlySMP/setup.sh"

alias start="bash /workspaces/FriendlySMP/start.sh"

alias shutdown="bash /workspaces/FriendlySMP/shutdown.sh"

alias sync="bash /workspaces/FriendlySMP/sync.sh"

alias kill="bash /workspaces/FriendlySMP/kill.sh"

alias tailscale_restore="bash /workspaces/FriendlySMP/tailscale_restore.sh"


shopt -s cdspell


export HISTCONTROL=ignoredups:erasedups

export HISTSIZE=10000

export HISTFILESIZE=5000

EOF


# Apply changes immediately

source ~/.bashrc


echo "~/.bashrc updated successfully!"


