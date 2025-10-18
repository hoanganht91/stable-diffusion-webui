#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR

# Setup env
apt update -y
apt install -y aria2 lnav jq nano
apt install -y libgoogle-perftools4 libtcmalloc-minimal4

echo "Start sd-worker"
nohup bash /workspace/sd-worker/start-sd-worker.sh >/dev/null 2>&1 &

echo "Starting the app"
$SCRIPT_DIR/webui.sh --api-log --skip-prepare-environment
