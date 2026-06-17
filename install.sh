#!/bin/bash
set -euo pipefail

REPO_URL="https://github.com/kreemer/ansible-pull"
PLAYBOOK="playbook.yml"

echo "==> Updating package lists..."
sudo apt-get update -qq

echo "==> Installing Ansible..."
sudo apt-get install -y -qq ansible

echo "==> Running ansible-pull from ${REPO_URL}..."
sudo ansible-pull -U "${REPO_URL}" "${PLAYBOOK}"

echo "==> Done."
