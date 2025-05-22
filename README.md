👋 Hi, I’m Anton Babaskin @z3r0-gr4v1tY
👀 I’m interested in Linux solutions , mail servers and infrastructure for enterprise. (virtualisation,cloud,network,docker etc)



# 🛠️ Mail-in-a-Box Admin Scripts

A curated collection of Bash scripts for improving and automating the administration of **Mail-in-a-Box (MIAB)** mail servers.

---

## 📦 What’s Inside

### 📁 **backup_sftp.sh**  
🔄 Backs up the `/home/user-data` directory to a remote **SFTP server**, with logging and optional rotation.  
📝 Ideal for off-site backups via key-authenticated SFTP targets.

---

### ☁️ **backup_restic_webdav.sh**  
💾 Performs secure, incremental backups using **Restic + Rclone** to a WebDAV-compatible cloud (e.g. Hetzner Storage Box).  
🔍 Includes health checks and detailed logging.  
📆 Easily schedulable via `cron`.

---

### 🕵️ **postgrey_notify_telegram.sh**  
📡 Watches Postgrey logs in real-time.  
📲 Sends instant alerts about greylist events to your **Telegram bot**.  
⚠️ Helps monitor legitimate sender delays and greylist efficiency.

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
