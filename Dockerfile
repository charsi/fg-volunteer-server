FROM node:9.11.1-alpine

WORKDIR usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "install"]

CMD ["npm", "start"]