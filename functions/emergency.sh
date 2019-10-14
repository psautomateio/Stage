#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
source "/psa/stage/functions/core.sh"
emergency() {

  variable /psa/var/emergency.display "On"
if [[ $(ls /psa/var/emergency) != "" ]]; then

# If not on, do not display emergency logs
if [[ $(cat /psa/var/emergency.display) == "On" ]]; then

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔️  Emergency & Warning Log Generator | Visit - http://emlog.psautomate.io
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
NOTE: This can be turned [On] or Off in Settings!

EOF

  countmessage=0
  while read p; do
    let countmessage++
    echo -n "${countmessage}. " && cat /psa/var/emergency/$p
  done <<< "$(ls /psa/var/emergency)"

  echo
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  read -n 1 -s -r -p "Acknowledge Info | Press [ENTER]"
  echo
else
  touch /psa/var/emergency.log
fi; fi
}
