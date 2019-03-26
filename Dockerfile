FROM node:11
WORKDIR /var/opt
COPY package* ./
RUN npm install
COPY . .