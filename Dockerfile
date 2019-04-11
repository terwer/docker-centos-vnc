#依赖的镜像
FROM centos:centos7
#镜像创建者的信息
LABEL maintainer="Terwer Green <cbgtyw@gmail.com>"

### Envrionment config
ENV TZ=Asia/Shanghai \
    TZ=CST-8 \
    USER=terwer

# 添加网易源
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup \
    && curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.163.com/.help/CentOS7-Base-163.repo \
    && yum clean all \
    && yum makecache \
    && yum update -y \
    && yum upgrade -y \
&& echo "mirror set finished."

# 安装桌面及开发工具
# Install various packages to get compile environment
RUN yum install epel-release -y \
    && yum groupinstall "Server with GUI" -y \
    && yum groupinstall "Development Tools" -y \ 
    && yum groupinstall "MATE Desktop" -y \ 
    && yum groupinstall "X Window System" -y \
    && yum groupinstall xfce -y \
    && yum install pixman pixman-devel libXfont -y \
    && yum install tigervnc-server -y 

# 容器入口
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["bash", "/entrypoint.sh"]