#  enviorinment execution application
FROM node:18-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn 

COPY . .

RUN yarn build

EXPOSE 3000