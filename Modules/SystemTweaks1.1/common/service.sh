MODDIR=${0%/*}
until [ `getprop sys.boot_completed`. = 1. ]
	    do sleep 1
done

swapoff /dev/block/zram0
echo "1" > /sys/block/zram0/reset
echo "0" > /sys/block/zram0/disksize
echo "8" > /sys/block/zram0/max_comp_streams
chmod 644 /sys/block/zram0/disksize
echo '8489271296' > /sys/block/zram0/disksize
chmod 444 /sys/block/zram0/disksize
mkswap /dev/block/zram0 > /dev/null 2>&1
swapon /dev/block/zram0 > /dev/null 2>&1
