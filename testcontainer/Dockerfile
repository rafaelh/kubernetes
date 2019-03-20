# Dockerfile

FROM node:latest

WORKDIR /expressapp

COPY . .

ENV PORT=3000

RUN npm install

EXPOSE $PORT

ENTRYPOINT ["node", "app.js"]
