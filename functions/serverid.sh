#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
serverid () {

# Generates a Random Server ID until user changes via options/psavault
if [ ! -e "/psa/var/server.id" ]; then
  echo "PSA-$((1 + RANDOM * RANDOM))" > /psa/var/server.id; fi

}
