#依赖的镜像
FROM centos:centos7
#镜像创建者的信息
LABEL maintainer="Terwer Green <cbgtyw@gmail.com>"

### Envrionment config
ENV LANG=C.UTF-8 \
    TZ=Asia/Shanghai \
    TZ=CST-8 \
    USER=terwer

# 添加阿里云源
RUN rm -rf /etc/yum.repos.d/* \
    && curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo \
    && yum clean all \
    && yum makecache \
    && yum update -y \
    && yum upgrade -y \
&& echo "mirror set finished."

# 创建用户
RUN useradd -m -g root terwer \
    && echo "$USER:123456" | chpasswd

# 安装mate-desktop、VNC
RUN yum groups install "MATE Desktop" -y \
    && yum groups install "X Window System" -y \
    && yum install tigervnc-server -y

# 容器入口
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["bash", "/entrypoint.sh"]