#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
folders () {

  fcreate () {
    if [[ ! -e "$1" ]]; then
      mkdir -p "$1"
      chown 1000:1000 "$1"
      chmod 0775 "$1"; fi
      echo "Generated Folder: $1"
  }

  echo ""
  #start
  fcreate /psa/transfer

  #gcrypt
  fcreate /psa/gc
    fcreate /psa/gc/tv
    fcreate /psa/gc/movies
    fcreate /psa/gc/music
    fcreate /psa/gc/ebooks

  #gdrive
  fcreate /psa/gd
    fcreate /psa/gd/tv
    fcreate /psa/gd/movies
    fcreate /psa/gd/music
    fcreate /psa/gd/ebooks

  #tcrypt
  fcreate /psa/sc
    fcreate /psa/sc/tv
    fcreate /psa/sc/movies
    fcreate /psa/sc/music
    fcreate /psa/sc/ebooks

  #tdrive
    fcreate /psa/sd/tv
    fcreate /psa/sd/movies
    fcreate /psa/sd/music
    fcreate /psa/sd/ebooks

  #unity
    fcreate /psa/unity

  #misc
    fcreate /psa/tmp
    fcreate /psa/data # folder to hold container data
    fcreate /psa/data/portainer
    fcreate /psa/coreapps
    fcreate /psa/communityapps
    fcreate /psa/transfer
    fcreate /psa/logs
    fcreate /psa/var/emergency
    fcreate /psa/var/keys # utilized to store rclone keys
    fcreate /psa/nzb
    fcreate /psa/torrent
    fcreate /psa/downloads

echo ""
}
