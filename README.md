# Ansible for Polytech VM

This [Ansible](https://www.ansible.com/) playbook is use to pre-install Polytech VM machine with useful learning softwares.

## Installation

### One command

The simpliest maner is to use the one line command:
```sh
sh -c "$(curl -fsSL https://scm.univ-tours.fr/epu/dii5_m2m/ansible-vm/install.sh)"
```

or with wget:
```sh
sh -c "$(wget https://scm.univ-tours.fr/epu/dii5_m2m/ansible-vm/install.s -O -)"
```

### With playbook

Pre-requisites
```sh
sudo apt -o DPkg::Lock::Timeout=60 update
sudo apt -o DPkg::Lock::Timeout=60 install -y python3-pip git
pip3 install ansible
```

To deploy the Ansible playbook on your machine, you can use directly the Ansible playbook command:
```sh
ansible-playbook -K playbook.yml
```

or if you want to use this repo:
```sh
ansible-pull -K -U https://scm.univ-tours.fr/epu/dii5_m2m/ansible-vm.git playbook.yml
```
