FROM node:16

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/npde_modules/.bin:$PATH

COPY package*.json ./

RUN npm install

COPY . /usr/src/app

EXPOSE 4000
CMD [ "npm", "start"]