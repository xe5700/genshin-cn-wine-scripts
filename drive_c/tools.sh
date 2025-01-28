#!/bin/bash
cd $(dirname $(realpath $0))
# 定义禁用和解除禁用的函数
disable_site() {
    echo "禁用 dispatchcnglobal.yuanshen.com"
    # 这里可以添加禁用网站的具体命令，例如修改 hosts 文件
    cp "block_ip.bak" "block_ip.txt" 
    echo dispatchcnglobal.yuanshen.com >> block_ip.txt
}

enable_site() {
    echo "解除禁用 dispatchcnglobal.yuanshen.com"
    # 这里可以添加解除禁用网站的具体命令，例如修改 hosts 文件
    cp "block_ip.bak" "block_ip.txt" 
}

# 创建一个图形界面
while true; do
    ACTION=$(zenity --list --title="原神wine工具" --column="操作" "禁用 dispatchcnglobal.yuanshen.com" "解除禁用 dispatchcnglobal.yuanshen.com" "导出抽卡记录" "退出"  \
        --width=400 --height=400)

    case $ACTION in
        "禁用 dispatchcnglobal.yuanshen.com")
            disable_site
            zenity --info --text="已禁用 dispatchcnglobal.yuanshen.com"
            ;;
        "解除禁用 dispatchcnglobal.yuanshen.com")
            enable_site
            zenity --info --text="已解除禁用 dispatchcnglobal.yuanshen.com"
            ;;
        "导出抽卡记录")
            cd export
            zenity --info --text="已导出抽卡记录"
            cd ..
            ;;
        "退出")
            break
            ;;
        *)
            zenity --error --text="无效的选择"
            ;;
    esac
done
