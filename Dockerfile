FROM node:18-alpine
LABEL maintainer="Yannick Chavanis<yannick.chavanis@etu.mines-ales.fr>"

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "run", "start"]
