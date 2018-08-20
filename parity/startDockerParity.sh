#!/usr/bin/env bash
ocker run -v /home/steve/mew/MewLabs/eth-dev-kit/parity/config/:/config -ti -p 8180:8180 -p 8545:8545 -p 8546:8546 -p 30303:30303 -p 30303:30303/udp parity/parity:v1.11.8 --chain /config/parity.json --ui-interface all --jsonrpc-interface all
#docker run -d -p 8545:8545 -p 443:443 --link LC:www yajo/https-proxy
