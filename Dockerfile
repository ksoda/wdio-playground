
FROM selenium/hub:3 AS hub
FROM node:10
WORKDIR /usr/src/app
COPY --from=hub /opt/bin/check-grid.sh /usr/src/check-grid.sh
RUN apt-get -qqy update \
    && apt-get -qqy --no-install-recommends install \
        jq \
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

COPY package*.json ./
RUN npm install

COPY . .
CMD [ "./wait-for-grid.sh", "npm", "start" ]
