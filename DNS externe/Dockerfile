FROM ubuntu:latest

#Installation de bind9
RUN apt update && apt upgrade -y && apt install bind9 bind9utils dnsutils net-tools -y

#Copie des fichiers d'installations préparé et configuré
COPY named.conf /etc/bind/
COPY named.conf.options /etc/bind/
COPY named.conf.local /etc/bind/

COPY db.l1-1.ephec-ti.be /etc/bind/zones/

EXPOSE 53/udp
EXPOSE 53/tcp

#Commande réalisé au démarage du conteneur
CMD named -g