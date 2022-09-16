FROM node:lts

WORKDIR /home/app

COPY . /home/app

RUN npm install

EXPOSE 8080

ENTRYPOINT ['node', 'index.js']