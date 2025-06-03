#!/bin/bash

SCRIPT_PATH="$HOME/screen-spy/capture.sh"
LOG_DIR="$HOME/screenshots"

mkdir -p "$LOG_DIR"

# Asegura permisos
chmod +x "$SCRIPT_PATH"

# Añadir al crontab
( crontab -l 2>/dev/null; echo "*/5 * * * * DISPLAY=:0 XAUTHORITY=$HOME/.Xauthority $SCRIPT_PATH" ) | crontab -

echo "Installed! Captures will be saved every 5 minutes in $LOG_DIR"
