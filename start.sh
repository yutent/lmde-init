#!/usr/bin/env bash

echo '卸载无用软件: '
echo '  - libreoffice   sticky'
echo '  - firefox   thunderbird'
echo '  - pix  drawing  gnome-calendar   simple-scan   onboard'
echo '  - hexchat   transmission-gtk    hypnotix rhythmbox'
echo '  - printer-driver  ftp   ppp   pptp-linux    redshift'
echo '  - mint-backgrounds-ulyana  mint-backgrounds-ulyssa  mint-backgrounds-uma'
echo '  - mintreport mintbackup mintwelcome mintinstall'
echo '  - '

sleep 2

apt remove libreoffice-* sticky -y
apt remove firefox thunderbird pix drawing gnome-calendar simple-scan onboard -y
apt remove hexchat transmission-gtk hypnotix rhythmbox rhythmbox-plugins rhythmbox-plugin-tray-icon -y
apt remove printer-driver-*  ftp ppp pptp-linux redshift -y
apt remove mint-backgrounds-ulyana mint-backgrounds-ulyssa mint-backgrounds-uma mintreport mintbackup mintwelcome -y

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

apt install linux-image-5.16.0-0.bpo.4-amd64 linux-headers-5.16.0-0.bpo.4-amd64 -y

echo ''
echo '升级完成 ^_^'
echo ''
echo '---------------------------------------------------------'
echo ''


echo '将安装以下软件:'
echo '  - fcitx5   flameshot   samba   conky-all'
echo '  - chrome'


sleep 2

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -o /tmp/chrome.deb

apt deb /tmp/chrome.deb
rm /tmp/chrome.deb

apt install fcitx5-chinese-addons samba flameshot conky-all -y


echo ''
echo '---------------------------------------------------------'
echo ''
echo "是否安装以下可选软件: "
echo '  - vim git tilix ffmpeg inkscape'
echo '  - gnome-boxes nginx'
echo '  - clang cmake libgtk-3-dev'
echo '  - crossover'


read -p "请选择: y/n (默认y) " action

if [ "$action" = "" ]; then
  action="y"
fi

if [ "$action" = "y" ]; then

  apt install vim git fcitx5-chinese-addons tilix gnome-boxes nginx ffmpeg inkscape clang cmake libgtk-3-dev

  wget https://media.codeweavers.com/pub/crossover/cxlinux/demo/crossover_21.2.0-1.deb -o /tmp/crossover.deb

  apt deb /tmp/crossover.deb
  rm /tmp/crossover.deb

  apt remove gnome-terminal

fi


echo ''
echo '该装的该卸载的都已经完成 ^_^'
echo ''
echo '---------------------------------------------------------'
echo ''


read -p '是否将大写键禁用,并改为Eisu(一个日文键)? y/n: (默认 y) ' none_caps

if [ "$none_caps" = "" ]; then
  none_caps="y"
fi

if [ "$none_caps" = "y" ]; then
  cp ./home/.xinitrc ~/
  cp ./home/.Xmodmap ~/
  xmodmap ~/.Xmodmap
  echo '修改成功  ^_^'
fi