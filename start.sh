#!/usr/bin/env bash

echo '卸载无用软件: '
echo '  - libreoffice   sticky'
echo '  - firefox   thunderbird'
echo '  - pix  drawing  gnome-calendar   simple-scan   onboard'
echo '  - hexchat   transmission-gtk    hypnotix rhythmbox'
echo '  - printer-driver  ftp   ppp   pptp-linux    redshift'
echo '  - mint-backgrounds-ulyana  mint-backgrounds-ulyssa  mint-backgrounds-uma'
echo '  - mintreport mintbackup mintwelcome'
echo '  - '

sleep 2

apt remove libreoffice-* sticky
apt remove firefox thunderbird pix drawing gnome-calendar simple-scan onboard
apt remove hexchat transmission-gtk hypnotix rhythmbox rhythmbox-plugins rhythmbox-plugin-tray-icon
apt remove printer-driver-*  ftp ppp pptp-linux redshift
apt remove mint-backgrounds-ulyana mint-backgrounds-ulyssa mint-backgrounds-uma mintreport mintbackup mintwelcome

apt autoremove

echo ''
echo '卸载完成 ^_^'
echo ''
echo '---------------------------------------------------------'
echo ''

echo '切换软件源为: 清华源'

sudo sed -i 's/packages.linuxmint.com/mirrors.tuna.tsinghua.edu.cn\/linuxmint\//g' /etc/apt/sources.list.d/official-package-repositories.list
sudo sed -i 's/deb.debian.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list.d/official-package-repositories.list
sudo sed -i 's/security.debian.org/mirrors.tuna.tsinghua.edu.cn\/debian-security/g' /etc/apt/sources.list.d/official-package-repositories.list

echo '当前源信息为: '
cat /etc/apt/sources.list.d/official-package-repositories.list

echo ''
echo '更新索引中...'

apt update 

echo '切换完成 ^_^'

sleep 1

echo '系统更新中....'

sleep 2

apt upgrade -y

echo ''
echo '更新完成 ^_^'
echo ''
echo '---------------------------------------------------------'
echo ''


echo '升级内核...'

apt install linux-image-5.16.0-0.bpo.4-amd64 linux-headers-5.16.0-0.bpo.4-amd64

echo ''
echo '升级完成 ^_^'
echo ''
echo '---------------------------------------------------------'
echo ''


echo '安装以下软件:'
echo '  - vim git fcitx5'
echo '  - tilix conky-all ffmpeg inkscape samba'
echo '  - gnome-boxes nginx flameshot'

sleep 2

apt install vim git fcitx5-chinese-addons tilix conky-all ffmpeg inkscape samba gnome-boxes nginx flameshot 
