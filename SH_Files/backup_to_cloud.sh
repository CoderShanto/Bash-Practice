#!/bin/bash

FOLDER="$HOME/shanto"
DEST="mydrive:backups"  # 'mydrive' is a configured rclone remote

# Copy folder to the cloud with verbose output
rclone copy "$FOLDER" "$DEST" -v
