# DbkeyHook
PC微信4.0.3.39以后版本HOOK获取dbkey

## 感谢
文章: [微信4.0防撤回+提醒 (符号恢复+字符串解密)](https://bbs.kanxue.com/thread-286611.htm)  
C++代码来源：https://github.com/EEEEhex/RevokeHook

## 说明
>微信4.0.3.39以后dbkey使用后内存就会释放，以往的搜索等方法不再能够找到dbkey.  
>本项目使用的方法是hook初始化数据库获取.  
>支持4.0.3.43 和 4.0.5.7.  
>提示：获取dbkey后，记得把dll文件恢复，可能会被检测到修改了DLL！https://github.com/EEEEhex/RevokeHook/issues/7

## 使用方法
1.下载或自编译mmmojo_64.dll文件.  
2.将微信安装目录下的mmmojo_64.dll文件重命名为mmmojo_64_true.dll  
3.复制下载的mmmojo_64.dll文件到微信安装目录下.  
4.打开微信登录即可，获取到的dbkey在微信目录dbkey.txt文件中.  



