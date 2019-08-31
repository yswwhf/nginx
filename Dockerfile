FROM centos

RUN yum install -y wget
RUN wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo
RUN yum install -y nginx
RUN echo "daemon off;" >>/etc/nginx/nginx.conf
RUN echo '<h1>Hello! This message comes from terry2_yu!</h1>' > /usr/share/nginx/html/index.html
EXPOSE 80
CMD /usr/sbin/nginx





