#!/bin/bash

cd /workspace/sd-worker || exit
curl http://172.17.0.1:3003/pause-worker
if [ "$1" == "shutdown" ] || [ "$1" == "poweroff" ]; then
  poweroff
fi