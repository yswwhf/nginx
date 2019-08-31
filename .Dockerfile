#This dockerfile uses the centos image
#Nginx TEST Demo VERSION 1 - EDITION 1
#Author:terry2_yu terry2_yu@asus.com
#Command format:
# 指定基于的基础镜像
FROM centos
 
#维护者信息
MAINTAINER terry2_yu terry2_yu@asus.com
 
#镜像的操作指令
RUN yum install -y wget
RUN wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo
RUN yum install -y nginx
RUN echo "daemon off;" >>/etc/nginx/nginx.conf
#添加文件需存在当前目录下
ADD index.html /usr/share/nginx/html/index.html
RUN echo '<h1>Hello! This message comes from terry2_yu!</h1>' > index.html
EXPOSE 80
#容器启动时执行命令
CMD /usr/sbin/nginx





