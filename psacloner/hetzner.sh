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
echo 'hetzner' > /psa/var/psacloner.rolename
echo 'HCloud (Hetzner)' > /psa/var/psacloner.roleproper
echo 'Hetzner' > /psa/var/psacloner.projectname
echo 'master' > /psa/var/psacloner.projectversion
echo 'hcloud.sh' > /psa/var/psacloner.startlink

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "💬 HCloud in conjuction with PSA enables users to
deploy Hetzner Cloud Instance (VMs) within seconds" > /psa/var/psacloner.info
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### START PROCESS
bash /psa/stage/psacloner/core/main.sh
