FROM node:14.11.0-alpine

RUN npm install -g newman newman-reporter-html

WORKDIR /etc/newman

ENTRYPOINT ["newman"]