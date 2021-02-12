clear
play() {
curl -# https://raw.githubusercontent.com/kakathic/clock_pro/master/clock.txt -o /storage/emulated/0/9.kk
tar -xf /storage/emulated/0/9.kk -C /storage/emulated/0/MIUI
rm /storage/emulated/0/9.kk
echo "
- Cài đặt xong

- Ra màn hình chính kéo từ tiện ích ra.


"
}

back() {
echo -n "
> Chọn cách cài đặt Clock Vip

  Ấn ( Im ) để nhập phím, ( Góc 5H )

  1. Cài đặt
  2. Cập nhật Clock
  3. Xoá Clock
  4. Thoát

> Nhập: "

read nhap
if [ "$nhap" == "1" ];then
echo '
>  Tiến hành tải xuống...

'
play
elif [ "$nhap" == "2" ];then
echo '
>  Tiến hành cập nhật...

'
play
elif [ "$nhap" == "3" ];then
rm -fr /sdcard/MIUI/theme/.data/preview/theme/clock_vip
rm -fr /sdcard/MIUI/theme/.data/*/clock_2x4/clock_vip*
echo " 
- Đã xoá xong.

- Chat phím bất kỳ để trở về.
"
read
clear
back
elif [ "$nhap" == "4" ];then
echo
exit
else
echo "
- Nhập sai.
"
sleep 2
clear
back
fi

}
back