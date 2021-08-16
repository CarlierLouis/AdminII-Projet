FROM ubuntu:latest

RUN apt-get update && apt-get install -y 
RUN apt-get install -y dnsutils net-tools iputils-ping
RUN apt-get install -y curl elinks
RUN apt-get install vim -y

RUN useradd -ms /bin/bash compta

USER compta

CMD tail -f /dev/null
