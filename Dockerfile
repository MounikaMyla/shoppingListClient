FROM alpine

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

copy package.json /usr/src/app/

#RUN apk add update && apt add curl

RUN apk add npm

ADD src /usr/src/app/src
ADD public /usr/src/app/public

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
