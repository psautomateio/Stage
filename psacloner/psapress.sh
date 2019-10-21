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
echo 'psapress' > /psa/var/psacloner.rolename
echo 'PSAPress' > /psa/var/psacloner.roleproper
echo 'PSAPress' > /psa/var/psacloner.projectname
echo '0.2.0' > /psa/var/psacloner.projectversion
echo 'pressmain.sh' > /psa/var/psacloner.startlink

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "💬 PSAPress is a combined group of services that enables the user to
deploy their own wordpress websites; including the use of other multiple
instances!" > /psa/var/psacloner.info
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### START PROCESS
bash /psa/stage/psacloner/core/main.sh
