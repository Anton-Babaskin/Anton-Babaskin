# Hi, I'm Anton Babaskin

**Linux & DevOps Engineer · Infrastructure Architect · Mail Server Specialist · System Administrator**

I build and operate production Linux infrastructure, with a strong focus on mail systems, diagnostics, security and practical automation.

- Mail infrastructure: Postfix, Dovecot, Mail-in-a-Box, iRedMail, Zimbra, SMTP relays and deliverability
- Linux operations: diagnostics, monitoring, maintenance and incident response
- Security and DNS: SPF, DKIM, DMARC, DNSSEC, MTA-STS, TLS and Fail2Ban
- Infrastructure: Docker, Proxmox, ZFS, backups, WireGuard and Xray
- Automation: Bash and Python tools designed around real operational workflows

## Featured projects

### Infrastructure and MailOps

| Project | Description | Stack |
|---|---|---|
| [FleetOps](https://github.com/Anton-Babaskin/FleetOps) | Agentless diagnostics for Linux server fleets with a terminal-first CLI, deterministic checks, SSH collection and optional Telegram control. | Python, asyncssh, Pydantic, Docker |
| [miab-sentry](https://github.com/Anton-Babaskin/miab-sentry) | Multi-host MailOps control plane with Telegram workflows, whitelisted SSH operations, confirmations and audit logging. | Python, SSH, Telegram, SQLite |
| [miab-radar](https://github.com/Anton-Babaskin/miab-radar) | Local Mail-in-a-Box health, deliverability and security diagnostics. | Bash, Postfix, Dovecot, DNS |
| [mail-sec-audit](https://github.com/Anton-Babaskin/mail-sec-audit) | Read-only security audit for Linux mail servers. | Bash, Linux, mail services |
| [smtp-egress-audit](https://github.com/Anton-Babaskin/smtp-egress-audit) | Attributes abnormal outbound SMTP traffic to processes, Postfix activity, users, jobs and containers. | Bash, ss, tcpdump/eBPF, Postfix |

### Mail automation

| Project | Description | Stack |
|---|---|---|
| [miab-whitelists](https://github.com/Anton-Babaskin/miab-whitelists) | Safe Postfix/Postgrey whitelist management and fleet synchronization. | Bash, Postfix, Postgrey, systemd |
| [mail_analyzer.sh](https://github.com/Anton-Babaskin/mail_analyzer.sh) | Postfix log analytics for domains, routes, relays, volume and failures. | Bash, awk |
| [miab-backups](https://github.com/Anton-Babaskin/miab-backups) | Mail-in-a-Box backup automation with Restic, rclone and Telegram reporting. | Bash, Restic, rclone |
| [Postfix-Telegram-Notifier](https://github.com/Anton-Babaskin/Postfix-Telegram-Notifier) | Real-time delivery failure alerts. | Bash, systemd, Telegram |
| [postgrey-telegram-notify](https://github.com/Anton-Babaskin/postgrey-telegram-notify) | Postgrey and mail-delivery notifications. | Bash, systemd, Telegram |

### Networking and systems

| Project | Description | Stack |
|---|---|---|
| [Docker-WireGuard-Monitor](https://github.com/Anton-Babaskin/Docker-WireGuard-Monitor) | WireGuard monitoring for Docker deployments. | Bash, Docker, WireGuard |
| [WireGuard-Monitor](https://github.com/Anton-Babaskin/WireGuard-Monitor) | WireGuard monitoring for native Linux installations. | Bash, WireGuard, systemd |
| [Xray-easy-installer](https://github.com/Anton-Babaskin/Xray-easy-installer) | Scripted Xray VLESS + REALITY deployment. | Bash, Xray, systemd |
| [SysTuneX](https://github.com/Anton-Babaskin/SysTuneX) | Windows 11 performance and latency optimization project. | .NET, PowerShell, WinAPI |
| [sysadmins-guides](https://github.com/Anton-Babaskin/sysadmins-guides) | Production-oriented system administration and mail infrastructure guides. | Markdown, GitHub Pages |

## Project map

The full repository catalog and project boundary rules are maintained in [PROJECTS.md](./PROJECTS.md). I use this map to extend existing tools instead of creating overlapping repositories.

## Core stack

Linux · Debian · Ubuntu · Postfix · Dovecot · Mail-in-a-Box · Docker · Proxmox VE · ZFS · Restic · rclone · WireGuard · Xray · Bash · Python · Go · PowerShell

## Contact

- Website: [babaskin.systems](https://babaskin.systems)
- Email: [me@fy-consulting.net](mailto:me@fy-consulting.net)
- LinkedIn: [Anton Babaskin](https://www.linkedin.com/in/anton-babaskin/)
- DOU: [Anton Babaskin](https://dou.ua/users/appsklaw/)

> Infrastructure automation shaped by real production operations.
