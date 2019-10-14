#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705 - Deiteq - Sub7Seven
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
psashield() {
if [ ! -e "/psa/psashield/place.holder" ]; then
echo 'psashield' > /psa/var/psacloner.rolename
echo 'psashield' > /psa/var/psacloner.roleproper
echo 'psashield' > /psa/var/pgcloner.projectname
echo 'master' > /psa/var/psacloner.projectversion
echo 'psashield.sh' > /psa/var/psacloner.startlink
ansible-playbook "/psa/stage/psacloner/core/primary.yml"; fi
}
