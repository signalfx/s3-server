#!/bin/sh

# simple start script to start both the server and socat if necessary
if [[ -f ${SSLCERTS}/server.crt && -f ${SSLCERTS}/server.key ]]; then
  socat openssl-listen:8080,fork,cert=${SSLCERTS}/server.crt,key=${SSLCERTS}/server.key,verify=0,method=TLS1.2 tcp:localhost:3010 &
fi

node bin/server.js
