FROM node:11.15.0-alpine
RUN apk update && apk upgrade && \
	apk add --no-cache git ansible && \
	echo "${DEPLOY_KEY}" > ~/.ssh/id_rsa && \
	chmod 600 ~/.ssh/id_rsa

