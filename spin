#!/bin/bash
dateFileName=`date +%Y%m%d`
listingBackups=`ls /var/backups/ | grep system | grep -v $dateFileName >/root/dev/systemNotToday.txt`
for files in $(cat /root/dev/systemNotToday.txt)
do
echo "[+] Deleting not necessary backups, please wait..."
sleep 4
rm -rf /var/backups/$files
done
