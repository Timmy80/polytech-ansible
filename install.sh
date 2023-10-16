#!/bin/bash

sudo apt -o DPkg::Lock::Timeout=60 update
sudo apt -o DPkg::Lock::Timeout=60 install -y python3-pip git
pip3 install ansible

git config --global credential.helper store

export PATH="$HOME/.local/bin:$PATH"

ansible-pull -K -U https://github.com/Timmy80/polytech-ansible.git -C main playbook.yml
