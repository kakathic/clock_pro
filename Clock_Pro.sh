#!/system/bin/sh
curl -0# https://raw.githubusercontent.com/kakathic/clock_pro/master/1.sh -o /storage/emulated/0/Download/1.sh
su -c "mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
mkdir -p /system/media/kakathic
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null"
if [ -e /system/media/kakathic ];then
clear
su -c "sh /storage/emulated/0/Download/1.sh"
else
clear
sh /storage/emulated/0/Download/1.sh
fi