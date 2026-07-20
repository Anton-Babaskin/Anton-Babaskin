# Project Map

This is the canonical map of my public repositories. It keeps project boundaries clear and helps avoid duplicate tools.

## Mail infrastructure

| Project | Responsibility | Status |
|---|---|---|
| [FleetOps](https://github.com/Anton-Babaskin/FleetOps) | Agentless, terminal-first diagnostics for Linux server fleets, with deterministic checks, SSH collection, a JSON contract and an optional Telegram interface. | Active, v0.1 |
| [miab-sentry](https://github.com/Anton-Babaskin/miab-sentry) | MailOps control plane over SSH with Telegram workflows, multi-host inventory, confirmed maintenance actions, SQLite audit and optional LLM explanations. | Active |
| [miab-radar](https://github.com/Anton-Babaskin/miab-radar) | Local Mail-in-a-Box health, deliverability and security diagnostics. | Active |
| [mail-sec-audit](https://github.com/Anton-Babaskin/mail-sec-audit) | Broad read-only security audit for Linux mail servers: services, exposure, authentication, DNS, TLS, firewall and Fail2Ban. | Active |
| [smtp-egress-audit](https://github.com/Anton-Babaskin/smtp-egress-audit) | Focused incident-response tool for attributing abnormal outbound SMTP connections to processes, Postfix activity, users, jobs or containers. | Active |
| [mail_analyzer.sh](https://github.com/Anton-Babaskin/mail_analyzer.sh) | Postfix log analytics: domains, relays, routes, volume and delivery failures. | Maintenance |
| [miab-whitelists](https://github.com/Anton-Babaskin/miab-whitelists) | Postfix/Postgrey whitelist management, cloud SPF range refresh and fleet synchronization. | Active |
| [miab-backups](https://github.com/Anton-Babaskin/miab-backups) | Restic/rclone backup automation for Mail-in-a-Box with Telegram reporting. | Maintenance |
| [Postfix-Telegram-Notifier](https://github.com/Anton-Babaskin/Postfix-Telegram-Notifier) | Real-time Postfix failure notifications through Telegram. | Maintenance |
| [postgrey-telegram-notify](https://github.com/Anton-Babaskin/postgrey-telegram-notify) | Stateful Postgrey and delivery notifications through a systemd timer. | Maintenance |

### Boundary rules

- Fleet-wide read-only diagnostics and stable CLI/JSON contracts belong in **FleetOps**.
- Mail-specific Telegram operations, confirmed changes and audit trails belong in **miab-sentry**.
- Local Mail-in-a-Box diagnostics belong in **miab-radar**.
- Broad mail-server security posture belongs in **mail-sec-audit**.
- Outbound TCP/25 attribution belongs in **smtp-egress-audit**.
- Postfix log statistics belong in **mail_analyzer.sh**.
- A third Telegram mail-event notifier should not be created without first evaluating consolidation of the two existing notifiers.

## Infrastructure and networking

| Project | Responsibility | Status |
|---|---|---|
| [Docker-WireGuard-Monitor](https://github.com/Anton-Babaskin/Docker-WireGuard-Monitor) | WireGuard monitoring for Docker deployments with Telegram alerts. | Maintenance |
| [WireGuard-Monitor](https://github.com/Anton-Babaskin/WireGuard-Monitor) | WireGuard monitoring for native Linux deployments. | Maintenance |
| [Xray-easy-installer](https://github.com/Anton-Babaskin/Xray-easy-installer) | Scripted Xray VLESS + REALITY deployment and user management. | Experimental |
| [amnezia-xray-core](https://github.com/Anton-Babaskin/amnezia-xray-core) | Upstream-derived Amnezia Xray runtime fork. | Upstream-derived |
| [proxmox-hetzner](https://github.com/Anton-Babaskin/proxmox-hetzner) | Upstream-derived Proxmox provisioning for Hetzner Rescue environments. | Upstream-derived |
| [SysTuneX](https://github.com/Anton-Babaskin/SysTuneX) | Windows 11 performance and latency optimization project. | Design / development |

## Documentation and supporting repositories

| Project | Responsibility | Status |
|---|---|---|
| [sysadmins-guides](https://github.com/Anton-Babaskin/sysadmins-guides) | Practical operations, mail, security and troubleshooting guides. | Active knowledge base |
| [anton-babaskin.github.io](https://github.com/Anton-Babaskin/anton-babaskin.github.io) | Personal GitHub Pages site. | Minimal |
| [dig-mxptr](https://github.com/Anton-Babaskin/dig-mxptr) | Legacy-named Postfix log domain report. The current implementation does not perform MX/PTR lookups. | Legacy / needs naming decision |
| [bright-bridge-bot-demo](https://github.com/Anton-Babaskin/bright-bridge-bot-demo) | Experimental demo; scope is not documented yet. | Experimental |
| [crypto-trader-agent](https://github.com/Anton-Babaskin/crypto-trader-agent) | Empty placeholder. | Empty |

## Before creating a repository

1. Identify the operational problem and intended user.
2. Check this map for an existing owner project.
3. Prefer extending the owner project when its architecture already fits.
4. Create a repository only when the lifecycle, security boundary or deployment model is genuinely different.
5. Document the new boundary here when a repository is created.
