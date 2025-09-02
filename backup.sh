#!/bin/bash

# Backup source directory
SOURCE="/var/log"

# Backup destination directory
DEST="/home/ajay/backups"

# Create destination directory if not exists
mkdir -p $DEST

# Filename with date
FILENAME="backup-$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

# Create backup
tar -czf $DEST/$FILENAME $SOURCE

# Print message
echo "Backup saved as $DEST/$FILENAME"

# Delete backups older than 7 days
find $DEST -type f -name "*.tar.gz" -mtime +7 -exec rm {} \;

echo "Old backups (7+ days) deleted."

