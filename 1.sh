if [ -e /storage/emulated/0/.1ka ];then
rm -rR /storage/emulated/0/.1ka
fi
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/1ka.txt -o /storage/emulated/0/1ka.txt
tar -jxf /storage/emulated/0/1ka.txt -C /storage/emulated/0/
rm /storage/emulated/0/1ka.txt
#Root
if [ -e /system/media/kakathic ];then
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/Pro.txt -o /storage/emulated/0/cl_pro
mount -o rw,remount / 2> /dev/null
mount -o rw,remount /system 2> /dev/null
tar -jxf /storage/emulated/0/cl_pro -C /storage/emulated/0/MIUI
cp -rf /storage/emulated/0/MIUI/Pro/* /system/media/theme/default/gadgets
chmod -R 755 /system/media/theme/default/gadgets/*
rm -fr /system/media/kakathic
mount -o ro,remount /system 2> /dev/null
mount -o ro,remount / 2> /dev/null
killall com.miui.home
rm -fr /storage/emulated/0/MIUI/Pro
rm -fr /storage/emulated/0/cl_pro

echo '

>  Bản Root

'
else
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/cl.txt -o /storage/emulated/0/clock.txt
tar -jxf /storage/emulated/0/clock.txt -C /storage/emulated/0/MIUI
rm /storage/emulated/0/clock.txt

echo '

>  Bản không Root

'
fi
rm /storage/emulated/0/Download/1.sh
rm /storage/emulated/0/Download/Clock_Pro.sh
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/Clock_Pro.sh -o /storage/emulated/0/Download/Clock_Pro.sh

echo '

>  Cài đặt thành công...

>  Vui lòng không chia sẻ Clock pro với người khác

   Nếu vi phạm bạn có thể bị khoá tài khoản...

';

exit
