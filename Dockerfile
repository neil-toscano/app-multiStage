# FROM --platform linux/amd64 node:18.16.0-alpine // le digo yo que plataforma
FROM --platform=$BUILDPLATFORM node:18.16.0-alpine

# FROM  node:18.16.0-alpine
WORKDIR /app  # entro al directorio igual que cd
COPY . .
# COPY app.js package.json ./
RUN npm install
RUN npm run test
RUN rm -rf tests
RUN rm -rf node_modules
# unicamente las dependencias de prod
RUN npm install --prod 
#EXPOSE 3000

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