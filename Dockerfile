# syntax=docker/dockerfile:1
   
FROM node:19
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "pokemon-showdown"]
EXPOSE 8000
EXPOSE 443
