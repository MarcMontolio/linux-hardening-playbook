#!/usr/bin/env bash
set -euo pipefail

echo "🔍 Checking Ansible syntax for playbook.yml"
ansible-playbook ansible/playbook.yml --syntax-check

echo "🔍 Running yamllint over Ansible files"
yamllint -c .yamllint.yml ansible/
