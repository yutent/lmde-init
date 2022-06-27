# lmde 5 初始化脚本

这个仓库只是为了我自己重装系统之后, 方便定制化所用,   其他人要用, 请看清楚这里面的操作有没有你不需要的, 或者 删除了你需要的东西.


## 脚本要做的事

> 1. 卸载一些无用的软件(见下表), 安装一些常用软件(见下表)
> 2. 更换apt源为`清华源`
> 3. 升级内核至5.16(源里提供的)
> 4. 配置一些有用的配置(比较有限, 桌面的配置并没有全部在home目录下)



### 变更的软件包

|    包名    |   是否卸载    |    是否新增   |      备注      |
|    :-    |   :-:    |    :-:   |      :-      |
| `libreoffice` |    |   |  一个开源 office软件, `wps`比它好用, 所以不留   |


- `sticky` 一个桌面便签软件
- `firefox`   火狐浏览器, 不好用, `edge, chrome`更好, 实在喜欢的, 可以改装`firefox-esr`
- `thunderbird`   雷鸟邮箱, 太丑, 太臃肿
- `pix` 一个图片软件, 没啥用
- `drawing`   一个功能很少,简单的画画工具, 也没啥用
- `gnome-calendar`   日历软件, 太丑, 太简陋
- `simple-scan`  一个扫描文档blabla的软件, 没啥用
- `onboard`  一个悬浮键盘, 非平板, 非触摸屏, 用不到
- `hexchat`  一个聊天终端, 国内没啥用
- `transmission-gtk`  一个啥都下载不了的下载工具, 直接用`wget, axel`更香
- `hypnotix`  一个IPTV终端软件, 国内算了, 啥都看不了
- `rhythmbox`  一个丑丑的音乐播放器
- `printer-driver` 打印机驱动, 我用不到
- `ftp` 都2202年了, 不用ftp
- `ppp` 一个网络代理协议, 没屁用, 企业都用`openvpn`
- `pptp-linux` 也是一个没屁用的网络代理软件
- `redshift`   一个红屏工具, 就是把屏幕变红, 所谓的护眼? 护个屁
- `mint-backgrounds-ulyana`  mint的桌面背景图
- `mint-backgrounds-ulyssa`   mint的桌面背景图
- `mint-backgrounds-uma`   mint的桌面背景图
- `mintreport`   一个反馈终端,反馈了反正也不会立马给你修复,删了吧
- `mintbackup`   一个系统备份工具, 有`timeshift`谁还要它
- `mintwelcome`  一个欢迎程序, 没必要了
- `mintinstall`  包管理器的GUI版, 传说中的 应用商店, 体验不好, 还不如直接apt操作
- `baobab`      一个所谓的磁盘使用查看工具, 屁用没有
- `xed`       一个功能简陋的文本编辑器


### 另外安装的软件包

- `linux-image-5.16.0`  源里面提供的5.16内核
- `fcitx5-chinese-addons`  中文输入法
- `conky-all`    一个装逼的小工具
- `samba`   smb 文件共享软件
- `flameshot`       一个交互式截图软件
- `clash`       你懂的
- `chrome`    浏览器
- `edge`      浏览器




### 可选的安装包
- `tilix`
- `ffmpeg`
- `nginx`    
- `gnome-boxes`  
- `inkscape` 
- `vim`   
- `git`  
- `docker`
- `crossover`
- `dingtalk`
- `clang`
- `cmake`
- `libgtk-3-dev`