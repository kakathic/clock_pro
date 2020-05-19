if [ -f /storage/emulated/0/.1ka/Tùy_Chỉnh_1.6.txt ];then

echo "

>  Bắt đầu tải dữ liệu...

"

else

rm -rR /storage/emulated/0/.1ka

curl -# http://vietup.net/files/24d906f30b21931ae101db4a4afd29a9/adf99c547f78c1e43b0076d3173870b9/1ka.jar -o /storage/emulated/0/1ka.txt

tar -xf /storage/emulated/0/1ka.txt -C /storage/emulated/0/

rm /storage/emulated/0/1ka.txt

fi

curl -# http://vipclock.jw.lt/Clock/clock_pro.txt -o /storage/emulated/0/clock.txt

tar -xf /storage/emulated/0/clock.txt -C /storage/emulated/0/MIUI

rm /storage/emulated/0/clock.txt

rm /storage/emulated/0/Download/1.sh

rm /storage/emulated/0/Download/Clock_Pro.sh

curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/Clock_Pro.sh -o /storage/emulated/0/Download/Clock_Pro.sh

echo '

>  Cài đặt thành công...

>  Vui lòng không chia sẻ clock pro với người khác nếu vi phạm bạn có thể bị khoá tài khoản...

';

exit
