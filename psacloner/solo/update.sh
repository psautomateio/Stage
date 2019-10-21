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
echo 'install' > /psa/var/psacloner.rolename
echo 'install' > /psa/var/psacloner.roleproper
echo 'Install' > /psa/var/psacloner.projectname
echo '0.2.0' > /psa/var/psacloner.projectversion

### START PROCESS
ansible-playbook /psa/stage/psacloner/core/primary.yml
