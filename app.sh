#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ "$1" == "stop" ]; then
    echo "Stop the app"
    curl http://172.17.0.1:3003/pause-worker
    $SCRIPT_DIR/job_healthcheck.sh remove
    exit 0
fi

# Run the first script
echo "Updating source code to latest version"
nohup "$SCRIPT_DIR/update-worker.sh" > /dev/null 2>&1 &
$SCRIPT_DIR/update.sh

$SCRIPT_DIR/job_healthcheck.sh

echo "Starting the app"
$SCRIPT_DIR/webui.sh --api-log --skip-prepare-environment

$SCRIPT_DIR/job_healthcheck.sh remove
