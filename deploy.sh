#!/bin/bash
host=165.227.22.202
path="/home/nishil/fg-volunteer-server/"
ssh $host "cd "$path"; git pull  && exit"
rsync -r ./data/ $host:$path"data"
ssh root@$host "cd "$path"; ./run.sh  && exit"