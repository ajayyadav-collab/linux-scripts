# Automated Backup Script (Linux)

This script:
- Takes backup of `/var/log` folder
- Saves as `.tar.gz` with timestamp in /home/ajay/backups
- Deletes backups older than 7 days
- Can be automated with cron

## Usage
```bash
chmod +x backup.sh
./backup.sh
Cron Setup
Run daily at 2AM:
0 2 * * * ./backup.sh
