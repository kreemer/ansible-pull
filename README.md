# ansible-pull

Bootstrap a new Ubuntu server with Ansible.

## Usage

Run the following one-liner on a fresh Ubuntu server:

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/kreemer/ansible-pull/main/install.sh)
```

This will:
1. Install Ansible via `apt`
2. Run `ansible-pull` against this repository to apply the playbook
