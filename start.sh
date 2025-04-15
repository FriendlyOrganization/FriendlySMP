#!/bin/bash

echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null

# Create necessary directories if they don't exist
mkdir -p /workspaces/FriendlySMP/logs

# Set time zone to Indian Standard Time
export TZ="Asia/Kolkata"

# Run sync.sh every 5 minutes in the background
nohup bash -c 'while true; do /workspaces/FriendlySMP/sync.sh >> /workspaces/FriendlySMP/logs/SyncOutput.log 2>&1; sleep 600; done' &

# Start tailscaled in the background and save logs to a file
sudo tailscaled > /workspaces/FriendlySMP/logs/tailscaled.log 2>&1 &

# Wait a few seconds to ensure tailscaled is running
sleep 3

# Bring up Tailscale and append the output to the log file
sudo tailscale up >> /workspaces/FriendlySMP/logs/tailscaled.log 2>&1

echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null

# Start Playit.gg in the background with logging
nohup /workspaces/FriendlySMP/playit > /workspaces/FriendlySMP/logs/playit.log 2>&1 &

# Start the Sync Script in the background
nohup /workspaces/FriendlySMP/sync.sh > /workspaces/FriendlySMP/logs/SyncOutput.log 2>&1 &

# Set up and activate Python virtual environment for Crafty

# setup screen
cd /workspaces/FriendlySMP/crafty
python3 -m venv .venv
source .venv/bin/activate

# Run Crafty in the background and log the output
# nohup python3 /workspaces/FriendlySMP/crafty/main.py &>/dev/null &
python3 /workspaces/FriendlySMP/crafty/main.py
