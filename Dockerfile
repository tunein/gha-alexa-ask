# Container image that runs your code
FROM node:lts-alpine3.15

RUN npm install -g ask-cli

COPY cli_config.json /cli_config.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]