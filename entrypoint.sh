# USER=terwer

# docker exec -it docker-centos bash

# 创建用户
# useradd -m -g root $USER
# visudo
# passwd $USER
# passwd

# 关闭VNC
# vncserver -kill :1
# 启动VNCServer
# vncserver :1 -geometry 800x600 -depth 24 -SecurityTypes None
# vncserver -SecurityTypes None
# vncserver

echo "finished."
bash