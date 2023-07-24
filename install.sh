#!/bin/bash

sudo apt -o DPkg::Lock::Timeout=60 update
sudo apt -o DPkg::Lock::Timeout=60 install -y python3-pip git
pip3 install ansible

git config --global credential.helper store

export PATH="$HOME/.local/bin:$PATH"

ansible-pull -K -U https://scm.univ-tours.fr/epu/dii5_m2m/ansible-vm.git -C dev playbook.yml
