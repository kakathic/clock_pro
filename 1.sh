if [ -e /sdcard/.1ka ];then
rm -fr /sdcard/.1ka
fi
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/1ka.txt -o /sdcard/1ka.txt
tar -jxf /sdcard/1ka.txt -C /sdcard/
rm /sdcard/1ka.txt
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/cl.txt -o /sdcard/clock.txt
tar -jxf /sdcard/clock.txt -C /sdcard/MIUI
rm /sdcard/clock.txt
rm /sdcard/Download/Clock_Pro.sh
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/Clock_Pro.sh -o /sdcard/Download/Clock_Pro.sh

echo '

>  Cài đặt thành công...

>  Ra màn hình chính và kéo tiện ích ra màn hình.

';

exit
