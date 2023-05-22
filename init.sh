# start docker
dockerd

# make PWD for keys and data
cd $GITPOD_REPO_ROOT
mkdir celestia-pwd

# set permissions
sudo chown 10001:10001 ./celestia-pwd

# create keys
nohup docker run -e NODE_TYPE=light -e P2P_NETWORK=blockspacerace -v ./celestia-pwd:/home/celestia ghcr.io/celestiaorg/celestia-node:v0.9.5 celestia light init --p2p.network blockspacerace