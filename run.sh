#!/usr/bin/env bash

# Exit on any error (like wrong Ansible Vault password).
set -o errexit
# set -o verbose

# export ANSIBLE_ASK_VAULT_PASS=true
# if [ -f .vaultpass.txt ]; then
    # export ANSIBLE_ASK_VAULT_PASS=false
    # export ANSIBLE_VAULT_PASSWORD_FILE=.vaultpass.txt
# fi

if [ -n "$TAGS" ]; then
    TAGS="--tags $TAGS"
fi
ansible-playbook -i 'localhost,' playbook.yml $TAGS
