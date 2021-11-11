#!/usr/bin/bash

# MAKE SURE TO RUN >>  chmod +x <file_name> if you creating new file #
# ------------------------------------------------------------------ #

cd /mnt/ssd/server-backup/
rm -r 3
mv 2/ 3/
mv 1/ 2/
/boot/dietpi/dietpi-backup 1
touch 1/D_`date +%F_T_%T`
rsync -aAX * /mnt/ssd/dietpi_userdata/external/drive/server-backup/ --info=progress2 --delete
