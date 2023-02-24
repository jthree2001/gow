#!/bin/bash
set -e

source /opt/gow/bash-lib/utils.sh

gow_log "Starting Steam with DISPLAY=${DISPLAY}"

# Recursively creating Steam necessary folders (https://github.com/ValveSoftware/steam-for-linux/issues/6492)
mkdir -p "$HOME/.steam/ubuntu12_32/steam-runtime"

# Start Steam. Use `sudo` to make sure that group membership gets reloaded
# /usr/games/steam
exec gamescope --nested-width 1920 --nested-height 1080 -r 90 -f --steam -- steam -gamepadui