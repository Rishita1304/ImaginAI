
ARG NODE_VERSION=20.11.0

FROM node:${NODE_VERSION}-alpine

ENV NODE_ENV production

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install --save-exact --save-dev typescript @types/react

COPY . .

EXPOSE 3000

CMD npm run dev
