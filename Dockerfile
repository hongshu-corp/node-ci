FROM node:11.15.0-alpine
RUN apk update && apk upgrade && \
	apk add --no-cache git ansible

