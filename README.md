# docker-centos-mate-vnc
Docker buid for centos with vnc

# VNC help

open xstartup

```
vim ~/.vnc/xstartup
```

setup

```
#!/bin/sh

# unset SESSION_MANAGER
# unset DBUS_SESSION_BUS_ADDRESS
# /etc/X11/xinit/xinitrc
# vncserver -kill $DISPLAY

# mate-session &

xrdb $HOME/.Xresources
startxfce4 &
```

FAQ：

https://bgpgeek.com/install-vnc-with-xfce/

http://www.voidcn.com/article/p-fguethet-bke.html
