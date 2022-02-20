# Container image that runs your code
FROM node:lts-alpine3.15

RUN npm install -g ask-cli

WORKDIR /home/node

COPY cli_config.json /cli_config.json

ADD entrypoint.sh /entrypoint.sh
RUN chmod 700 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]