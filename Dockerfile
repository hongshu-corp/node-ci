#!/bin/sh

FROM node:11.15.0-alpine
RUN apk update && apk upgrade && \
	apk add --no-cache git python openssh-client ansible && \
	yarn config set registry 'https://registry.npm.taobao.org'

ADD bin/ /usr/local/bin/
ADD .ssh/ /root/.ssh/
RUN chmod 600 ~/.ssh/ -R

