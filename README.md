# BackupWechat
MacOS Backup WeChat to iCloud 

注意事项：
1. 确认路径：打开终端并使用以下命令来检查你的微信备份文件夹路径是否正确：
bash
ls "$HOME/Library/Containers/com.tencent.xinWeChat/Data/Library/Application Support/com.tencent.xinWeChat/2.0b4.0.9/Backup"
如果路径正确，你会看到文件夹内容。如果路径不正确，请找到实际路径并更新脚本中的 WECHAT_BACKUP_DIR 变量。

2.iCloud 文件夹：确保你的 iCloud 文件夹路径也正确。如果微信备份路径或者 iCloud 目标路径有误，请修改路径。
本脚本是在iCloud 新建了- 「微信备份」-「WeChat」文件夹。

3.打开终端，给脚本执行权限：chmod +x backup_wechat_to_icloud.sh。

4.运行脚本：./backup_wechat_to_icloud.sh。

其他注意事项：
路径中的空格：注意路径中的空格可能会引发问题，因此需要用引号括起来。
路径中的版本号：如果微信应用更新，路径中的版本号可能会变化。你可能需要手动检查并更新脚本中的路径。






