#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################

### FILL OUT THIS AREA ###
echo 'traefik' > /psa/var/psacloner.rolename
echo 'Traefik' > /psa/var/psacloner.roleproper
echo 'Traefik' > /psa/var/psacloner.projectname
echo 'master' > /psa/var/psacloner.projectversion
echo 'traefik.sh' > /psa/var/psacloner.startlink

#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
echo "💬 Traefik is a modern HTTP reverse proxy and load balancer that makes
deploying microservices easy. It serves as a reverse proxy that enables a
user to mass obtain https (secure) certificates for all their containers" > /psa/var/psacloner.info
#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

### START PROCESS
bash /psa/stage/psacloner/core/main.sh
