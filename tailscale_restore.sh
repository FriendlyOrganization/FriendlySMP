#!/bin/bash

echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null

# Ensure the script is run with sudo
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root"
    exit 1
fi

# Define the source and destination directories
SOURCE_DIR="/workspaces/FriendlySMP/tailscale"
DEST_DIR="/var/lib/tailscale"

# Check if the source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory $SOURCE_DIR does not exist!"
    exit 1
fi

# Delete the contents of the destination directory
echo "Deleting the contents of $DEST_DIR..."
rm -rf "$DEST_DIR"/*

# Create the destination directory if it doesn't exist
echo "Creating $DEST_DIR directory if it doesn't exist..."
mkdir -p "$DEST_DIR"

# Copy the contents from the source directory to the destination directory
echo "Copying contents from $SOURCE_DIR to $DEST_DIR..."
cp -r "$SOURCE_DIR"/* "$DEST_DIR/"

echo "Operation completed successfully."