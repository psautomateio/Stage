#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705 
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
psaui ()
{
   file="/psa/var/psaui.switch"
     if [ ! -e "$file" ]; then echo "On" > /psa/var/psaui.switch; fi
     psauicheck=$(cat /psa/var/psaui.switch)
   if [[ "$psauicheck" == "On" ]]; then

     dstatus=$(docker ps --format '{{.Names}}' | grep "psaui")
     if [ "$dstatus" != "psaui" ]; then
     bash /psa/apps/programs/psaui/start.sh
     fi
 fi
}
