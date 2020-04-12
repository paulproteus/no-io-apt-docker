#!/bin/bash
# Download packages for `bb` from Ubuntu 18.04.
mkdir -p cache/apt
mkdir -p cache/apt-lists
# Refresh our sources.list cache & package download cache.
docker run --mount type=bind,source=$PWD/cache/apt,target=/var/cache/apt --mount type=bind,source=$PWD/cache/apt-lists,target=/var/lib/apt/lists -it ubuntu:18.04 /bin/bash -c 'apt-get update && apt-get install -d -y bb && find /var/cache/apt/archives/'
