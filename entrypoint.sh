# 修改工作空间
CURDIR=/home/$USER
cd $CURDIR
echo "Change workspace to $CURDIR=>" && pwd && whoami

# 关闭VNC
chmod 777 /tmp
rm /tmp/.X1-lock
if [ -d ~/.vnc ]; then
 vncserver -kill :1
fi
# 启动VNCServer
# vncserver :1 -geometry 800x600 -depth 24 -SecurityTypes None
vncserver -SecurityTypes None

echo "finished."
bash