#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
source /psa/stage/version/file.sh

updateprime () {

# Set variable numbers, plus number up to force update
source "/psa/stage/versions.sh"
versioninfo

# key parts
source "/psa/stage/functions/core.sh"
source "/psa/stage/versions.sh"

# assistive parts
source "/psa/stage/functions/apps.sh"
source "/psa/stage/functions/ccommands.sh"
source "/psa/stage/functions/aptupdate.sh"
source "/psa/stage/functions/dependency.sh"
source "/psa/stage/functions/dockerinstall.sh"
source "/psa/stage/functions/dockerassist.sh"
source "/psa/stage/functions/folders.sh"
source "/psa/stage/functions/gcloud.sh"
source "/psa/stage/functions/emergency.sh"
source "/psa/stage/functions/hetzner.sh"
source "/psa/stage/functions/mergerinstall.sh"
source "/psa/stage/functions/permissions.sh"
source "/psa/stage/functions/psauinotice.sh"
source "/psa/stage/functions/newinstall.sh"
source "/psa/stage/functions/psadeploy.sh"
source "/psa/stage/functions/psaedition.sh"
source "/psa/stage/functions/psaui.sh"
source "/psa/stage/functions/portainer.sh"
source "/psa/stage/functions/pythonstart.sh"
source "/psa/stage/functions/serverid.sh"
source "/psa/stage/functions/watchtower.sh"
source "/psa/stage/functions/psainstall.sh"
source "/psa/stage/functions/prune.sh"
source "/psa/stage/functions/psashield.sh"

# misc functions
source "/psa/stage/functions/endingcheck.sh"

}

apps () {
    bash /psa/stage/functions/apps.sh
}

folders () {
  bash /psa/stage/functions/folders.sh
  bash /psa/stage/functions/ccommands.sh
  # will fix
}

motd () {
  ansible-playbook /psa/stage/ymls/motd/motd.yml
}

ccommands () {
  bash /psa/stage/functions/ccommands.sh
}

psaui () {
    bash /psa/stage/functions/psaui.sh
}

prune () {
  ansible-playbook /psa/stage/ymls/prune.yml
}

downloadpg() {
  rm -rf /psa/psablitz
  git clone CHANGE REPO/PSABlitz.git /psa/psablitz
}
