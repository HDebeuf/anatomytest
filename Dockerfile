FROM node:7
WORKDIR /client
COPY client/package.json /client
RUN npm install
COPY client/. /client
CMD node /client/index.js
EXPOSE 4200
