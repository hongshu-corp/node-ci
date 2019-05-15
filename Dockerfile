#!/bin/sh

FROM node:11.15.0-alpine
COPY setup_deploy.sh /usr/local/bin/setup_deploy.sh
RUN apk update && apk upgrade && \
	apk add --no-cache git python openssh-client ansible && \
	chmod +x /usr/local/bin/setup_deploy.sh && \
	yarn config set registry 'https://registry.npm.taobao.org'

