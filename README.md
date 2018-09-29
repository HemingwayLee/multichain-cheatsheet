# Commands to build and run this Dockerfile
```
docker build -t my_multichain .
docker run -it --rm -p 7435:7435 -p 7434:7434 my_multichain
```

# Get started
Create a chain
```
multichain-util create chain1
```

Change the default port number by modifying `~/.multichain/chain1/params.dat`
```
default-network-port = 7435
default-rpc-port = 7434
```

Allow access by modifying `~/.multichain/multichain.conf`
```
rpcallowip=0.0.0.0/0
rpcport=7434
```

Run a chain
```
multichaind chain1 -daemon
```

The `rpcuser` and `rpcpassword` will be generated automatically in `~/.multichain/chain1/multichain.conf`, for example:
```
rpcuser=multichainrpc
rpcpassword=j3536YzAeJMXRZXLkt94bqmeWYWaKGNjETtDwAN2w6T
```

Check information by `multichain-cli`
```
multichain-cli chain1 getinfo
```

Send JSON RPC to the multichain


Restart a chain
```
multichain-cli chain1 stop
multichaind chain1 -daemon
```

Debug log is in `/root/.multichain/.cli_history/chain1.log`

# ref

https://www.multichain.com/download-install/

https://www.multichain.com/getting-started/

https://www.multichain.com/developers/json-rpc-api/

https://en.bitcoin.it/wiki/API_reference_(JSON-RPC)

