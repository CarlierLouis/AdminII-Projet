FROM mysql:latest

RUN apt update && apt upgrade -y
RUN apt-get install vim -y

WORKDIR /etc/

COPY ./db/ etc/db/
