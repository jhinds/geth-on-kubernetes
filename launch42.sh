#!/bin/bash

# Run this once, but it does not hurt to run it every time
geth --datadir ~/.ethereum/net42 init genesis42.json
# Run this every time you start your Geth "42", and add flags here as you need
# added console to the end to access the console
# geth --datadir ~/.ethereum/net42 --networkid 42 console

geth --datadir ~/.ethereum/net42 \
        --networkid 42 \
        --rpc \
        --rpcport 8545 \
        --rpcaddr 0.0.0.0 \
        --rpccorsdomain "*" \
        --rpcapi "eth,net,web3,debug" console