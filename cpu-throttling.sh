#!/bin/bash

/sbin/modprobe msr

echo "[throttling] setting new trip point to 97 C"
wrmsr -a 0x1a2 0x3000000 # which sets the offset to 3 C, so the new trip point is 97 C

# apply undervolting...

# ecc00000  -150mv
# ee000000  -140.6mv
# f0000000  -125mv
# f1400000  -115mv
# f3400000  -100mv
# f5200000 -85mv

# format(0xFFE00000&( (int(round(-140*1.024))&0xFFF) <<21), '08x')

echo '[throttling] undervolting... '

echo '[throttling] CPU_CORE -150mv'
wrmsr 0x150 0x80000011ecc00000
echo '[throttling] IntelGPU -125mv'
wrmsr 0x150 0x80000111f0000000
echo '[throttling] SystemAgent -100mv'
wrmsr 0x150 0x80000211f3400000
echo '[throttling] Analog IO -100mv'
wrmsr 0x150 0x80000311f3400000
echo '[throttling] Digital IO -100mv'
wrmsr 0x150 0x80000411f3400000
echo '[throttling] Applying exra power saving routines'

echo '[throttling] adjusting writeback cache expiry'
echo '1500' > '/proc/sys/vm/dirty_writeback_centisecs'

