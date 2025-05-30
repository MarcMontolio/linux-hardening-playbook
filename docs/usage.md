🧰 Usage Guide

This guide covers how to execute and customize the linux-hardening-playbook.

📋 Prerequisites

Ansible 2.9+

Python 3.7+ on the control machine

SSH access or local connection to the targets

🔧 Installation

git clone https://github.com/MarcMontolio/linux-hardening-playbook.git
cd linux-hardening-playbook

No other Python roles or dependencies needed. Ansible is enough.

▶️ Running the Playbook

Inventory — use the sample at ansible/inventory.ini, or write your own.

Run it with sudo:

ansible-playbook \
  -i ansible/inventory.ini \
  ansible/playbook.yml \
  --ask-become-pass

Need more detail?

ansible-playbook -i ansible/inventory.ini ansible/playbook.yml -vvv

Check idempotence: run it twice. The second run should say ok=… changed=0.

🏷️ Tags (Selective Execution)

You can run only part of the playbook by using tags. Example:

ansible-playbook -i ansible/inventory.ini ansible/playbook.yml --tags password,ssh

password: handles password expiration, length, etc.

ssh: locks down SSH config

🗂️ Layout

linux-hardening-playbook/
├─ ansible/
│  ├─ inventory.ini
│  ├─ playbook.yml
│  └─ roles/common-hardening/
│     ├─ tasks/main.yml
│     └─ defaults/main.yml
├─ docs/
│  ├─ checklist.md
│  └─ usage.md   ← this file
├─ tests/
│  └─ test_syntax.sh
├─ .github/workflows/ci.yml
├─ .yamllint.yml
└─ README.md

🙌 Next Steps

Customize the defaults in ansible/roles/common-hardening/defaults/main.yml

Add new roles for logging, auditd, or anything else your infra needs

📜 License

MIT © 2025 Marc Montolio

If you know the answer, DM me: TWlsaG91c2UhIFRlbGwgQmFydCB0byBjb21lIGhvbWUu