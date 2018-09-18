FROM node:8
WORKDIR /client
COPY client/package.json /client
RUN npm install
COPY client/. /client
EXPOSE 4200
CMD $(npm bin)/ng build --prod
