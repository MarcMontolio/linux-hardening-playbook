<p align="center">
  <img src="https://img.shields.io/github/workflow/status/MarcMontolio/linux-hardening-playbook/CI?label=CI&logo=github" alt="CI">
  <img src="https://img.shields.io/badge/ansible-2.9%2B-red" alt="Ansible Version">
  <img src="https://img.shields.io/github/license/MarcMontolio/linux-hardening-playbook" alt="License">
</p>

# 🛠️ Linux Hardening Playbook

> Ansible role and playbook to apply baseline security settings based on CIS recommendations.

---

## 📋 Prerequisites

* Ansible 2.9+
* Python 3.7+ on your control node
* SSH access or `ansible_connection=local` for target machines

---

## 🚀 Quickstart

```bash
git clone https://github.com/MarcMontolio/linux-hardening-playbook.git
cd linux-hardening-playbook
```

Example inventory:

```ini
[all]
localhost ansible_connection=local
```

Run it:

```bash
ansible-playbook -i ansible/inventory.ini ansible/playbook.yml --ask-become-pass
```

---

## 🗂️ Inventory

* Adjust `ansible/inventory.ini` to match your environment.
* Works locally or over SSH.

---

## ▶️ Usage

For all usage examples, variable overrides, and tags, see [`docs/usage.md`](docs/usage.md).

---

## 📄 Docs

Full checklist, rationale, and extra context live in the `docs/` folder. Not bloated. Just clear.

---

## ⚙️ CI/CD

CI runs Ansible syntax checks and YAML linting on every push.

Config lives in:

```yaml
.github/workflows/ci.yml
```

---

## 🤝 Contributing

* Fork the repo
* Make a branch
* PR it

Straightforward.

---

## 📜 License

MIT © 2025 Marc Montolio
