#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
psaapps () {
  if [ ! -e "/psa/apps/programs/portainer/start.sh" ]; then
    echo 'apps' > /psa/var/psacloner.rolename
    echo 'Apps' > /psa/var/psacloner.roleproper
    echo 'Apps' > /psa/var/psacloner.projectname
    echo 'master' > /psa/var/psacloner.projectversion
    echo 'psabox.sh' > /psa/var/psacloner.startlink
    ansible-playbook "/psa/stage/psacloner/core/primary.yml"
  fi
}
