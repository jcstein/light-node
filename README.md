# light-node

This repository will help you run a [Celestia](https://celestia.org)
[light node](https://github.com/celestiaorg/celestia-node) using
Gitpod.

## Initializing your node

In order to start our node, we'll first need to initialize a new node
store and key to run the node with. This way if we want to run a rollup
on top of this node, we can fund it with TIA and keep the account safe.

Create a new workspace on [Gitpod](https://gitpod.io) with this repository
and run this command from the home directory of the workspace (which will
be `/workspace/light-node` by default):

```bash
make init
```

Your keys and data will be stored in the
`celestia-pwd/.celestia-light-arabica-9` directory ✨

## Starting your node

Now, we'll start our node using the keys we just created above. If you're
curious about what's going on, check out the [`init.sh`](init.sh)
and [`start.sh`](start.sh) scripts, which are called from the
[`Makefile`](Makefile).

From the project's working directory, run this to start your node:

```bash
make start
```
