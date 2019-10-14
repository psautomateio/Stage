admin90210="admin90210"
sleep 10

while [[ "$admin90210" == "admin90210" ]]; do

  if [[ -e "/psa/nzbget" ]]; then
  chmod -R 775 /psa/nzbget
  chown -R 1000:1000 /psa/nzbget; fi

  if [[ -e "/psa/sabnzbd" ]]; then
  chmod -R 775 /psa/nzbget
  chown -R 1000:1000 /psa/nzbget; fi

  if [[ -e "/psa/rutorrent" ]]; then
  chmod -R 775 /psa/rutorrent
  chown -R 1000:1000 /psa/rutorrent; fi

  if [[ -e "/psa/qbitorrent" ]]; then
  chmod -R 775 /psa/qbitorrent
  chown -R 1000:1000 /psa/qbitorrent; fi

done
