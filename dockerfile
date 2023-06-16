FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm install express
COPY . .
ENV APP_PORT 3000
EXPOSE 3000
CMD [ "node", "app.js" ]
