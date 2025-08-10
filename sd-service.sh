#!/bin/bash

service_name="sd-service"
service_file="/etc/systemd/system/$service_name.service"
working_directory="/workspace/stable-diffusion-webui"
script_path="$working_directory/app.sh"

# Check if the service file exists
if [ -e "$service_file" ]; then
  echo "Service file already exists. Updating the service..."
else
  echo "Creating a new service file..."
fi

# Create or update the service file
cat <<EOL | tee "$service_file" >/dev/null
[Unit]
Description=SD Service
After=network.target

[Service]
Type=simple
WorkingDirectory=$working_directory
ExecStart=$script_path
ExecStop=$script_path stop
Restart=always
RestartSec=10
StandardOutput=file:/workspace/logs/app.log
StandardError=file:/workspace/logs/app.log
User=ubuntu

[Install]
WantedBy=multi-user.target
EOL

# Reload systemd and enable/start the service
systemctl daemon-reload
systemctl enable "$service_name"

# Display the service status
systemctl status "$service_name"
