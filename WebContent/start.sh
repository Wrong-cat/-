#!/bin/bash

# 启动内嵌服务器（无需Tomcat）
echo "正在启动网站服务器..."
python3 -m http.server 8080
