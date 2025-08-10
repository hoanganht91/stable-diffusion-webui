#!/bin/bash

cd /workspace/sd-worker || exit
curl http://172.17.0.1:3003/pause-worker
sleep 10
service sd-service restart
docker compose down
docker compose up -d