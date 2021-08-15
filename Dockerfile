FROM node:16.5-alpine3.12

MAINTAINER matdsoupe

WORKDIR /scti

ARG NODE_ENV=production

COPY package.json yarn.lock ./

RUN yarn

COPY . ./

CMD ["sh", "./entrypoint.sh"]
