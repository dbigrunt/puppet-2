#!/bin/bash

ssh root@ntebck01.nte.local logger RDIFF-BACKUP START: Starting to back up $HOSTNAME at `date`
/usr/bin/rdiff-backup --exclude /var/cache --exclude /usr/lib/vmware-tools --exclude /boot --exclude /media --exclude /sbin --exclude /bin --exclude /srv --exclude /backup --exclude /tmp --exclude /mnt --exclude /proc --exclude /sys --exclude /dev / root@ntebck01.nte.local::/backup/$HOSTNAME
/usr/bin/rdiff-backup --force --remove-older-than 2W ntebck01.nte.local::/backup/$HOSTNAME
ssh root@ntebck01.nte.local logger RDIFF-BACKUP DONE: Backup from $HOSTNAME completed at `date`
