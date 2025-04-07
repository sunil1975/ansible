#!/bin/bash
set -e

# check if ansible-lint is installed

if ! command -v ansible-lint &>/dev/null
then
 echo "ansible-lint not found! instaling..."
 python -m pip install --upgrade pip
 pip install asnsible ansible-lint

fi

# Run ansible-lint on the current directory

echo "Running ansible Lint..."

ansible-lint

#suucess message
echo "Ansible Lint check passed"