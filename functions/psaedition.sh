#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
psaedition () {
  file="/psa/var/path.check"
  if [ ! -e "$file" ]; then touch /psa/var/path.check && bash /psa/psablitz/menu/dlpath/dlpath.sh; fi
  # FOR PG-BLITZ
  file="/psa/var/project.deployed"
    if [ ! -e "$file" ]; then echo "no" > /psa/var/project.deployed; fi
  file="/psa/var/project.keycount"
    if [ ! -e "$file" ]; then echo "0" > /psa/var/project.keycount; fi
  file="/psa/var/server.id"
    if [ ! -e "$file" ]; then echo "[NOT-SET]" > /psa/var/rm -rf; fi
}
