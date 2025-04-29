#!/bin/bash

# 这是一个简单的构建脚本，用于Cloudflare Pages部署
# 实际上，我们的网站是静态的，不需要构建步骤
# 但Cloudflare Pages需要一个构建命令

echo "开始构建AI Player Compass网站..."

# 检查文件是否存在
if [ ! -f "index.html" ]; then
  echo "错误: index.html文件不存在!"
  exit 1
fi

if [ ! -f "en/index.html" ]; then
  echo "错误: en/index.html文件不存在!"
  exit 1
fi

if [ ! -f "cn/index.html" ]; then
  echo "错误: cn/index.html文件不存在!"
  exit 1
fi

# 复制CNAME文件到构建目录
cp CNAME ./CNAME

# 复制_headers和_redirects文件到构建目录
cp _headers ./_headers
cp _redirects ./_redirects

echo "构建完成!" 