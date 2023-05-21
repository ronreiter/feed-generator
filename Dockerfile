FROM node:20-alpine3.16
RUN apk update && apk add --no-cache make gcc libc-dev g++ python3

WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install
COPY . .
EXPOSE 3000
CMD ["yarn", "start"]

