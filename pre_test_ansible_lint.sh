#!/bin/bash

# Exit immediately if any command fails
set -e

echo "Starting Ansible Lint Pre-Test Script..."

# Ensure Ansible is installed
echo "Checking if Ansible is installed..."
if ! command -v ansible &> /dev/null
then
    echo "Ansible could not be found. Please install Ansible first."
    exit 1
fi

# Ensure ansible-lint is installed
echo "Checking if ansible-lint is installed..."
if ! command -v ansible-lint &> /dev/null
then
    echo "ansible-lint could not be found. Installing ansible-lint..."
    pip install ansible-lint
fi

# Optional: Check if there are any playbooks or roles in the directory
echo "Checking for playbook or role files..."
if ! ls *.yml &> /dev/null
then
    echo "No Ansible playbooks found. Please ensure there are .yml files in the current directory."
    exit 1
fi

# Run ansible-lint on the directory (you can specify a directory or file instead of '.')
echo "Running ansible-lint..."
ansible-lint .

# If the script reaches this point, everything was successful
echo "Pre-test completed successfully. Linting checks passed."
