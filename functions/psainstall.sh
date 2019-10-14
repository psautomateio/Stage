#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
psainstall () {
# Runs through the install process order
  updateprime
  bash /psa/stage/functions/gcechecker.sh
  core pythonstart
  core aptupdate
  core alias_install &>/dev/null &
  core folders
  core ccommands
  serverid
  core dependency
  core mergerinstall
  core dockerinstall
  core dockerassist
  core mergerinstall
  core permissions

  # Roles Ensure that PG Replicates and has once if missing; important for startup, cron and etc
  psaapps

  # Complete Rest of the Process
  portainer
  psaui
  core motd &>/dev/null &
  core hetzner &>/dev/null &
  core gcloud
  core watchtower
  core prune
  psaedition
  emergency
  psauinotice
  psadeploy
}
