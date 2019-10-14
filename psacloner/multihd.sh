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
echo 'multihd' > /psa/var/psacloner.rolename
echo 'MultiHD' > /psa/var/psacloner.roleproper
echo 'MultiHD' > /psa/var/psacloner.projectname
echo 'master' > /psa/var/psacloner.projectversion
echo 'multihd.sh' > /psa/var/psacloner.startlink

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "💬 MultiHD enables to add multiple drives and mountpoints to MergerFS!" > /psa/var/psacloner.info
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### START PROCESS
bash /psa/stage/psacloner/core/main.sh
