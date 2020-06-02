if [ -f /storage/emulated/0/.1ka/Tùy_Chỉnh_1.7.txt ];then
echo "

>  Bắt đầu tải dữ liệu...

"
else
rm -rR /storage/emulated/0/.1ka
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/1ka.txt -o /storage/emulated/0/1ka.txt
tar -xf /storage/emulated/0/1ka.txt -C /storage/emulated/0/
rm /storage/emulated/0/1ka.txt
fi
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/clock_pro.mtz -o /storage/emulated/0/Download/clock_pro.mtz
chmod 644 /system/media/theme/default/gadgets
mv /storage/emulated/0/Download/clock_pro.mtz /system/media/theme/default/gadgets/clock_pro.mtz
chmod 644 /system/media/theme/default/gadgets/clock_pro.mtz
rm /storage/emulated/0/Download/2.sh
rm /storage/emulated/0/Download/Clock_Pro_Root.sh
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/Clock_Pro_Root.sh -o /storage/emulated/0/Download/Clock_Pro_Root.sh
echo '

>  Cài đặt thành công...

>  Vui lòng không chia sẻ clock pro với người khác

   Nếu vi phạm bạn có thể bị khoá tài khoản...

';
