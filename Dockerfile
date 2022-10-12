FROM node:15

WORKDIR /usr/app

RUN npm install -g nodemon && \
    npm install --save-dev nodemon

EXPOSE 3000