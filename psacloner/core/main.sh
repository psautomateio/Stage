#!/bin/bash
#
# Title:      PSAutomate
# Based On:   PGBlitz (Reference Title File)
# Original Author(s):  Admin9705
# PSAutomate Auther: fattylewis
# URL:        https://psautomate.io - http://github.psautomate.io
# GNU:        General Public License v3.0
################################################################################

# FUNCTIONS START ##############################################################
source /psa/psablitz/menu/functions/functions.sh

rolename=$(cat /psa/var/psacloner.rolename)
roleproper=$(cat /psa/var/psacloner.roleproper)
projectname=$(cat /psa/var/psacloner.projectname)
projectversion=$(cat /psa/var/psacloner.projectversion)
startlink=$(cat /psa/var/psacloner.startlink)

mkdir -p "/psa/$rolename"

initial () {
  ansible-playbook "/psa/stage/psacloner/core/primary.yml"
  echo ""
  echo "💬  Pulling Update Files - Please Wait"

  file="/psa/$rolename/place.holder"
  waitvar=0
  while [ "$waitvar" == "0" ]; do
  	sleep .5
  	if [ -e "$file" ]; then waitvar=1; fi
  done
  bash /psa/${rolename}/${startlink}
}

developer () {
  echo "dev" > /psa/var/psacloner.projectversion
  ansible-playbook "/psa/stage/psacloner/core/primary.yml"
  echo ""
  echo "💬  Pulling Update Files - Please Wait"
  file="/psa/$rolename/place.holder"
  waitvar=0
  while [ "$waitvar" == "0" ]; do
  	sleep .5
  	if [ -e "$file" ]; then waitvar=1; fi
  done
  bash /psa/${rolename}/${startlink}
}

custom () {
  mkdir -p "/psa/$rolename"
  ansible-playbook "/psa/stage/psacloner/core/personal.yml"

  echo ""
  echo "💬  Pulling Update Files - Please Wait"
  file="/psa/$rolename/place.holder"
  waitvar=0
  while [ "$waitvar" == "0" ]; do
  	sleep .5
  	if [ -e "$file" ]; then waitvar=1; fi
  done
  bash /psa/${rolename}/${startlink}
}

mainbanner () {
clonerinfo=$(cat /psa/var/psacloner.info)
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 $roleproper | 📓 Reference: $rolename.psautomate.io
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

$clonerinfo

[1] Utilize $roleproper - Official
[2] Utilize $roleproper - Developer (Beta)
[3] Utilize $roleproper - Personal  (Forked)
[Z] Exit

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

read -p 'Type a Selection | Press [ENTER]: ' typed < /dev/tty

case $typed in
    1 )
        initial ;;
    2 )
        initial ;;
    3 )
        variable /psa/var/$rolename.user "NOT-SET"
        variable /psa/var/$rolename.branch "NOT-SET"
        pinterface ;;
    z )
        exit ;;
    Z )
        exit ;;
    * )
        mainbanner ;;
esac
}

pinterface () {

user=$(cat /psa/var/$rolename.user)
branch=$(cat /psa/var/$rolename.branch)

tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
🚀 $roleproper | 📓 Reference: $rolename.psautomate.io
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💬 User: $user | Branch: $branch

[1] Change User Name & Branch
[2] Deploy $roleproper - Personal (Forked)
[Z] Exit

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
EOF

read -p 'Type a Selection | Press [ENTER]: ' typed < /dev/tty

case $typed in
    1 )
tee <<-EOF

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
💬 IMPORTANT MESSAGE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Username & Branch are both case sensitive! Make sure to check for the
default or selected branch!
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EOF
        read -p 'Username | Press [ENTER]: ' user < /dev/tty
        read -p 'Branch   | Press [ENTER]: ' branch < /dev/tty
        echo "$user" > /psa/var/$rolename.user
        echo "$branch" > /psa/var/$rolename.branch
        pinterface ;;
    2 )
        existcheck=$(git ls-remote --exit-code -h "https://github.com/$user/$projectname" | grep "$branch")
        if [ "$existcheck" == "" ]; then echo;
        read -p '💬 Exiting! Forked Version Does Not Exist! | Press [ENTER]: ' typed < /dev/tty
        mainbanner; fi
        custom ;;
    z )
        exit ;;
    Z )
        exit ;;
    * )
        mainbanner ;;
esac
}

# FUNCTIONS END ##############################################################
echo "" > /psa/tmp/output.info
mainbanner
