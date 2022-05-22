# docker-centos-vnc
Docker buid for centos with vnc

**Note，This repo is not maintained， see my new project**

[https://github.com/terwer/portable-centos-7-workstation](https://github.com/terwer/portable-centos-7-workstation)

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
