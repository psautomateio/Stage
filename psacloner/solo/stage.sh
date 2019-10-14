#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
readstage=$(jq -r '.psastage' /psa/psablitz/stage.json)

### FILL OUT THIS AREA ###
echo 'stage' > /psa/var/psacloner.rolename
echo 'stage' > /psa/var/psacloner.roleproper
echo 'Stage' > /psa/var/psacloner.projectname
echo "$readstage" > /psa/var/psacloner.projectversion

### START PROCESS
ansible-playbook /psa/tmp/primary.yml
