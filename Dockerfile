# syntax=docker/dockerfile:1
   
FROM node:19
WORKDIR /app
COPY . .
RUN yarn install --production
RUN apt-get remove certbot
RUN snap install --classic certbot
RUN ln -s /snap/bin/certbot /usr/bin/certbot
RUN certbot certonly --standalone
CMD ["node", "pokemon-showdown"]
EXPOSE 8000
