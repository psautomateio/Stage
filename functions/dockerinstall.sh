#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705 - Deiteq - Sub7Seven
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
dockerinstall () {
  ospsaversion=$(cat /psa/var/os.version)
  if [ "$ospsaversion" == "debian" ]; then
    ansible-playbook /psa/stage/ymls/dockerdeb.yml
  else
    ansible-playbook /psa/stage/ymls/dockerubu.yml
    # If Docker FAILED, Emergency Install
    file="/usr/bin/docker"
    if [ ! -e "$file" ]; then
        clear
        echo "Installing Docker the Old School Way - (Please Be Patient)"
        sleep 2
        clear
        curl -fsSL get.docker.com -o get-docker.sh
        sh get-docker.sh
        echo ""
        echo "Starting Docker (Please Be Patient)"
        sleep 2
        systemctl start docker
        sleep 2
    fi

    ##### Checking Again, if fails again; warns user
    file="/usr/bin/docker"
    if [ -e "$file" ]
      then
      sleep 5
    else
      echo "INFO - FAILED: Docker Failed to Install! Exiting PSAutomate!"
        exit
      fi
  fi
}
