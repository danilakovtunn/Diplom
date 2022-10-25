#!/bin/bash

if [[ ! -f geesefs ]]
then
    wget https://github.com/yandex-cloud/geesefs/releases/download/v0.31.7/geesefs-linux-amd64 -O geesefs
    chmod +x geesefs
fi

AWS_ACCESS_KEY_ID=any
AWS_SECRET_ACCESS_KEY=any
./geesefs  --memory-limit 100 --list-type 1 --endpoint http://10.100.149.15:8333/ foo data

