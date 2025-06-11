#!/bin/bash

# Services to check
SERVICES=("nginx" "mysql")

# Loop through each service
for service in "${SERVICES[@]}"; do
  # Check if service is active
  systemctl is-active --quiet "$service"

  if [[ $? -ne 0 ]]; then
    # Just print to console or log to a file
    echo "Service $service is NOT running!" >> ~/service_check.log
  fi
done
