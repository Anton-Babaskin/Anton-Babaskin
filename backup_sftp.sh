#!/bin/bash

# === CONFIGURATION ===

# Remote SFTP destination
SFTP_USER="backupuser"
SFTP_HOST="your.sftp.server"
SFTP_PORT=22
SFTP_DIR="/backups/$(hostname)"

# Local source directory
SOURCE_DIR="/home/user-data"

# Log file
LOG_FILE="/var/log/miab_sftp_backup.log"

# Retention (in days)
RETENTION_DAYS=7

# === FUNCTIONS ===

log() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] $1" | tee -a "$LOG_FILE"
}

send_telegram() {
    # Optional: send Telegram notification
    [[ -z "$BOT_TOKEN" || -z "$CHAT_ID" ]] && return
    curl -s -X POST https://api.telegram.org/bot${BOT_TOKEN}/sendMessage \
         -d chat_id="${CHAT_ID}" \
         -d text="$1"
}

# === START BACKUP ===

log "Starting SFTP backup..."

# Create archive
ARCHIVE_NAME="miab-backup-$(date +'%Y-%m-%d_%H-%M').tar.gz"
tar -czf "/tmp/${ARCHIVE_NAME}" "$SOURCE_DIR" 2>>"$LOG_FILE"

if [[ $? -ne 0 ]]; then
    log "Failed to create archive."
    send_telegram "❌ MIAB Backup FAILED: Archive creation error on $(hostname)"
    exit 1
fi

# Send via SFTP
log "Uploading archive to SFTP..."
sftp -P "$SFTP_PORT" "$SFTP_USER@$SFTP_HOST" <<EOF >>"$LOG_FILE" 2>&1
mkdir $SFTP_DIR
cd $SFTP_DIR
put /tmp/${ARCHIVE_NAME}
EOF

if [[ $? -ne 0 ]]; then
    log "SFTP upload failed."
    send_telegram "❌ MIAB Backup FAILED: Upload error on $(hostname)"
    rm -f "/tmp/${ARCHIVE_NAME}"
    exit 1
fi

log "Backup uploaded successfully."
send_telegram "✅ MIAB Backup complete: ${ARCHIVE_NAME} uploaded to $SFTP_HOST"

# Cleanup
rm -f "/tmp/${ARCHIVE_NAME}"

# Remove old backups on remote (if key-based SSH access is enabled)
log "Cleaning up old backups (older than $RETENTION_DAYS days)..."
ssh -p "$SFTP_PORT" "$SFTP_USER@$SFTP_HOST" "find $SFTP_DIR -type f -name '*.tar.gz' -mtime +$RETENTION_DAYS -delete" >>"$LOG_FILE" 2>&1

log "Cleanup complete."

exit 0
