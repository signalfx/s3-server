FROM node:boron-alpine

COPY lib /my_app/lib/
COPY bin /my_app/bin/
COPY package.json /my_app/
RUN (cd /my_app && npm install)

CMD ["/bin/sh", "-c", "(cd /my_app && /usr/local/bin/node bin/server.js)"]
