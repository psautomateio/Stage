#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################

#stands for create commands (cc)
ccommands () {

  ccreate () {
      cp "/psa/stage/alias/$1" "/bin/$1"
      chown 1000:1000 "/bin/$1"
      chmod 0775 "/bin/$1"
      echo "Alias Command: Installed [$1]"
  }

  #start
  echo ""
  ccreate autoremove
  ccreate backup
  ccreate install
  ccreate nufs
  ccreate psa
  ccreate psablitz
  ccreate psafork
  ccreate psaupdate
  ccreate psavpn
  ccreate psautomate
  ccreate prune
  ccreate reboot
  ccreate slist
  ccreate sufs
  ccreate update
  ccreate upgrade
}
