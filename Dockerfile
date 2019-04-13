#依赖的镜像
FROM centos/systemd

#镜像创建者的信息
LABEL maintainer="Terwer Green <cbgtyw@gmail.com>"

### Envrionment config
ENV TZ=Asia/Shanghai \
    TZ=CST-8

# 添加网易源
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup \
    && curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo \
    && yum makecache \
    && yum update -y \
    && yum upgrade -y \
    && yum clean all \
&& echo "mirror set finished."

# 安装桌面及开发工具
# Install various packages to get compile environment
# note:not install mate-desktop because of splash screen 
# `yum groupinstall "MATE Desktop" -y`
# `yum groupinstall "Server with GUI" -y`
RUN yum install epel-release -y \
    && yum groupinstall "Development Tools" -y \ 
    && yum groupinstall "X Window System" -y \
    && yum groupinstall xfce -y \
    && yum install pixman pixman-devel libXfont -y \
    && yum install tigervnc-server -y \
    && yum install ibus.x86_64 -y \
    && yum install ibus-libpinyin.x86_64 -y \
    && yum install im-chooser.x86_64 -y \
    && yum clean all \
&& echo "install basic tools and desktop environment success."

# 安装其他工具包
# 升级git2
RUN yum -y install sudo \
    && yum -y install vim \
    && yum -y groupinstall "fonts" \
    && yum -y install net-tools \
    && yum -y install wget \ 
    && curl https://setup.ius.io | sh \
    && yum remove -y git | yum -y install git2u \
&& echo "install other tools success."

# 容器入口
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["bash", "/entrypoint.sh"]