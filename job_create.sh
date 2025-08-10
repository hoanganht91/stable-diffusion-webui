#!/bin/bash

if ! command -v cron &> /dev/null; then
    echo "Cron is not installed. Installing it now..."
    apt update
    apt install cron
fi

if ! ps -ef | grep cron | grep -v grep > /dev/null; then
    echo "Cron is not running. Starting it now..."
    cron
fi

# Define the cron job command and schedule
cron_command="/workspace/stable-diffusion-webui/job_clean_outputs.sh >> /workspace/stable-diffusion-webui/job_clean_outputs.log 2>&1"
cron_schedule="0 4 * * *"

# Check if the cron job already exists in the crontab
if crontab -l | grep -q "$cron_command"; then
    (crontab -l | grep -v "$cron_command") | crontab -
    echo "Remove already exists: $cron_command"
fi

(crontab -l ; echo "$cron_schedule $cron_command") | crontab -
echo "Cron job added: $cron_schedule $cron_command"