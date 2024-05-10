# Dockerfile

FROM node:20.13.0-buster-slim

WORKDIR /expressapp

COPY . .

ENV PORT=3000

RUN npm install

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]
