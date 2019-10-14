#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################

### FILL OUT THIS AREA ###
echo 'psavault' > /psa/var/psacloner.rolename
echo 'PSA Vault' > /psa/var/psacloner.roleproper
echo 'PSAVault' > /psa/var/psacloner.projectname
echo 'master' > /psa/var/psacloner.projectversion
echo 'psavault.sh' > /psa/var/psacloner.startlink

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "💬 PSA Vault is a combined group of services that utilizes the backup
and restore processes, which enables the safe storage and transport through
the use of Google Drive in a hasty and efficient manner!" > /psa/var/psacloner.info
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### START PROCESS
bash /psa/stage/psacloner/core/main.sh
