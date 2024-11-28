#!/bin/bash

cd /workspace/sd-worker || exit
docker compose pull
curl --max-time 60 http://172.17.0.1:3003/pause-worker && sleep 10
docker compose down
docker compose up -d