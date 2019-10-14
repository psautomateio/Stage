#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
dependency () {
  ospsaversion=$(cat /psa/var/os.version)
  if [ "$ospsaversion" == "debian" ]; then
    ansible-playbook /psa/stage/ymls/dependencydeb.yml;
  else
    ansible-playbook /psa/stage/ymls/dependencyubu.yml; fi
}
