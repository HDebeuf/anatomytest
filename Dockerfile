FROM node:8
WORKDIR /client
COPY client/package.json /client
RUN npm install
COPY client/. /client
CMD node /client/index.js
EXPOSE 4200
