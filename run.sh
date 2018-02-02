#!/bin/bash
docker rm -f mongo
docker run -v "$(pwd)/data":/data --name mongo -d mongo mongod --smallfiles
docker rm -f fg-server
docker run -d --name "fg-server" -t -i -v $PWD:/usr/src/app -p 3000:3000 --link mongo:mongo "charsi/fg-volunteer-server" 


