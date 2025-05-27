#!/system/bin/sh

ZRAM_SIZE_MB=8192
ZRAM_DEVICES=1
COMP_ALGORITHM=lz4
SWAPPINESS=100
PRIORITY=32767

if [ ! -e /dev/block/zram0 ]; then
    modprobe zram
fi

if [ -d /sys/class/zram-control ]; then
    echo "$ZRAM_DEVICES" > /sys/class/zram-control/hot_add
fi

if grep -q "$COMP_ALGORITHM" /sys/block/zram0/comp_algorithm; then
    echo "$COMP_ALGORITHM" > /sys/block/zram0/comp_algorithm
else
fi

echo "$((ZRAM_SIZE_MB * 1024 * 1024))" > /sys/block/zram0/disksize

mkswap /dev/block/zram0 > /dev/null
swapon /dev/block/zram0 -p $PRIORITY > /dev/null

echo "$SWAPPINESS" > /proc/sys/vm/swappiness
