FROM node:12.16.2-alpine As builder

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

RUN npm install -g @angular/cli@7.3.9

COPY . .

CMD ng serve