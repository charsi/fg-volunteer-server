#!/bin/bash
docker exec -i mongo mongodump --db volunteer --out /data/backups/`date "+%Y-%m-%d"`
chown -R nishil:nishil ./data/backups