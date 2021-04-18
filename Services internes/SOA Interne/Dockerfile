FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt install bind9 bind9utils -y && apt-get update && apt-get install iputils-ping

WORKDIR /etc/bind

COPY ./named.conf /etc/bind/named.conf
COPY ./named.conf.local /etc/bind/named.conf.local
COPY ./named.conf.options /etc/bind/named.conf.options
COPY ./master/intranet.l1-1.ephec-ti.be /etc/bind/master/intranet.l1-1.ephec-ti.be
COPY ./master/0.16.172.in-addr.arpa /etc/bind/master/0.16.172.in-addr.arpa

EXPOSE 53
