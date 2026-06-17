#!/bin/bash
set -euo pipefail

REPO_URL="https://github.com/kreemer/ansible-pull"
PLAYBOOK="playbook.yml"

echo "==> Updating package lists..."
sudo apt-get update -qq

echo "==> Installing Ansible..."
sudo apt-get install -y -qq ansible

echo "==> Installing Ansible collections..."
curl -fsSL "${REPO_URL}/raw/main/requirements.yml" -o /tmp/requirements.yml
sudo ansible-galaxy collection install -r /tmp/requirements.yml

echo "==> Running ansible-pull from ${REPO_URL}..."
sudo ansible-pull -U "${REPO_URL}" "${PLAYBOOK}"

echo "==> Done."
