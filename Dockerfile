FROM debian:jessie

MAINTAINER Fredrik Vihlborg <fredrik.wihlborg@gmail.com>

# Disable frontend warnings
ENV DEBIAN_FRONTEND noninteractive

# Install Ruby and Node.js 
RUN echo "deb http://ftp.us.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get install -y make g++ ruby-full nodejs ca-certificates libmysqlclient-dev && \
    apt-get -y clean
