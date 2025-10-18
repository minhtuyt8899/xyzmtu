#!/bin/bash
echo "[i] Chúng Tôi Sẽ Cài Đặt XyZmtu..."
if [ -d "/usr/share-main/xyzmtu" ] ; then
    echo "[i] Đã Tìm Thấy Bản Cũ Của XyZmtu, Đang Update Lên Bản Mới..."
    echo "[i] Backup Bản Cũ."
    if [ -d "/usr/share/xyzmtu/Backup" ] ; then
        sudo mv /usr/share/xyzmtu/Backup ./Backup
    else
        mkdir ./Backup
    fi
    name="./Backup/xyzmtu"
    if [ -d $name ] ; then
        i=0
        while [ -d "$name.bak$i" ] ; do
            let i++
        done
            name="$name.bak$i"
    fi
    sudo mv /usr/share/xyzmtu $name
    mv ./Backup ./xyzmtu/
    sudo cp -ar .xyzmtu /usr/share/
    echo "[i] Cài Đặt Thành CÔng."
    echo "[i] Đang Làm XyZmtu Có Thể Thực Thi..."
    sudo mv /usr/share/xyzmtu/main.py /usr/share/xyzmtu/xyzm
    sudo chmod +x /usr/share/xyzmtu/xyzm
    sudo ln -s /usr/share/xyzmtu/xyzm /usr/bin/xyzm || echo "[i] Đường Dẫn Đã Tồn Tại!."
else
    sudo cp -ar ./xyzmtu /usr/share/
    echo "[i] Cài Đặt Thành Công!."
    echo "[i] Đang Làm XyZmtu Có Thể Thực Thi..."
    sudo mv /usr/share/xyzmtu/main.py /usr/share/xyzmtu/xyzm
    sudo chmod +x /usr/share/xyzmtu/xyzm
    sudo ln -s /usr/share/xyzmtu/xyzm /usr/bin/xyzm || echo "[i] Dường Như Đường Đẫn Đã Tồn Tại!."
fi

echo "[i] Bạn Cũng Có Thể Xóa Thư Mục XyZmtu Ngay Bây Giờ."
echo "----------------------------------------"
echo "[i] Chạy 'sudo xyzm' Để Chạy XyZmtu."
echo "----------------------------------------"
exit 0
