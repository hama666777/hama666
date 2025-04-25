# JSFinder - 增强版

一个强大的JavaScript文件分析工具，用于发现网站中的敏感信息、API端点和其他重要资源。

## 功能特点

- 🔍 自动提取JavaScript文件中的URL和API端点
- 🎯 智能识别API接口特征
- 🔐 敏感信息检测，包括：
  - 个人身份信息
    - 身份证号码
    - 手机号码
    - 邮箱地址
    - 真实姓名
  - 密钥和令牌
    - API密钥
    - AWS访问密钥
    - Google API密钥
    - GitHub Token
    - JWT Token
  - 数据库信息
    - 数据库连接字符串
    - 数据库用户名和密码
  - 云服务信息
    - 云存储URL
    - 云服务访问凭证
  - 其他敏感信息
    - 密码和密钥
    - 私钥文件
    - IP地址
    - 内部API端点
- 📸 支持API响应截图
- 🚀 多线程并发扫描
- 📊 详细的结果输出和统计
- 💾 支持多种格式保存结果
- 🔄 支持代理和自定义请求头
- 🌐 支持子域名发现

## 安装

```bash
# 克隆仓库
git clone https://github.com/yourusername/jsfinder.git
cd jsfinder

# 安装依赖
pip install -r requirements.txt
```

## 使用方法

### 基本用法

```bash
# 扫描单个URL
python hdsrc-jsfinder.py -u http://example.com

# 深度扫描模式
python hdsrc-jsfinder.py -u http://example.com -d

# 从文件读取URL进行扫描
python hdsrc-jsfinder.py -f urls.txt

# 指定线程数进行扫描
python hdsrc-jsfinder.py -u http://example.com -t 10
```

### 高级选项

```bash
# 使用代理
python hdsrc-jsfinder.py -u http://example.com -p http://127.0.0.1:8080

# 设置Cookie
python hdsrc-jsfinder.py -u http://example.com -c "session=xxx"

# 保存响应内容
python hdsrc-jsfinder.py -u http://example.com --save-response

# 截图保存
python hdsrc-jsfinder.py -u http://example.com -s screenshots/

# 自定义输出文件
python hdsrc-jsfinder.py -u http://example.com -ou urls.txt -os subdomains.txt -oj results.json
```

## 参数说明

| 参数 | 说明 | 示例 |
|------|------|------|
| -u, --url | 目标网站URL | -u http://example.com |
| -c, --cookie | 目标网站的Cookie | -c "session=xxx" |
| -f, --file | 包含URL或JS文件的文件路径 | -f urls.txt |
| -ou, --outputurl | URL输出文件名 | -ou urls.txt |
| -os, --outputsubdomain | 子域名输出文件名 | -os subdomains.txt |
| -oj, --outputjson | JSON格式输出文件名 | -oj results.json |
| -j, --js | 在JS文件中查找 | -j |
| -d, --deep | 深度查找 | -d |
| -t, --threads | 线程数 | -t 10 |
| -p, --proxy | 代理地址 | -p http://127.0.0.1:8080 |
| -to, --timeout | 请求超时时间 | -to 3 |
| -r, --retries | 请求重试次数 | -r 3 |
| -s, --screenshot | 截图保存文件夹路径 | -s screenshots/ |

## 输出示例

```
[*] 开始扫描 http://example.com
[+] 发现 50 个 URL
[+] 发现 5 个子域名
[✪] 开始批量测活接口...
[*] 发现 20 个可能的API端点
[+] 发现敏感信息:
    类型: 手机号
    URL: http://example.com/api/users
    值: 13812345678
```

## 注意事项

1. 请遵守相关法律法规，不要对未授权的网站进行扫描
2. 建议使用代理进行扫描，避免IP被封禁
3. 对于大型网站，建议适当调整线程数和超时时间
4. 敏感信息检测结果仅供参考，请勿用于非法用途

## 贡献

欢迎提交Issue和Pull Request来帮助改进这个工具。

## 许可证

本项目基于MIT许可证开源。

## 致谢

- 原项目：[JSFinder](https://github.com/Threezh1/JSFinder)
- 正则表达式来源：[LinkFinder](https://github.com/GerbenJavado/LinkFinder)

## 作者

- hama
- 作者交流微信
![mmqrcode1745552433056](https://github.com/user-attachments/assets/df53f10c-d026-49d5-b055-42f323f467d8)

## 更新日志

### v2.0
- 添加多线程支持
- 优化敏感信息检测
- 添加API响应截图功能
- 改进结果输出格式
- 添加更多配置选项 
