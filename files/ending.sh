#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705 - Deiteq - Sub7Seven
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
source /psa/stage/functions/emergency.sh
emergency

# PSA ascii art with color
echo ""

cat << "EOF"
┌────────────────────────────────────────┐
│        -== PSAutomate ==-              │
│ ———————————————————————————————————————│
│ Star PSA:       github.psautomate.io   │
│ Donate:         donate.psautomate.io   │
│ ———————————————————————————————————————│
│ Restart PSAutomate:     psautomate     │
│ Update  PSABlitz:       psaupdate      │
│ View the PSA Blitz Logs: psatransfer   │
│ Download Your PSA Fork:  psafork       │
│ ———————————————————————————————————————│
│               ENJOY!                   │
└────────────────────────────────────────┘

EOF

if [[ ! -e "/bin/psablitz" ]]; then
  cp /psa/psablitz/menu/alias/templates/psablitz /bin
fi

chown 1000:1000 /bin/psablitz &>/dev/null &
chmod 0755 /bin/psablitz &>/dev/null &
