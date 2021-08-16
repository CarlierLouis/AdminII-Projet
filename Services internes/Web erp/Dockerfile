FROM php:7.2-apache

RUN apt-get update && apt-get install -y 
RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN apt-get install -y curl 
RUN apt-get install vim -y

COPY ./weberp/www/ /var/www/
COPY ./weberp/config/ /etc/apache2/sites-available/
COPY ./weberp/apache2.conf /etc/apache2/apache2.conf
