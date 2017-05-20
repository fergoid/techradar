FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY ./webpack.config.js /usr/src/app/
#COPY ./scripts/ /usr/src/app/
#COPY ./src/ /usr/src/app/
COPY ./ /usr/src/app/

EXPOSE 8080
CMD [ "npm", "run", "dev" ]