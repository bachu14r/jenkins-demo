#We create a base image.
FROM node:14.15.3 as build

WORKDIR /app

COPY package*.json /app/

RUN npm install
RUN npx browserslist@latest --update-db
RUN npm install --save @ionic-native/core

COPY . /app

CMD npm run serve
