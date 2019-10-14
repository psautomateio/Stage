#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705 
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
keyvars () {
############## Create / Update Key Variable upon Start Execution

# Pull IP Address & Store
hostname -I | awk '{print $1}' > /psa/var/server.ip

# Creates Default Path /pg for the processing HD
variable /psa/var/hd.path "/psa"

# Store Linux Version (Recommend to make this more exact future wise)
ospsaversion=$(cat /etc/*-release | grep Debian | grep 9)
if [ "$ospsaversion" != "" ]; then echo "debian"> /psa/var/os.version;
else echo "ubuntu" > /psa/var/os.version; fi
}
