# [void-infrastructure] ansible.sys
Installation and configuration of virtual machine's system layer with Ansible.
Main features:
NTP, DNS, FreeIPA, SMTP, SNMP, NFS Shared home directory, VMWare Tools... 
The base unit is the VM. "Old school" ansible, should be refactored with new syntactic sugar ;)
Not so elegant in many parts, especially when everything stands in the same role (or I should rename it to "common")

#### Supported and tested OS:

- Ubuntu 14.04
- Ubuntu 16.04 (work in progress)
- Redhat 6
- Redhat/CentOS 7
