if [ -e /storage/emulated/0/.1ka ];then
rm -fr /storage/emulated/0/.1ka
fi
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/1ka.txt -o /storage/emulated/0/1ka.txt
tar -jxf /storage/emulated/0/1ka.txt -C /storage/emulated/0/
rm /storage/emulated/0/1ka.txt
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/cl.txt -o /storage/emulated/0/clock.txt
tar -jxf /storage/emulated/0/clock.txt -C /storage/emulated/0/MIUI
rm /storage/emulated/0/clock.txt
rm /storage/emulated/0/Download/Clock_Pro.sh
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/Clock_Pro.sh -o /storage/emulated/0/Download/Clock_Pro.sh

echo '

>  Cài đặt thành công...

>  Ra màn hình chính và kéo tiện ích ra màn hình.

';

exit
