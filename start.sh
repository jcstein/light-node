#!/bin/bash

# run the node
docker run -e NODE_TYPE=light -e P2P_NETWORK=blockspacerace -v ./celestia-pwd:/home/celestia ghcr.io/celestiaorg/celestia-node:v0.9.5 celestia light start --core.ip https://rpc-blockspacerace.pops.one --gateway --gateway.addr 127.0.0.1 --gateway.port 26659 --p2p.network blockspacerace