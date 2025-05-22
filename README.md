📦 What’s Inside

### 📁 backup_sftp.sh  
🔄 Backs up the `/home/user-data` directory to a remote **SFTP server**, with logging and optional rotation.  
🗄️ Ideal for off-site backups via key-authenticated SFTP targets.  
🧹 Automatically removes old archives from the remote server.  
📲 Sends success/failure alerts to your Telegram bot (optional).

#### ⚙️ Configuration

```bash
SFTP_USER="your_sftp_username"
SFTP_HOST="your.sftp.server"
SFTP_PORT=22
SFTP_DIR="/backups/$(hostname)"
SOURCE_DIR="/home/user-data"

BOT_TOKEN="your_telegram_bot_token"   # Optional
CHAT_ID="your_telegram_chat_id"       # Optional
```
☁️ backup_restic_webdav.sh
💾 Performs secure, incremental backups using Restic + Rclone to a WebDAV-compatible cloud storage (e.g. Hetzner Storage Box).
🔐 All data is encrypted client-side using a strong password.
🧹 Supports snapshot pruning (daily/weekly/monthly).
📲 Sends status to Telegram (optional).
🕒 Easily schedulable via cron.

⚙️ Configuration

 ```bash
RCLONE_REMOTE="your_rclone_remote:your/path"
RESTIC_PASSWORD="your_secure_restic_password"

BOT_TOKEN="your_telegram_bot_token"   # Optional
CHAT_ID="your_telegram_chat_id"       # Optional

BACKUP_SOURCE="/home/user-data"
 ```
🕵️ postgrey_notify_telegram.sh
Monitors Postgrey greylisting events and sends real-time alerts to a Telegram bot.

🔔 Sends two types of alerts:
⚠️ When a sender is greylisted
✅ When the same sender later successfully delivers a message
🧠 Prevents duplicate alerts by tracking sender IPs.

⚙️ Configuration
 ```bash
LOG_FILE="/var/log/mail.log"
BOT_TOKEN="your_telegram_bot_token"
CHAT_ID="your_telegram_chat_id"
Internal state files used:

/var/lib/postgrey-seen.log — already notified greylist entries

/var/lib/postgrey-passed.log — IPs that passed greylisting
 
🕒 Cron example

*/2 * * * * /path/to/postgrey_notify_telegram.sh
📲 Telegram messages


⚠️ New greylisted sender:
postgrey[1234]: delayed SMTP connection from mail.example.com[203.0.113.5]

✅ Greylisted sender passed:
203.0.113.5
Message successfully delivered.
