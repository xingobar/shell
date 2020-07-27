#!/bin/bash

DEPLAY=1

while true; do
    clear
    cat << EOF
        請選擇:
            1. 顯示系統資訊
            2. 顯示硬碟空間
            3. 顯示家目錄使用空間
            0. 結束
EOF

    read -p "請輸入 [0-3] >"

    # switch case
    case "$REPLY" in
        0)
            break
            ;;
        1)
            echo "主機: $HOSTNAME"
            uptime
            ;;
        2)
            df -h
            ;;
        3)
            du -sh /Users/barxingo/project/shell-script/scripts
            ;;
        *)
            echo '沒有匹配成功'
            ;;
    esac

    # 睡眠一秒
    sleep $REPLY
done

echo "程式結束"