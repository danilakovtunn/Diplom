#!/bin/bash

if [[ ! -f weed ]]
then
    wget https://github.com/seaweedfs/seaweedfs/releases/download/3.32/linux_amd64_full.tar.gz
    tar xfvz linux_amd64_full.tar.gz
fi

# use -volumeServerAccess=filerProxy if file system and host in different nets
sudo -b ./weed mount -volumeServerAccess=filerProxy -filer=10.100.149.15:8888 -dir=data
