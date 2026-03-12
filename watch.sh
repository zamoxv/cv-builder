#!/bin/bash

set -e

SRC_DIR="src"
BUILD_SCRIPT="./build.sh"

echo "Watching Markdown files in $SRC_DIR ..."

# asegurar que el script exista
if [ ! -f "$BUILD_SCRIPT" ]; then
    echo "Error: build.sh not found"
    exit 1
fi

# asegurar permisos
chmod +x "$BUILD_SCRIPT"

while true
do
    inotifywait -e modify -e create -e delete $SRC_DIR/*.md
    echo "Change detected. Rebuilding CV..."
    bash "$BUILD_SCRIPT"
done