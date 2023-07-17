#!/bin/bash

# start docker
dockerd

# make PWD for keys and data
cd $GITPOD_REPO_ROOT
mkdir celestia-pwd

# set permissions
sudo chown 10001:10001 ./celestia-pwd

# create keys
docker run -e NODE_TYPE=light -e P2P_NETWORK=arabica -v ./celestia-pwd:/home/celestia ghcr.io/celestiaorg/celestia-node:v0.11.0-rc8 celestia light init --p2p.network arabica