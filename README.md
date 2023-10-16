# Ansible for Polytech VM

This [Ansible](https://www.ansible.com/) playbook is used to pre-install Polytech VMs with useful learning softwares.

## Installation

### One command

The simpliest maner is to use the one line command:
```sh
sh -c "$(curl -fsSL https://github.com/Timmy80/polytech-ansible/install.sh)"
```

or with wget:
```sh
sh -c "$(wget https://github.com/Timmy80/polytech-ansible/install.sh -O -)"
```

### With playbook

Pre-requisites
```sh
sudo apt -o DPkg::Lock::Timeout=60 update
sudo apt -o DPkg::Lock::Timeout=60 install -y python3-pip git
pip3 install ansible
```

or if you want to use this repo:
```sh
ansible-pull -K -U https://github.com/Timmy80/polytech-ansible.git playbook.yml
```

### In case of issues with packages

You may be facing issues with jammy-updates package.

Use the playbook `fix-ubuntu.yml` to fix this before retrying the installation.

```sh
ansible-pull -K -U https://github.com/Timmy80/polytech-ansible.git fix-ubuntu.yml
```
