FROM node:slim

WORKDIR /

COPY package.json package-lock.json /

COPY server.js /server.js

RUN npm install redis --save

CMD node /server.js