#!/bin/bash
# {{ ansible_managed }}
set -euo pipefail
IFS=$'\n\t'

SEARCH=$(ldapsearch -x -h {{ ipa_master_server }} -b cn=sys_hashome,cn=groups,cn=compat,{{ ipa_ldap_domain }} | grep memberUid | cut -d" " -f2)
for i in $SEARCH; do
    echo "Checking home for $i..."
    if [[ ! -d /home/$i ]]; then
        echo "  Creating Home..."
        su $i -c 'echo "  OK"; exit'
    fi
    echo "Fixing owner for $i..."
    chown $i:$i /home/$i -R
done

exit 0
