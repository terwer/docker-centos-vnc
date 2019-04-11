# 关闭VNC
chmod 777 /tmp
rm /tmp/.X1-lock
if [ -d ~/.vnc ]; then
 vncserver -kill :1
 rm ~/.vnc/*.pid
 rm ~/.vnc/*.log
fi

# 启动VNCServer
# vncserver :1 -geometry 800x600 -depth 24 -SecurityTypes None
vncserver -SecurityTypes None

echo "finished."
bash