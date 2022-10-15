FROM node:15

# Define workspace 
WORKDIR /usr/app

# Add nodemon to watch files
RUN npm install -g nodemon && \
    npm install --save-dev nodemon

EXPOSE 3000