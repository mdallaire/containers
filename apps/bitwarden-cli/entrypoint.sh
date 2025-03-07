#!/usr/bin/env bash

set -e

# Define the data file path
BW_DATA_FILE="/root/.config/Bitwarden CLI/data.json"

# Configure server
bw config server ${BW_HOST}

# Check if data.json exists (indicating user is already logged in)
if [ ! -f "$BW_DATA_FILE" ]; then
    echo "Bitwarden data file not found. Logging in..."
    bw login --apikey --raw
    export BW_SESSION=$(bw unlock --passwordenv BW_PASSWORD --raw)
else
    echo "Bitwarden data file found. Unlocking..."
    export BW_SESSION=$(bw unlock --passwordenv BW_PASSWORD --raw)
fi

# Verify unlock status
bw unlock --check

echo 'Running `bw server` on port 8087'
bw serve --hostname 0.0.0.0 #--disable-origin-protection
