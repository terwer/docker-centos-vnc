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

xrdb $HOME/.Xresources
startxfce4 &
```

FAQ：

https://bgpgeek.com/install-vnc-with-xfce/

http://www.voidcn.com/article/p-fguethet-bke.html
