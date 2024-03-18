# FROM --platform linux/amd64 node:18.16.0-alpine // le digo yo que plataforma
# FROM --platform=$BUILDPLATFORM node:18.16.0-alpine
# FROM --platform=$BUILDPLATFORM node:18.16.0-alpine

# DEPENDENCIAS
FROM  node:18.16.0-alpine as dependencias
WORKDIR /app
COPY package.json ./
RUN npm install

# EJECUTAR TEST
FROM  node:18.16.0-alpine as builder
WORKDIR /app
COPY --from=dependencias /app/node_modules ./node_modules
COPY . .
RUN npm run test

# EJECUTAR LA APP
FROM node:18.16.0-alpine as runner
WORKDIR /app
COPY package.json ./
RUN npm install --prod
COPY app.js ./
COPY tasks/ ./tasks
CMD [ "node","app.js" ]

# FROM node:18-alpine
# WORKDIR /app
# COPY app.js package.json ./
# #instalar dependencia
# RUN npm install
# testing
#RUN npm run test
# CMD ["node","app.js"]
# docker build --tag cron_ticker:1.1.0 .