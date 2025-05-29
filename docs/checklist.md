# 🛡️ CIS Linux Hardening Checklist

Rough guide to what's covered in this playbook, based on the [CIS Benchmarks](https://www.cisecurity.org/benchmark/linux).

---

## 1. Initial Setup

Keep your system lean and patched. Use your package manager regularly to apply updates. Clean up anything unnecessary—especially GUI tools or unused daemons. Configure your package repositories with HTTPS if available, and disable the ones you don’t use.

## 2. Account & Auth

Set password policies (90-day max, 14-character minimum). Disable root login over SSH. Configure session timeouts to kick idle users. Install tools like `fail2ban` to block brute-force attacks.

## 3. Logging & Auditing

Make sure something like `rsyslog` is running. Secure your `/var/log` directory and rotate logs to avoid disk bloat. Set up `auditd` to track sensitive actions like logins, sudo usage, and file changes.

## 4. Network Settings

If you’re not using IPv6, shut it off. Disable weird or unused protocols (RPC, DCCP, SCTP). Enable a firewall (`ufw` or `iptables`) with a default deny rule. Lock down SSH: protocol 2, no root login, strong ciphers only.

## 5. Services & Daemons

Disable everything you’re not actively using—especially ancient stuff like `telnet` or `rsh`. Only approved services should be running. Lock down permissions on system files like `/etc`, `/boot`, and anything else config-related.

## 6. File System Integrity

Install a file integrity tool like `AIDE` or `Tripwire`. Build a clean baseline and schedule periodic scans to alert you to any unauthorized changes.

---

> ⚙️ For specifics, check each role's README or look through the Ansible tasks.
