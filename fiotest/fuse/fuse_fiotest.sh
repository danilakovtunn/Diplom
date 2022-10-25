#!/bin/bash

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
fio -name=test1 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4k -iodepth=1 -fsync=1   -rw=randwrite -filename=/home/danila/fiotest/fuse/data/fiotest
rm -f /home/danila/fiotest/fuse/data/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test2 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4k -iodepth=1  -sync=1   -rw=randwrite -filename=/home/danila/fiotest/fuse/data/fiotest
rm -f /home/danila/fiotest/fuse/data/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test3 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4M -iodepth=16 -sync=1   -rw=randwrite -filename=/home/danila/fiotest/fuse/data/fiotest
rm -f /home/danila/fiotest/fuse/data/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test4 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4k -iodepth=1  -sync=1   -rw=randwrite -filename=/home/danila/fiotest/fuse/data/fiotest
rm -f /home/danila/fiotest/fuse/data/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test5 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4k -iodepth=128 -fsync=1 -rw=randwrite -invalidate=1 -filename=/home/danila/fiotest/fuse/data/fiotest
rm -f /home/danila/fiotest/fuse/data/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test6 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4k -iodepth=128 -fsync=1 -rw=randwrite -invalidate=1 -filename=/home/danila/fiotest/fuse/data/fiotest
rm -f /home/danila/fiotest/fuse/data/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test7 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4M -iodepth=32 -sync=1   -rw=write  -filename=/home/danila/fiotest/fuse/data/fiotest
rm -f /home/danila/fiotest/fuse/data/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test8 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4M -iodepth=16 -sync=1   -rw=write -filename=/home/danila/fiotest/fuse/data/fiotest
rm -f /home/danila/fiotest/fuse/data/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test9 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4M -iodepth=16 -sync=1   -rw=read -filename=/home/danila/fiotest/fuse/data/fiotest
rm -f /home/danila/fiotest/fuse/data/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
