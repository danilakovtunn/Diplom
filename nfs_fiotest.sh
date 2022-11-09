#!/bin/bash

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync;
fio -name=test1 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4k -iodepth=1  -sync=dsync -rw=randwrite --continue_on_error=1 -filename=/mnt/ceph_s3/foo/fiotest
rm -f /mnt/ceph_s3/foo/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test2 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4k -iodepth=1  -sync=dsync   -rw=randwrite --continue_on_error=1 -filename=/mnt/ceph_s3/foo/fiotest
rm -f /mnt/ceph_s3/foo/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test3 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4M -iodepth=16 -sync=dsync   -rw=randwrite --continue_on_error=1 -filename=/mnt/ceph_s3/foo/fiotest
rm -f /mnt/ceph_s3/foo/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test4 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4k -iodepth=1  -sync=dsync   -rw=randwrite --continue_on_error=1 -filename=/mnt/ceph_s3/foo/fiotest
rm -f /mnt/ceph_s3/foo/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test5 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4k -iodepth=128 -sync=dsync -rw=randwrite --continue_on_error=1 -invalidate=1 -filename=/mnt/ceph_s3/foo/fiotest
rm -f /mnt/ceph_s3/foo/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test6 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4k -iodepth=128 -sync=dsync -rw=randwrite --continue_on_error=1 -invalidate=1 -filename=/mnt/ceph_s3/foo/fiotest
rm -f /mnt/ceph_s3/foo/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test7 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4M -iodepth=32 -sync=dsync   -rw=write  --continue_on_error=1 -filename=/mnt/ceph_s3/foo/fiotest
rm -f /mnt/ceph_s3/foo/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test8 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4M -iodepth=16 -sync=dsync   -rw=write --continue_on_error=1 -filename=/mnt/ceph_s3/foo/fiotest
rm -f /mnt/ceph_s3/foo/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
fio -name=test9 -size=5G -ioengine=libaio -direct=1 -runtime=60 -bs=4M -iodepth=16 -sync=dsync   -rw=read --continue_on_error=1 -filename=/mnt/ceph_s3/foo/fiotest
rm -f /mnt/ceph_s3/foo/fiotest

echo 3 | sudo tee /proc/sys/vm/drop_caches && sudo sync ;
