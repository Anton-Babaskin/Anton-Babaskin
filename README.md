👋 Hi, I’m Anton Babaskin @z3r0-gr4v1tY
👀 I’m interested in Linux solutions , mail servers and infrastructure for enterprise. (virtualisation,cloud,network,docker etc)



# 🛠️ Mail-in-a-Box Admin Scripts

A curated collection of Bash scripts for improving and automating the administration of **Mail-in-a-Box (MIAB)** mail servers.

---

## 📦 What’s Inside

### 📁 **backup_sftp.sh**  
🔄 Backs up the `/home/user-data` directory to a remote **SFTP server**, with logging and optional rotation.  
📝 Ideal for off-site backups via key-authenticated SFTP targets.
🧹 Automatically removes old archives from the remote server.
📲 Sends success/failure alerts to your Telegram bot (optional). 
#### ⚙️ Configuration
Before using this script, edit the variables at the top of the file:

```bash
SFTP_USER="your_sftp_username"
SFTP_HOST="your.sftp.server"
SFTP_PORT=22
SFTP_DIR="/backups/$(hostname)"
SOURCE_DIR="/home/user-data"

BOT_TOKEN="your_telegram_bot_token"   # Optional
CHAT_ID="your_telegram_chat_id"       # Optional

---

### ☁️ **backup_restic_webdav.sh**  
💾 Performs secure, incremental backups using **Restic + Rclone** to a WebDAV-compatible cloud (e.g. Hetzner Storage Box).  
🔍 Includes health checks and detailed logging.  
📆 Easily schedulable via `cron`.
📲 Sends success/failure alerts to your Telegram bot (optional).  
📘 Easily schedulable via `cron`.

#### ⚙️ Configuration
Before using this script, edit the variables at the top of the file:

```bash
# rclone + restic settings
RCLONE_REMOTE="hetzner_main:arc-trading.com/restic"
RESTIC_PASSWORD="your_secure_restic_password"

# Telegram (optional)
BOT_TOKEN="your_telegram_bot_token"
CHAT_ID="your_telegram_chat_id"

# Source and hostname
BACKUP_SOURCE="/home/user-data"
---

### 🕵️ **postgrey_notify_telegram.sh**   
Monitors **Postgrey greylisting events** and sends real-time notifications to a Telegram bot.

🔔 Sends two types of alerts:
- ⚠️ When a sender is **greylisted** (delayed by Postgrey)
- ✅ When the same sender **later successfully delivers** an email (passed greylisting)

🚫 Duplicate alerts are avoided — the script tracks previously seen entries and passed IPs.

---

#### ⚙️ Configuration

Edit the variables at the top of the script:

```bash
LOG_FILE="/var/log/mail.log"         # May also be /var/log/syslog depending on your system
BOT_TOKEN="your_telegram_bot_token"  # ← Your Telegram Bot Token
CHAT_ID="your_telegram_chat_id"      # ← Your Telegram Chat ID

✅The script internally uses:

/var/lib/postgrey-seen.log — tracks already-notified greylist entries

/var/lib/postgrey-passed.log — tracks IPs that eventually passed greylisting

⏱️ Scheduling
Recommended cron job (every 2 minutes):

*/2 * * * * /path/to/postgrey_notify_telegram.sh
📲Examples of Telegram notifications

⚠️ New greylisted sender:
postgrey[1234]: delayed SMTP connection from mail.example.com[203.0.113.5]

✅ Greylisted sender passed:
192.0.1.2
Message successfully delivered.
📌 This script is ideal for keeping an eye on greylist activity and ensuring that valid senders eventually succeed. Helps you fine-tune Postgrey behavior over time.
---

### 📬 **add_postfix_whitelist.sh**  
🛡️ Adds trusted **IPs/domains** to Postfix’s client whitelist.  
📂 Uses a clean, reusable template system.  
🧰 Works great with scripts for managing greylist exceptions.

---

## ⚙️ Requirements

✅ Mail-in-a-Box **v60+**  
🐧 Linux (Ubuntu recommended)  
🛠️ Tools: `bash`, `curl`, `jq`, `grep`, `awk`  
🔐 `restic`, `rclone` — for WebDAV/cloud backups  
🤖 Telegram Bot Token + Chat ID (for notifications)  
⏲️ `cron` (optional, for scheduled tasks)

---

## 📄 License

🆓 **MIT License** — free to use, fork, modify.  
🤝 Contributions welcome!

---

## ❗ Disclaimer

These scripts are provided **as-is**.  
Use with caution — especially in production environments. Always test first.

---
