// Dockerfile

FROM node:latest

WORKDIR /expressapp

COPY . .

RUN npm install

EXPOSE 3000

ENTRYPOINT ["node", "app.js"]
