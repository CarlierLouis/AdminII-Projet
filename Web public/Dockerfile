FROM php:7.2-apache

# Ajout de différents packages.
RUN apt-get update && apt-get install -y 
RUN apt-get update && apt-get install -y bind9
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN apt-get install -y curl 
RUN apt-get install vim -y


# Copie des fichiers à implémenter dans le container docker "web".
COPY ./web/www/index.html /var/www/index.html
COPY ./web/www/b2b/index.php /var/www/b2b/index.php
COPY ./web/config/ /etc/apache2/sites-available/
COPY ./web/apache2.conf /etc/apache2/apache2.conf
