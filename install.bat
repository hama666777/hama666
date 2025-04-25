@echo off
echo ===================================
echo JSFinder增强版 - 依赖安装脚本
echo ===================================
echo.

:: 检查Python是否安装
python --version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未检测到Python，请先安装Python 3.x
    echo 您可以从 https://www.python.org/downloads/ 下载Python
    pause
    exit
)

:: 检查pip是否可用
pip --version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未检测到pip，请确保Python安装正确
    pause
    exit
)

echo [信息] 开始安装依赖...
echo.

:: 升级pip
echo [信息] 正在升级pip...
python -m pip install --upgrade pip

:: 安装依赖
echo [信息] 正在安装必要的依赖包...
pip install requests
pip install beautifulsoup4
pip install selenium
pip install tqdm
pip install colorama
pip install urllib3
pip install pyyaml

:: 检查Chrome驱动
echo [信息] 检查Chrome驱动...
python -c "from selenium import webdriver; from selenium.webdriver.chrome.service import Service; Service()" >nul 2>&1
if errorlevel 1 (
    echo [警告] 未检测到Chrome驱动，请确保已安装Chrome浏览器
    echo 您可以从 https://sites.google.com/chromium.org/driver/ 下载对应版本的Chrome驱动
)

echo.
echo [成功] 依赖安装完成！
echo.
echo 您现在可以运行: python hdsrc-jsfinder.py -h 查看使用帮助
echo.
pause
