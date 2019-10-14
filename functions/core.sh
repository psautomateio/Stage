#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
psastore () {
  maindir="/psa/var/install"
  if [[ ! -e "${maindir}/${1}" ]]; then echo "${2}" > "${maindir}/${1}"; fi
  echo "${2}" > "${maindir}/${1}"
}

psarecall () {
  maindir="/psa/var/install"
  if [[ ! -e "${maindir}/${1}" ]]; then touch "${maindir}/${1}"; fi
  recallvar=$(cat "${maindir}/${1}")
}

variable () {
  file="$1"
  if [ ! -e "$file" ]; then echo "$2" > $1; fi
}

vartouch () {
  file="$1"
  if [ ! -e "$file" ]; then touch "$1"; fi
}

core () {
    mkdir -p "/psa/var/install"
    vartouch "/psa/var/install/${1}.stored"
    start=$(cat "/psa/var/install/${1}")
    stored=$(cat "/psa/var/install/${1}.stored")
    if [[ "$start" != "$stored" ]]; then
      "$1"
      cat "/psa/var/install/${1}" > "/psa/var/install/${1}.stored";
    fi
}
