mkdir -p ~/.ssh/id_rsa && \
echo "$DEPLOY_KEY" > ~/.ssh/id_rsa && \
	chmod 600 ~/.ssh/id_rsa

