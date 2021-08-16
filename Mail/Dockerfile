FROM ubuntu:latest
RUN apt update && apt upgrade -y

RUN apt install -y sudo vim net-tools dnsutils apt-utils telnet mailutils openssl

RUN apt install postfix

COPY ./Postfix_Config/ /etc/postfix/
MKDIR /etc/postfix/ssl
MKDIR /etc/postfix/tls

sudo openssl req -new -x509 -nodes -out /etc/postfix/tls/smtpd.pem -keyout /etc/postfix/tls/smtpd.pem -days 3650

sudo openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/postfix/ssl/mailserver.key -out /etc/postfix/ssl/mailserver.crt -nodes -days 365

RUN apt install -y dovecot-core dovecot-imapd
RUN apt install -y dovecot-sieve dovecot-managesieved

COPY ./Dovecot_Config/ /etc/dovecot/conf.d/

CMD ["service saslauthd start; service postfix start; service dovecot start"]