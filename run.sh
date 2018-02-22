#!/bin/bash
docker rm -f mongo
docker run -v "$(pwd)/data":/data --name mongo -d mongo mongod --smallfiles
docker exec -d mongo mongorestore --db volunteer /data/volunteer
docker rm -f fg-server
docker run -d --name "fg-server" -t -i -p 3000:3000 --link mongo:mongo "charsi/fg-volunteer-server" 


