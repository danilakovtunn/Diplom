#!/bin/bash
export AWS_ACCESS_KEY_ID=TFL5UBXOSD602P47NEGL
export AWS_SECRET_ACCESS_KEY=pratERicK
./geesefs  --memory-limit 100 --debug_s3 --debug_fuse --log-file fuselog_1.log --list-type 2 --endpoint http://10.100.115.105:8081/ foo data
