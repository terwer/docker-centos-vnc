# docker-centos-mate-vnc
Docker buid for centoswith vnc

# VNC help

open xstartup

```
vim ~/.vnc/xstartup
```

setup

```
#!/bin/sh 
# Uncomment the following two lines for normal desktop:  
# unset SESSION_MANAGER 
# exec /etc/X11/xinit/xinitrc 
[ -x /etc/vnc/xstartup ] && exec /etc/vnc/xstartup 
[ -r $HOME/.Xresources ] && xrdb $HOME/.Xresources 
xsetroot -solid grey 
vncconfig -iconic & x-terminal-emulator -geometry 80x24+10+10 -ls -title "$VNCDESKTOP Desktop" & 
mate-session & 
```
