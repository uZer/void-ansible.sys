# VOID-ANSIBLE: system layer

Installation and configuration of virtual machine's system layer with Ansible.

#### Main features:

NTP, DNS, FreeIPA, SMTP, SNMP, NFS Shared home directory, VMWare Tools...
The base unit is the VM.

#### Tested distributions:

+ Ubuntu 14.04
+ Ubuntu 16.04 (work in progress)
+ Redhat 6
+ Redhat/CentOS 7


## REQUIREMENTS

+ Ansible >= 2.2.0.0
+ SSH Connectivity to your systems


## INSTALL


    git clone https://github.com/uZer/void-ansible.sys.git
    cd void-ansible.sys
    ansible-galaxy install -r requirements.yml


## USAGE


    ansible-playbook -DKk site.yml


## UPDATE


    cd void-ansible.sys
    git pull
    ansible-galaxy install -r requirements.yml --force
