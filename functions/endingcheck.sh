#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
endingcheck() {
  bash /psa/stage/version/file.sh
  file="/psa/var/exited.upgrade"
  if [ -e "$file" ]; then
    bash /psa/stage/files/ending.sh
    rm -rf /psa/var/exited.upgrade 1>/dev/null 2>&1
  fi
}
