#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
portainer () {
  dstatus=$(docker ps --format '{{.Names}}' | grep "portainer")
  if [ "$dstatus" != "portainer" ]; then
    bash /psa/apps/programs/portainer/start.sh
  fi
}
