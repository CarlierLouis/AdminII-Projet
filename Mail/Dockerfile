FROM ubuntu:latest
RUN apt update && apt upgrade -y

RUN apt install -y vim net-tools dnsutils apt-utils telnet mailutils

RUN apt install postfix

COPY ./Postfix_Config/ /etc/postfix/
#COPY ./Postfix_Config/master.cf /etc/postfix/

RUN apt install -y dovecot-core dovecot-imapd
RUN apt install -y dovecot-sieve dovecot-managesieved

COPY ./Dovecot_Config/ /etc/dovecot/conf.d/