FROM debian:stretch
EXPOSE 80 3306
RUN echo "deb http://mirrors.ustc.edu.cn/debian stretch main non-free contrib" > /etc/apt/sources.list && \
    echo 'Acquire::ForceIPv4 "true";' > /etc/apt/apt.conf.d/99force-ipv4 && \
    apt-get update && apt-get -y install net-tools curl nginx git unzip php7.0 php7.0-fpm php7.0-cli php7.0-mbstring php7.0-xml php7.0-zip php7.0-mysql php7.0-curl php7.0-gd composer mysql-server && \
    apt-get -y clean
COPY start.sh /
COPY nginx/default /etc/nginx/sites-available/default
COPY nginx/fastcgi.conf /etc/nginx/fastcgi.conf
CMD ["/start.sh"]