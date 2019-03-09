FROM node:8.6-alpine
 
RUN mkdir -p /restAPI
WORKDIR /restAPI

RUN npm install
RUN npm install sqlite3 express js2xmlparser body-parser cookie-parser md5 express-xml-bodyparser uuid

COPY package.json ./

COPY www/index.html ./www/

COPY app.js books.db ./

EXPOSE 80
CMD ["npm", "start"]

