USER=terwer

# 创建用户
useradd -m -g root terwer
# visudo
# passwd terwer
# passwd

# 关闭VNC
# vncserver -kill :1
# 启动VNCServer
# docker exec -it docker-centos bash
# vncserver :1 -geometry 800x600 -depth 24 -SecurityTypes None
# vncserver -SecurityTypes None
# vncserver

echo "finished."
bash