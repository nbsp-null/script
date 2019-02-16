@echo off
set p=C:\Users\75694\Downloads\
echo ----md5命令后输入路径与要比较的MD5  用find 判定---- 
echo ---- 默认路径位%p%  使用时在路径前加bat格式p变量---- 
if exist %1 (
certutil -hashfile %1 MD5
echo ---------以下有显示即为MD5相同--------------
certutil -hashfile %1 MD5 | find "%2"
) else (
echo error:文件%1不存在
)

