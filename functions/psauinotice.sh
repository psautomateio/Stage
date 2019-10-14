#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705 
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
psauinotice () {

# note that this is only a one time notice for new installs
if [[ ! -e "/psa/var/psaui.notice" ]]; then

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
↘️  PSAutomate User Interface (PSAUI) Installed
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
INFORMATION:
PSAUI is a simple interface that provides information, warnings, and
stats!

WARNING:
If not secure, anyone in the world can visit your interface! Protect it by
deploying PSAshield and close your ports ... or turn it off (disable)!

TO TURN OFF:
To turn PSAUI off, goto settings and turn it off/on the PSautomate User
Interface!

VISIT:
https://psaui.domain.com | http://psaui.domain.com:8555 | ipv4:8555
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
read -p 'Acknowledge Info | Press [ENTER] ' typed < /dev/tty
touch /psa/var/psaui.notice
fi
}
