#!/bin/bash

XAUTH=/tmp/.docker.xauth

# Generate Xauthority file if not present
if [ ! -f $XAUTH ]; then
    touch $XAUTH
    xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
    echo "[+] Xauthority file created at $XAUTH"
fi
 
# Allow local docker X access
xhost +local:docker

# Start docker-compose
echo "[+] Starting forest_localization container..."
docker-compose build
echo "[+] Done starting container..."
echo "[+] Attaching forest_localization container..."
docker-compose up -d