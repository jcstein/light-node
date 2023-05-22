#!/bin/bash

# The script must be run with super user privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

# Define the service unit file path
SERVICE_FILE_PATH="/etc/systemd/system/celestia.service"

# Define the Docker command
DOCKER_CMD="docker run -e NODE_TYPE=light -e P2P_NETWORK=blockspacerace -v /path/to/celestia-pwd:/home/celestia ghcr.io/celestiaorg/celestia-node:v0.9.5 celestia light start --core.ip https://rpc-blockspacerace.pops.one --gateway --gateway.addr 127.0.0.1 --gateway.port 26659 --p2p.network blockspacerace"

# Create the service file
echo "[Unit]
Description=Celestia Node
After=docker.service
Requires=docker.service

[Service]
Restart=always
ExecStart=/usr/bin/${DOCKER_CMD}
ExecStop=/usr/bin/docker stop -t 2 celestia
ExecStopPost=/usr/bin/docker rm -f celestia

[Install]
WantedBy=multi-user.target" > ${SERVICE_FILE_PATH}

# Reload systemd daemon
systemctl daemon-reload

# Enable the service
systemctl enable celestia

# Start the service
systemctl start celestia
