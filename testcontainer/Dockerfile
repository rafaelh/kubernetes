# Dockerfile

FROM node:current-buster-slim

WORKDIR /expressapp

COPY . .

ENV PORT=3000

RUN npm install

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]
