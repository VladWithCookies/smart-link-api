FROM --platform=linux/amd64 node:18.4.0-alpine3.15

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

RUN npx prisma generate

CMD npm run start
