#!/bin/bash

# Formatos de fecha
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H%M%S")

# Carpeta de destino
DIR="$HOME/screenshots/$DATE"
mkdir -p "$DIR"

# Captura
scrot "$DIR/screenshot-$TIME.png"

# Borrar carpetas de hace más de 7 días
# find "$HOME/screenshots/" -maxdepth 1 -type d -name "20*" -mtime +7 -exec rm -rf {} \;
