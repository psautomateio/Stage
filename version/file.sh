#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################
source /psa/stage/functions/endingcheck.sh

mainstart() {

bash /psa/stage/psacloner/solo/update.sh
rm -rf /psa/tmp/version.temp
touch /psa/tmp/version.temp

num=0
while read p; do
  echo -n $p >> /psa/tmp/version.temp
  echo -n " - " >> /psa/tmp/version.temp
  num=$[num+1]
  if [ "$num" == 7 ]; then
    num=0
    echo " " >> /psa/var/program.temp
  fi
done </psa/install/versions.sh

versionlist=$(cat /psa/tmp/version.temp)
versionlist=${versionlist::-2}

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
📂  PSA Update Interface | Current PSA Version: $pgnumber
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Need More Info? Visit > versions.psautomate.io

EOF

echo "${versionlist}"

tee <<-EOF

Quitting? TYPE > exit
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

break=no
read -p '🌍  TYPE a PSA Version | PRESS ENTER: ' typed
storage=$(grep $typed /psa/install/versions.sh | head -n1 | awk '{print $1;}')
if [[ "$typed" == "exit" || "$typed" == "Exit" || "$typed" == "EXIT" ]]; then
	echo "$typed" > /psa/var/psa.number
	touch /psa/var/exited.upgrade
	endingcheck
fi

parttwo
}

parttwo() {
if [[ "$typed" == "exit" || "$typed" == "EXIT" || "$typed" == "Exit" ]]; then
  echo ""; touch /psa/var/exited.upgrade; exit; fi

if [ "$storage" != "" ]; then
  break=yes
  echo $storage > /psa/var/psa.number
  ansible-playbook /psa/stage/version/choice.yml

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅️  SYSTEM MESSAGE: Installing Verison - $storage - Standby!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
sleep 2
touch /psa/var/new.install

file="/psa/var/community.app"
if [ -e "$file" ]; then rm -rf /psa/var/community.app; fi

touch /psa/var/first.update
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
✅️   STARTING: Install Process
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
sleep 1.5
psablitz
exit
else
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
⛔️  SYSTEM MESSAGE: Version $typed does not exist! - Standby!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF
  sleep 2
  mainstart
fi
}

#rm -rf /psa/pgstage
mkdir -p /psa/psastage
if [[ ! -e "/psa/psastage/place.holder" ]]; then
ansible-playbook /psa/psablitz/menu/psastage/psastage.yml; fi

# user sets version install if not present
if [[ ! -e "/psa/var/first.update" ]]; then
  if [[ ! -e "/psa/install/versions.sh" ]]; then
  bash /psa/stage/psacloner/solo/update.sh; fi
  mainstart
fi
