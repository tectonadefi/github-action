FROM nikolaik/python-nodejs:python3.8-nodejs14-alpine

LABEL version="1.0.0"
LABEL repository="https://github.com/serverless/github-action"
LABEL homepage="https://github.com/serverless/github-action"
LABEL maintainer="Serverless, Inc. <hello@serverless.com> (https://serverless.com)"

LABEL "com.github.actions.name"="Serverless"
LABEL "com.github.actions.description"="Wraps the Serverless Framework to enable common Serverless commands."
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="red"


RUN apk add build-base
RUN apk add --no-cache gcc musl-dev
RUN npm i typescript -g

RUN npm i -g serverless@2.4.0
ENTRYPOINT ["serverless"]
