clear
tx() {
echo
echo "- Đang tải xuống..."
echo
if [ -e /sdcard/.1ka ];then
rm -fr /sdcard/.1ka
fi
curl -#s https://raw.githubusercontent.com/kakathic/clock_pro/master/1ka.txt -o /sdcard/1ka.txt
tar -xf /sdcard/1ka.txt -C /sdcard/
rm /sdcard/1ka.txt
curl -#s https://raw.githubusercontent.com/kakathic/clock_pro/master/cl.txt -o /sdcard/clock.txt
tar -xf /sdcard/clock.txt -C /sdcard/MIUI
rm /sdcard/clock.txt
}

osaka() {
echo -n "
> Chọn phiên bản Clock Pro

  Chọn sai có thể bị lỗi mất icon ứng dụng 
  
  thời tiết lịch v.v
  
  phiên bản thứ 2 sẽ không dùng được mục gps của 
  
  ứng dụng la bàn.

  Ấn ( Im ) để nhập phím, ( Góc 5H )

  1. Miui 12.5 trở nên
  2. Miui 12 trở xuống ( Không bị mất icon )
  3. Xoá Clock Pro khỏi máy
  4. Sửa lỗi mất icon
  5. Cập nhật Clock Pro

> Nhập: "

read kkhh
if [ "$kkhh" == "1" ];then
tx
rm -fr /sdcard/MIUI/theme/.data/content/clock_2x4/aac00c01-4a05-45f1-9776-5d79bd5d06c2.mrc
mv -f /sdcard/MIUI/theme/.data/content/clock_2x4/aac00c01-4a05-45f1-9776-5d79bd5d06c2.mrc2 /sdcard/MIUI/theme/.data/content/clock_2x4/aac00c01-4a05-45f1-9776-5d79bd5d06c2.mrc
echo "1" > /sdcard/MIUI/theme/.data/content/clock_2x4/Clock_Pro.txt
elif [ "$kkhh" == "2" ];then
tx
rm -fr /sdcard/MIUI/theme/.data/content/clock_2x4/aac00c01-4a05-45f1-9776-5d79bd5d06c2.mrc2
echo "2" > /sdcard/MIUI/theme/.data/content/clock_2x4/Clock_Pro.txt
elif [ "$kkhh" == "5" ];then
tx
check=$(cat /sdcard/MIUI/theme/.data/content/clock_2x4/Clock_Pro.txt)
if [ "$check" == "1" ];then
rm -fr /sdcard/MIUI/theme/.data/content/clock_2x4/aac00c01-4a05-45f1-9776-5d79bd5d06c2.mrc
mv -f /sdcard/MIUI/theme/.data/content/clock_2x4/aac00c01-4a05-45f1-9776-5d79bd5d06c2.mrc2 /sdcard/MIUI/theme/.data/content/clock_2x4/aac00c01-4a05-45f1-9776-5d79bd5d06c2.mrc
else
rm -fr /sdcard/MIUI/theme/.data/content/clock_2x4/aac00c01-4a05-45f1-9776-5d79bd5d06c2.mrc2
fi
elif [ "$kkhh" == "4" ];then
echo "
> Hướng dẫn khi bị lỗi mất icon. vào cài đặt >

  ứng dụng > quản lý ứng dụng, tìm trình khởi

  chạy và xoá toàn bộ dữ liệu. nhớ xoá tiện 
  
  ích thời tiết ở ngoài màn hình trước khi xoá
  
  dữ liệu.


- Chat phím bất kỳ để trở về.
"
read
clear
osaka
elif [ "$kkhh" == "3" ];then
rm -fr /sdcard/MIUI/theme/.data/*/clock_2x4/aac00c01-4a05-45f1-9776-5d79bd5d06c2*
rm -fr /sdcard/.1ka
rm -fr /sdcard/MIUI/theme/.data/preview/theme/e5118ae2-d70e-42a1-a1a1-61b3466ec314
rm -fr /sdcard/MIUI/theme/.data/content/clock_2x4/Clock_Pro.txt
echo " 
- Đã xoá xong.

- Chat phím bất kỳ để trở về.
"

read
clear
osaka
else
echo "
-  Nhập sai.

-  Nếu quá 2 giây thông báo này không biến mất vui lòng tải lại Clock_pro.sh
"
sleep 2
clear
osaka
fi
rm /sdcard/Download/Clock_Pro.sh
curl -#s https://raw.githubusercontent.com/kakathic/clock_pro/master/Clock_Pro.sh -o /sdcard/Download/Clock_Pro.sh

echo '- Cài đặt thành công...

- Ra màn hình chính và kéo tiện ích ra màn hình.


'
}

osaka

rm -fr 1.sh
