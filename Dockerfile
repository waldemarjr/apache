FROM debian

MAINTAINER Waldemar Dibiazi Junior <waldemar@proredetelecom.com.br>

RUN apt-get update && apt-get install -y apache2 wget && apt-get clean && wget http://www.proredetelecom.com.br/wp-content/uploads/2017/04/proredeLogoSmall.png -P /var/www/html 

ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"

LABEL Description="Apache Webserver - Debian - v1.0"

#VOLUME /www-data

EXPOSE 80

CMD /etc/init.d/apache2 start && /bin/bash


