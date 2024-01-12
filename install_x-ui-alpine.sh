#!/bin/bash
echo "x-ui-alpine 一键安装"
echo ""

echo "补全依赖"
apk update
apk add tzdata jq
echo "修改时区"
cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
echo "Asia/Shanghai" > /etc/timezone
echo "OK"
echo "复制启动和管理脚本并加权"
cp ./x-ui /etc/init.d/x-ui
chmod 0755 /etc/init.d/x-ui
cp ./x-ui.sh /usr/bin/x-ui
chmod 0755 /usr/bin/x-ui
echo "OK"
echo "安装 x-ui"
x-ui install
echo "设置 x-ui 开机自启"
x-ui enable
