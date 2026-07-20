# Anton Babaskin

**Senior Infrastructure Architect · Linux & DevOps Engineer · Mail Infrastructure Specialist**

I design, build, and operate production infrastructure, working primarily with Linux across system administration, architecture, and day-to-day production operations. I bring more than 15 years of hands-on experience maintaining reliable systems and solving practical infrastructure problems.

My work covers mail systems, virtualization, networks, VPNs, backup and recovery, monitoring, security, and infrastructure automation. I focus on understandable architectures, controlled changes, useful diagnostics, and operational tools that are safe to run on real systems.

Website: [babaskin.dev](https://babaskin.dev/) · [LinkedIn](https://www.linkedin.com/in/anton-babaskin/) · [Telegram](https://t.me/sen1or_anykey) · [Email](mailto:i@babaskin.dev) · [DOU](https://dou.ua/users/appsklaw/)

## Featured projects

### Infrastructure and MailOps

| Project | Description | Stack |
|---|---|---|
| [FleetOps](https://github.com/Anton-Babaskin/FleetOps) | Agentless Linux infrastructure diagnostics with a terminal-first CLI, deterministic health checks, SSH collection, a versioned JSON contract, and an optional Telegram interface. | Python, asyncssh, Pydantic, Docker |
| [miab-sentry](https://github.com/Anton-Babaskin/miab-sentry) | Telegram-based MailOps control plane for diagnosing and managing Linux mail servers through whitelisted SSH commands, confirmed actions, and SQLite audit logging. | Python, SSH, Telegram, SQLite |
| [miab-radar](https://github.com/Anton-Babaskin/miab-radar) | Terminal-based Mail-in-a-Box monitoring and audit tool for health, mail flow, deliverability, DNS, TLS, and security checks. | Bash, Postfix, Dovecot, DNS |
| [mail-sec-audit](https://github.com/Anton-Babaskin/mail-sec-audit) | Structured, read-only-by-default security audit for Linux mail servers, covering services, exposure, authentication, DNS, TLS, firewalls, and Fail2Ban. | Bash, Linux, mail services |
| [smtp-egress-audit](https://github.com/Anton-Babaskin/smtp-egress-audit) | Read-only incident-response tool that attributes abnormal outbound SMTP connections to processes, Postfix activity, users, jobs, or containers. | Bash, ss, tcpdump/eBPF, Postfix |

### Mail automation

| Project | Description | Stack |
|---|---|---|
| [miab-whitelists](https://github.com/Anton-Babaskin/miab-whitelists) | Postfix and Postgrey whitelist management, recursive SPF range refresh, and fleet synchronization for Mail-in-a-Box. | Bash, Postfix, Postgrey, systemd |
| [miab-backups](https://github.com/Anton-Babaskin/miab-backups) | Mail-in-a-Box backup automation using Restic over an rclone WebDAV remote, with integrity checks, retention, and Telegram reporting. | Bash, Restic, rclone |
| [mail_analyzer.sh](https://github.com/Anton-Babaskin/mail_analyzer.sh) | Postfix log analysis for domains, relays, routes, traffic volume, and delivery failures. | Bash, awk |
| [Postfix-Telegram-Notifier](https://github.com/Anton-Babaskin/Postfix-Telegram-Notifier) | Real-time Telegram alerts for bounced, deferred, and rejected Postfix deliveries. | Bash, systemd, Telegram |
| [postgrey-telegram-notify](https://github.com/Anton-Babaskin/postgrey-telegram-notify) | Stateful Telegram notifications for Postgrey greylisting events and Postfix delivery statuses, scheduled with systemd. | Bash, systemd, Telegram |

### Networking and systems

| Project | Description | Stack |
|---|---|---|
| [Docker-WireGuard-Monitor](https://github.com/Anton-Babaskin/Docker-WireGuard-Monitor) | Monitoring for containerized WireGuard deployments, including container, interface, handshake, and health checks with Telegram alerts. | Bash, Docker, WireGuard |
| [WireGuard-Monitor](https://github.com/Anton-Babaskin/WireGuard-Monitor) | All-in-one monitoring and installation tooling for native WireGuard deployments on Linux. | Bash, WireGuard, systemd |
| [proxmox-hetzner](https://github.com/Anton-Babaskin/proxmox-hetzner) | Upstream-derived automation for installing Proxmox VE on Hetzner dedicated servers from Rescue mode without KVM console access. | Shell, Proxmox VE, Hetzner, ZFS |
| [SysTuneX](https://github.com/Anton-Babaskin/SysTuneX) | Windows 10/11 performance and latency optimization application built around measurable, transparent, and reversible changes. | .NET, PowerShell, WinAPI |
| [Xray-easy-installer](https://github.com/Anton-Babaskin/Xray-easy-installer) | Installer and user-management tooling for Xray VLESS with REALITY, systemd integration, and firewall configuration. | Bash, Xray, systemd |
| [sysadmins-guides](https://github.com/Anton-Babaskin/sysadmins-guides) | Practical guides for Linux operations, mail infrastructure, security, and troubleshooting. | Markdown, GitHub Pages |

## Project map

The complete repository catalog, current status, and project boundary rules are maintained in [PROJECTS.md](./PROJECTS.md). The profile selection above follows that map and highlights representative infrastructure, MailOps, automation, and systems work without duplicating project scopes.

## Core stack

Linux · Debian · Ubuntu · Postfix · Dovecot · Mail-in-a-Box · Docker · Proxmox VE · ZFS · Restic · rclone · WireGuard · Xray · Bash · Python · Go · PowerShell

## Contact

- Website: [babaskin.dev](https://babaskin.dev/)
- GitHub: [Anton-Babaskin](https://github.com/Anton-Babaskin)
- LinkedIn: [Anton Babaskin](https://www.linkedin.com/in/anton-babaskin/)
- Telegram: [@sen1or_anykey](https://t.me/sen1or_anykey)
- Email: [i@babaskin.dev](mailto:i@babaskin.dev)
- DOU: [Anton Babaskin](https://dou.ua/users/appsklaw/)
