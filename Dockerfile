FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install nodejs
RUN apt-get -y install npm
RUN apt-get -y install git

WORKDIR /home/s11

RUN git clone https://github.com/dschuld/S11.git

# WORKDIR /home/s11/S11/src
RUN cd /home/s11/S11/src && npm install --save-dev jshint gulp-jshint && npm install && npm -g install gulp-cli && npm install gulp && ln -s /usr/bin/nodejs /usr/bin/node


#ENV stuff for theme deploy