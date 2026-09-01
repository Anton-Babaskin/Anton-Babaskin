<div align="center">

# 👋 Anton Babaskin

### Linux Engineer · DevOps Engineer · System Administrator

<p>
  Anton Babaskin is a DevOps Engineer, Linux Engineer and System Administrator focused on production infrastructure, automation, observability, security and reliable operations.
</p>

<p>
  I design, operate and automate production infrastructure — with a focus on reliable Linux systems, mail platforms and practical operator tooling.
</p>

<p>
  <a href="https://ant0n.dev/"><img alt="Website" src="https://img.shields.io/badge/Website-ant0n.dev-0f172a?style=for-the-badge&logo=googlechrome&logoColor=white"></a>
  <a href="https://www.linkedin.com/in/anton-babaskin/"><img alt="LinkedIn" src="https://img.shields.io/badge/LinkedIn-Anton%20Babaskin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white"></a>
  <a href="https://t.me/sen1or_anykey"><img alt="Telegram" src="https://img.shields.io/badge/Telegram-@sen1or__anykey-26A5E4?style=for-the-badge&logo=telegram&logoColor=white"></a>
  <a href="mailto:appsklaw@gmail.com"><img alt="Email" src="https://img.shields.io/badge/Email-appsklaw%40gmail.com-EA4335?style=for-the-badge&logo=gmail&logoColor=white"></a>
</p>

<p>
  <img alt="Linux" src="https://img.shields.io/badge/Linux-Production-111827?style=flat-square&logo=linux&logoColor=white">
  <img alt="MailOps" src="https://img.shields.io/badge/MailOps-Postfix%20%2F%20Dovecot-2563EB?style=flat-square">
  <img alt="DevOps" src="https://img.shields.io/badge/DevOps-Automation-16A34A?style=flat-square">
  <img alt="Experience" src="https://img.shields.io/badge/Experience-15%2B%20years-F59E0B?style=flat-square">
</p>

<p>
  <a href="#-featured-work">Featured work</a> ·
  <a href="#-mailops--security">MailOps & security</a> ·
  <a href="#-automation--platforms">Automation & platforms</a> ·
  <a href="#-operating-principles">Operating principles</a> ·
  <a href="#-contact">Contact</a>
</p>

</div>

---

## ⚡ What I build

I work with production Linux infrastructure end to end: architecture, day‑2 operations, incident diagnostics, mail delivery, backups, networks and automation. The repositories below are built for real operators: explicit behaviour, safe defaults and evidence before remediation.

> [!TIP]
> **Start here:** [MailOps & security](#-mailops--security) for mail-server diagnostics, or [Automation & platforms](#-automation--platforms) for fleet and infrastructure tooling.

## 🧭 Featured work

<table>
  <tr>
    <td width="50%" valign="top">
      <h3>📮 <a href="https://github.com/Anton-Babaskin/miab-sentry">miab-sentry</a></h3>
      <p>Telegram MailOps control plane with whitelisted SSH commands, confirmed actions and SQLite audit logging.</p>
      <img alt="Python" src="https://img.shields.io/badge/Python-3.11%2B-3776AB?style=flat-square&logo=python&logoColor=white">
      <img alt="Telegram" src="https://img.shields.io/badge/Telegram-Bot-26A5E4?style=flat-square&logo=telegram&logoColor=white">
    </td>
    <td width="50%" valign="top">
      <h3>🛰️ <a href="https://github.com/Anton-Babaskin/FleetOps">FleetOps</a></h3>
      <p>Agentless Linux diagnostics: deterministic checks, SSH collection, JSON contracts and optional Telegram access.</p>
      <img alt="Python" src="https://img.shields.io/badge/Python-AsyncSSH-3776AB?style=flat-square&logo=python&logoColor=white">
      <img alt="Docker" src="https://img.shields.io/badge/Docker-Ready-2496ED?style=flat-square&logo=docker&logoColor=white">
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <h3>🔐 <a href="https://github.com/Anton-Babaskin/mail-sec-audit">mail-sec-audit</a></h3>
      <p>Read-only-by-default security audit for Linux mail servers: exposure, authentication, DNS, TLS, firewalls and Fail2Ban.</p>
      <img alt="Bash" src="https://img.shields.io/badge/Bash-Read--only-4EAA25?style=flat-square&logo=gnubash&logoColor=white">
      <img alt="Security" src="https://img.shields.io/badge/Security-Audit-DC2626?style=flat-square">
    </td>
    <td width="50%" valign="top">
      <h3>📡 <a href="https://github.com/Anton-Babaskin/smtp-egress-audit">smtp-egress-audit</a></h3>
      <p>Incident-response tool for attributing abnormal outbound SMTP connections to processes, Postfix, users, jobs or containers.</p>
      <img alt="Bash" src="https://img.shields.io/badge/Bash-Linux-4EAA25?style=flat-square&logo=gnubash&logoColor=white">
      <img alt="Postfix" src="https://img.shields.io/badge/Postfix-Forensics-336791?style=flat-square">
    </td>
  </tr>
</table>

## 📬 MailOps & security

| Project | Purpose | Stack |
| --- | --- | --- |
| [📡 miab-radar](https://github.com/Anton-Babaskin/miab-radar) | Mail-in-a-Box health, mail flow, deliverability, DNS, TLS and security diagnostics. | Bash · Postfix · Dovecot |
| [🔐 mail-sec-audit](https://github.com/Anton-Babaskin/mail-sec-audit) | Structured, read-only security posture audit for Linux mail servers. | Bash · Linux · Mail services |
| [📤 smtp-egress-audit](https://github.com/Anton-Babaskin/smtp-egress-audit) | Evidence-first attribution of suspicious outbound SMTP activity. | Bash · `ss` · Postfix |
| [🛡️ miab-whitelists](https://github.com/Anton-Babaskin/miab-whitelists) | Postfix/Postgrey whitelists, SPF range refresh and fleet sync for MIAB. | Bash · Postfix · systemd |
| [💾 miab-backups](https://github.com/Anton-Babaskin/miab-backups) | Restic + rclone backup automation with verification, retention and Telegram reports. | Bash · Restic · rclone |
| [📊 mail_analyzer.sh](https://github.com/Anton-Babaskin/mail_analyzer.sh) | Postfix log analytics for domains, relays, routes and delivery failures. | Bash · awk |
| [🔔 Postfix-Telegram-Notifier](https://github.com/Anton-Babaskin/Postfix-Telegram-Notifier) | Real-time alerts for bounced, deferred and rejected mail. | Bash · systemd · Telegram |
| [⏱️ postgrey-telegram-notify](https://github.com/Anton-Babaskin/postgrey-telegram-notify) | Stateful Postgrey and delivery-status notifications. | Bash · systemd · Telegram |

## 🧰 Automation & platforms

| Project | Purpose | Stack |
| --- | --- | --- |
| [🛰️ FleetOps](https://github.com/Anton-Babaskin/FleetOps) | Agentless fleet diagnostics and a terminal-first operator workflow. | Python · asyncssh · Docker |
| [📮 miab-sentry](https://github.com/Anton-Babaskin/miab-sentry) | Controlled MailOps actions from Telegram, with an audit trail. | Python · SSH · SQLite |
| [🔒 Docker-WireGuard-Monitor](https://github.com/Anton-Babaskin/Docker-WireGuard-Monitor) | Health monitoring for containerized WireGuard. | Bash · Docker · WireGuard |
| [🌐 WireGuard-Monitor](https://github.com/Anton-Babaskin/WireGuard-Monitor) | Monitoring and installation tooling for native WireGuard hosts. | Bash · WireGuard · systemd |
| [🗄️ proxmox-hetzner](https://github.com/Anton-Babaskin/proxmox-hetzner) | Rescue-mode Proxmox VE automation for Hetzner dedicated servers. | Shell · Proxmox VE · ZFS |
| [⚙️ SysTuneX](https://github.com/Anton-Babaskin/SysTuneX) | Transparent, reversible Windows performance and latency tuning. | .NET · PowerShell · WinAPI |
| [🚀 Xray-easy-installer](https://github.com/Anton-Babaskin/Xray-easy-installer) | Xray VLESS/REALITY installer and user management. | Bash · Xray · systemd |
| [📚 sysadmins-guides](https://github.com/Anton-Babaskin/sysadmins-guides) | Practical notes on Linux operations, mail infrastructure and troubleshooting. | Markdown · GitHub Pages |

## 🧠 Operating principles

```text
Observe → collect evidence → understand the blast radius → make a controlled change → verify
```

- 🛡️ **Safe by default** — diagnostics should not quietly rewrite a production server.
- 🔎 **Evidence before assumptions** — logs, sockets, queues and service state come first.
- 🧩 **Simple, inspectable tooling** — Bash and Python where they make operations clearer.
- ♻️ **Controlled, reversible changes** — explicit actions, backups and auditable workflows.

## 🧱 Core stack

<p>
  <img alt="Linux" src="https://img.shields.io/badge/Linux-111827?style=for-the-badge&logo=linux&logoColor=white">
  <img alt="Debian" src="https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white">
  <img alt="Ubuntu" src="https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white">
  <img alt="Docker" src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white">
  <img alt="Python" src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white">
  <img alt="Bash" src="https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white">
  <img alt="Postfix" src="https://img.shields.io/badge/Postfix-336791?style=for-the-badge">
  <img alt="Proxmox" src="https://img.shields.io/badge/Proxmox%20VE-E57000?style=for-the-badge&logo=proxmox&logoColor=white">
  <img alt="WireGuard" src="https://img.shields.io/badge/WireGuard-88171A?style=for-the-badge&logo=wireguard&logoColor=white">
</p>

## 🗂️ Full project map

The complete catalog and project boundaries live in [PROJECTS.md](./PROJECTS.md). It is the source of truth for avoiding overlapping tools and duplicate repository ideas.

## 🤝 Contact

<p>
  <a href="https://ant0n.dev/">🌐 Website</a> ·
  <a href="https://www.linkedin.com/in/anton-babaskin/">💼 LinkedIn</a> ·
  <a href="https://t.me/sen1or_anykey">✈️ Telegram</a> ·
  <a href="mailto:appsklaw@gmail.com">✉️ appsklaw@gmail.com</a> ·
  <a href="https://dou.ua/users/appsklaw/">👨‍💻 DOU</a>
</p>

---

<div align="center">
  <sub>© 2026 Anton Babaskin · Building calm, observable infrastructure.</sub>
</div>
