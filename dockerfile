FROM node:13-alpine
WORKDIR /home/app
COPY package.json package-lock.json /home/app
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password
COPY ./ /home/app
RUN npm install
CMD ["node","server.js"]
