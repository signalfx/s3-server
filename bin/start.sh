#!/bin/sh

# simple start script to start both the server and socat if necessary
if [[ -f /etc/ssl/signalfx/server.crt && -f /etc/ssl/signalfx/server.key ]]; then
  socat openssl-listen:8080,fork,cert=/etc/ssl/signalfx/server.crt,key=/etc/ssl/signalfx/server.key,verify=0,method=TLS1.2 tcp:localhost:3010 &
fi

node bin/server.js
