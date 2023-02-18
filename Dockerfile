FROM node:14

#Create app directory
#WORKDIR /usr/src/app
WORKDIR /home/ara/pokemon-showdown

#Install app dependencies
COPY package*.json ./

RUN npm install --verbose

#Bundle app source
COPY . .

EXPOSE 8080
#CMD [ "node", "server.js" ]
CMD node pokemon-showdown
