FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install nodejs && apt-get -y install npm && apt-get -y install git && apt-get -y install vim

WORKDIR /home/

RUN git clone https://github.com/dschuld/hundredtickets.git

RUN cd /home/hundredtickets/src && npm install --save-dev jshint gulp-jshint && npm install && npm -g install gulp-cli && npm install gulp && ln -s /usr/bin/nodejs /usr/bin/node

ENV LOCAL_DEV_THEME_DIR=/home/theme/twentythirteen-hundredtickets-dev
ENV LOCAL_PROD_THEME_DIR=/home/theme/twentythirteen-hundredtickets