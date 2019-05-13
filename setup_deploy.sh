mkdir -p ~/.ssh/ && \
echo "$DEPLOY_KEY" > ~/.ssh/id_rsa && \
	chmod 600 ~/.ssh/id_rsa

