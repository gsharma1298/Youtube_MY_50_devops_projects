#!/bin/bash

SOURCE="/var/log/nginx"
BACKUP_DIR="/home/ubuntu/backups"

mkdir -p "$BACKUP_DIR"

DATE=$(date +"%Y-%m-%d-%H-%M-%S")

tar -czf "$BACKUP_DIR/nginx-$DATE.tar.gz" "$SOURCE"

echo "Backup completed successfully."
echo "Backup file: nginx-$DATE.tar.gz"
