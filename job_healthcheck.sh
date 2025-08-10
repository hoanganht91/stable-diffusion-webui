#!/bin/bash

# Path to your Python script
script_path="/workspace/stable-diffusion-webui/healthcheck.py"
if [ "$1" == "install" ]; then
    # Check if the script is run with sudo
    sudoers_entry="root ALL=(ALL) NOPASSWD: $script_path"
    if grep -q "$sudoers_entry" /etc/sudoers; then
      echo "Sudoers entry already exists"
    else
      # Add sudoers entry to run the Python script without a password
      echo "$sudoers_entry" | EDITOR='tee -a' visudo
      echo "Sudoers entry added"
    fi
    exit 0
fi

# Define the cron job command and schedule
cron_command="python3 $script_path >> /workspace/logs/healthcheck.log 2>&1"
cron_schedule="*/5 * * * *"

# Check if the cron job already exists in the crontab
if crontab -l | grep -q "$cron_command"; then
    (crontab -l | grep -v "$cron_command") | crontab -
    echo "Remove already exists: $cron_command"
fi

if [ "$1" == "remove" ]; then
    exit 0
fi

(crontab -l ; echo "$cron_schedule $cron_command") | crontab -
echo "Cron job added: $cron_schedule $cron_command"