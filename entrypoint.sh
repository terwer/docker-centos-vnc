# export USER=terwer

# docker exec -it docker-centos bash

# 设置Xfce中文显示(not working)
# vim /etc/locale.conf
# LANG="zh_CN.UTF-8"

# 创建用户
# useradd -m -g root $USER
# visudo
# passwd $USER
# passwd

# 安装zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# plugins=(git zsh-syntax-highlighting)

# 关闭VNC
# vncserver -kill :1
# 启动VNCServer
# vncserver :1 -geometry 800x600 -depth 24 -SecurityTypes None
# vncserver -SecurityTypes None
# vncserver
  
echo "finished."
bash