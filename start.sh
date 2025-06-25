#!/bin/bash

# 安装 Tomcat
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.85/bin/apache-tomcat-9.0.85.tar.gz
tar -xzf apache-tomcat-9.0.85.tar.gz

# 部署应用到 Tomcat
rm -rf apache-tomcat-9.0.85/webapps/ROOT
cp -r WebContent apache-tomcat-9.0.85/webapps/ROOT

# 启动 Tomcat
./apache-tomcat-9.0.85/bin/startup.sh

# 打印访问地址
echo "✅ 请访问：https://${CODESPACE_NAME}-8080.preview.app.github.dev"
echo "✅ 网站已启动！等待 30 秒服务初始化..."
sleep 30
