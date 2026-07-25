# syntax=docker/dockerfile:1

FROM node:24-alpine

WORKDIR /app

COPY . .

RUN npm install --omit=dev

EXPOSE 3000

CMD ["node", "src/index.js"]
