FROM node:20-alpine

WORKDIR /app

COPY package.json ./
COPY app.js ./
COPY index.html ./

EXPOSE 3000

RUN apk add --no-cache curl bash && \
    npm install && \
    chmod +x app.js

CMD ["npm", "start"]
