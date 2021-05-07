FROM php:7.2-apache

RUN apt-get update && apt-get install -y 
RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN apt-get install -y curl 
RUN apt-get install vim -y

COPY ./web/www/index.html /var/www/index.html
COPY ./web/www/b2b/index.php /var/www/b2b/index.php
COPY ./web/config/ /etc/apache2/sites-available/
COPY ./web/apache2.conf /etc/apache2/apache2.conf
