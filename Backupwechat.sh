#!/bin/bash

# 定义微信备份文件夹路径 (用引号括起来以处理路径中的空格)
WECHAT_BACKUP_DIR="$HOME/Library/Containers/com.tencent.xinWeChat/Data/Library/Application Support/com.tencent.xinWeChat/2.0b4.0.9/Backup"

# 定义iCloud目标路径 (用引号括起来以处理路径中的空格)
ICLOUD_DIR="$HOME/Library/Mobile Documents/com~apple~CloudDocs/微信备份/wechat"

# 检查微信备份文件夹是否存在
if [ -d "$WECHAT_BACKUP_DIR" ]; then
    echo "找到微信备份文件夹: $WECHAT_BACKUP_DIR"
else
    echo "微信备份文件夹不存在: $WECHAT_BACKUP_DIR"
    exit 1
fi

# 如果iCloud目标文件夹不存在，则创建它
if [ ! -d "$ICLOUD_DIR" ]; then
    echo "iCloud备份文件夹不存在，正在创建: $ICLOUD_DIR"
    mkdir -p "$ICLOUD_DIR"
fi

# 开始同步备份文件到iCloud
echo "正在备份文件到iCloud..."
rsync -av --delete "$WECHAT_BACKUP_DIR/" "$ICLOUD_DIR/"

echo "备份完成!"
