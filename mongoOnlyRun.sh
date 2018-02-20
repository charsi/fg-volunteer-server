#!/bin/bash
docker rm -f mongo
docker run -v "$(pwd)/data":/data --name mongo -p 27017:27017 -d mongo mongod --smallfiles 
docker exec -d mongo mongorestore --db volunteer /data/volunteer
