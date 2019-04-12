# export USER=terwer

# yum -y install sudo
# yum -y install vim
# yum -y groupinstall "fonts" 
# yum -y install net-tools
# docker exec -it docker-centos bash

# 设置Xfce中文显示
# vim /etc/locale.conf
# LANG="zh_CN.UTF-8"

# 创建用户
# useradd -m -g root $USER
# visudo
# passwd $USER
# passwd

# 安装Chrome
# cd /home/$USER/Downloads
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
# rpm -ivh *.rpm

# 关闭VNC
# vncserver -kill :1
# 启动VNCServer
# vncserver :1 -geometry 800x600 -depth 24 -SecurityTypes None
# vncserver -SecurityTypes None
# vncserver
  
echo "finished."
bash