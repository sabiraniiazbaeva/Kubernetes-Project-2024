#!/bin/bash

command_exists() {
    command -v “$@” > /dev/null 2>&1
}

install_terraform() {
    echo "Installing Terraform"
    sudo dnf update 
    sudo dnf install -y yum-utils 
    sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
    sudo dnf install terraform -y
} 

install_ansible() {
    echo "Installing Ansible"
    sudo dnf update 
    sudo dnf install epel-release -y 
    sudo dnf install ansible -y 
}

function create_vms() {
    cd do-droplet-creation
    terraform init 
    terraform apply –-auto-approve 
}

if command_exists terraform; then
    echo "Terraform  is already installed"
else 
    install_terraform 
fi

if command_exists  ansible; then
    echo "Ansible is already installed."
else 
    install_ansible
fi

create_vms

function install_packages () {
        cd rke
        ansible-playbook -i hosts packages.yaml
}
