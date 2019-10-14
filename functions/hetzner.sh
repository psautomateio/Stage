#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
hetzner () {
  if [ -e "$file" ]; then rm -rf /bin/hcloud; fi
  version="v1.10.0"
  wget -P /psa/psa/tmp "https://github.com/hetznercloud/cli/releases/download/$version/hcloud-linux-amd64-$version.tar.gz"
  tar -xvf "/psa/psa/tmp/hcloud-linux-amd64-$version.tar.gz" -C /psa/psa/tmp
  mv "/psa/psa/tmp/hcloud-linux-amd64-$version/bin/hcloud" /bin/
  rm -rf /psa/psa/tmp/hcloud-linux-amd64-$version.tar.gz
  rm -rf /psa/psa/tmp/hcloud-linux-amd64-$version
}
