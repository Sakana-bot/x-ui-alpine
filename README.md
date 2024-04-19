# x-ui-alpine
基于 https://github.com/FranzKafkaYu/x-ui 修改 完美支持alpine
# 前置要求
Alpine 系统版本不低于 3.11


安装依赖
```
apk add bash curl
```
切换shell
```
bash
```
# 一键安装
```
bash <(curl -Ls https://raw.githubusercontent.com/Sakana-bot/x-ui-alpine/main/install.sh)
```

# 更新记录
240420    
修复 安装后x-ui命令报错未检测到系统版本    
修复 系统架构检测失败    
增加 系统版本判断    
适配 acme.sh证书申请    
240113 完善脚本 简化安装流程 迁移到github    
240105 修正关闭x-ui同时不关闭xray的问题（感谢@websrv 上报
