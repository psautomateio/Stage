#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705 - Deiteq
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
# Changing the Numbers Higher will result in force updating that section
################################################################################

# key parts
source "/psa/stage/functions/core.sh"

versioninfo () {
# Set variable numbers, plus number up to force update
# PSAStore command can be found @ core.sh
psastore "mergerinstall" "1"
psastore "alias_install" "1"
psastore "pythonstart" "1"
psastore "ccommands" "1"
psastore "aptupdate" "1"
psastore "preinstall" "1"
psastore "folders" "1"
psastore "dockerinstall" "1"
psastore "server" "1"
psastore "serverid" "1"
psastore "permissions" "1"
psastore "dependency" "1"
psastore "dockerassist" "1"
psastore "motd" "1"
psastore "alias" "1"
psastore "cleaner" "1"
psastore "gcloud" "1"
psastore "hetzner" "1"
psastore "watchtower" "1"
psastore "installer" "1"
psastore "prune" "1"
psastore "mountcheck" "1"
}
