FROM node:latest

WORKDIR /app

COPY package.json ./
COPY app.js ./

EXPOSE 3000

RUN apt-get update -y && \
    apt-get install -y curl bash && \
    npm install && \
    chmod +x app.js

CMD ["npm", "start"]
