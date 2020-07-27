#!/bin/bash

echo "
    請選擇:
        1. 顯示系統資訊
        2. 顯示硬碟空間
        3. 顯示家目錄使用空間
        0. 結束
"

read -p "請輸入 [0-3] >"

# 所輸入的值介於 0-3
if [[ $REPLY =~ ^[0-3]$ ]]; then
    echo $REPLY

    if [[ $REPLY == 0 ]]; then
        echo '程式結束'
        exit
    fi

    if [[ $REPLY == 1 ]]; then
        echo "主機: $HOSTNAME"
        # 顯示系統運行多久了
        uptime
        exit
    fi

    if [[ $REPLY == 2 ]]; then
        df -h
        exit
    fi

    if [[ $REPLY == 3 ]]; then
        # 顯示 scripts 資料夾檔案的大小
        # -h: 顯示人類看得懂的
        # -s:
        du -sh /Users/barxingo/project/shell-script/scripts
        exit
    fi
else
    echo "請輸入0-3選項"
    exit 1
fi