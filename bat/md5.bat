@echo off
set p=C:\Users\75694\Downloads\
echo ----md5���������·����Ҫ�Ƚϵ�MD5  ��find �ж�---- 
echo ---- Ĭ��·��λ%p%  ʹ��ʱ��·��ǰ��bat��ʽp����---- 
if exist %1 (
certutil -hashfile %1 MD5
echo ---------��������ʾ��ΪMD5��ͬ--------------
certutil -hashfile %1 MD5 | find "%2"
) else (
echo error:�ļ�%1������
)

