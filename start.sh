#!/bin/bash

# run the node
docker run -e NODE_TYPE=light -e P2P_NETWORK=arabica -v ./celestia-pwd:/home/celestia ghcr.io/celestiaorg/celestia-node:v0.11.0-rc8 celestia light start --core.ip consensus-full-arabica-9.celestia-arabica.com --p2p.network arabica