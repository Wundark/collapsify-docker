FROM node:10-alpine

USER root

RUN apk add python make g++ git && \
 git clone https://github.com/cloudflare/collapsify.git && \
 cd collapsify && \
 npm install

ENTRYPOINT ["collapsify/bin/cli.js"]
