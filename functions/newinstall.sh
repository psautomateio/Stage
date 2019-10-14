#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
newinstall () {
  rm -rf /psa/var/psa.exit 1>/dev/null 2>&1
  file="/psa/var/new.install"
  if [ ! -e "$file" ]; then
    touch /psa/var/psa.number && echo off > /psa/tmp/program_source
    bash /psa/psablitz/menu/version/file.sh
    file="/psa/var/new.install"
    if [ ! -e "$file" ]; then exit; fi
 fi
}
