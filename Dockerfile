FROM ubuntu:xenial
MAINTAINER fsoppelsa@mirantis.com
RUN apt-get update
RUN apt-get -y install wget
RUN wget -O - https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -
RUN echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main" > /etc/apt/sources.list.d/saltstack.list
RUN apt-get update
RUN apt-get -y install salt-master
RUN service salt-master start
