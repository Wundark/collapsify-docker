FROM node:10-alpine

USER root

RUN apk add python make g++ && yarn global add collapsify

ENTRYPOINT ["collapsify"]
