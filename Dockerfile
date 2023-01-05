FROM node:14.21.2-alpine
WORKDIR /app
COPY . .
WORKDIR /app/www
RUN npm install
CMD npm run start
EXPOSE 8080