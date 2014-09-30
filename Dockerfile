FROM debian:7.5

MAINTAINER Fredrik Vihlborg <fredrik.wihlborg@gmail.com>

# Disable frontend warnings
ENV DEBIAN_FRONTEND noninteractive

# Install Ruby and Node.js 
RUN echo "deb http://ftp.us.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y make g++ ruby-full nodejs ca-certificates libmysqlclient-dev
