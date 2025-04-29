# AI Player Compass 部署指南

本文档提供了将AI Player Compass网站部署到Cloudflare Pages的详细步骤。

## 前提条件

1. 一个Cloudflare账户
2. 已注册的域名 (aiplayercompass.online)
3. 已配置的DNS记录

## 部署步骤

### 1. 登录Cloudflare

访问 [Cloudflare控制面板](https://dash.cloudflare.com/) 并登录您的账户。

### 2. 添加您的域名

如果您尚未将域名添加到Cloudflare，请按照以下步骤操作：

1. 点击"添加站点"
2. 输入您的域名 (aiplayercompass.online)
3. 选择计划 (免费计划即可)
4. 按照向导完成DNS配置

### 3. 配置Pages

1. 在Cloudflare控制面板中，点击"Pages"
2. 点击"创建项目"
3. 选择"连接到Git"
4. 选择您的GitHub仓库
5. 配置构建设置：
   - 项目名称: ai-player-compass
   - 生产分支: main
   - 构建命令: bash build.sh
   - 构建输出目录: .
   - 环境变量: 无需设置

### 4. 配置自定义域名

1. 部署完成后，在项目设置中找到"自定义域名"
2. 点击"设置自定义域名"
3. 输入您的域名 (aiplayercompass.online)
4. 按照向导完成DNS配置

### 5. 配置重定向和缓存

Cloudflare Pages会自动使用项目根目录中的`_headers`和`_redirects`文件来配置HTTP头和重定向规则。

## 维护和更新

要更新网站内容，只需将更改推送到GitHub仓库的main分支。Cloudflare Pages将自动检测更改并重新部署网站。

## 故障排除

如果部署过程中遇到问题，请检查：

1. 构建日志中是否有错误
2. DNS配置是否正确
3. 自定义域名是否正确配置
4. CNAME文件是否存在于项目根目录

## 联系支持

如果您需要帮助，请联系AI Player Compass团队或参考Cloudflare的[官方文档](https://developers.cloudflare.com/pages/)。 