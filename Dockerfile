# FROM --platform linux/amd64 node:18.16.0-alpine
FROM  node:18.16.0-alpine
WORKDIR /app
COPY . . 
# COPY app.js package.json ./
RUN npm install
RUN npm run test
RUN rm -rf tests
RUN rm -rf node_modules
RUN npm install --prod
EXPOSE 3000

CMD [ "node","app.js" ]

# FROM node:18-alpine
# WORKDIR /app
# COPY app.js package.json ./
# #instalar dependencia
# RUN npm install
# CMD ["node","app.js"]
# docker build --tag cron_ticker .