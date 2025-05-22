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
