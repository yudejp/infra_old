#!/bin/bash
gzip=/usr/bin/gzip

PATH=/mnt/gdrive2/データ/GSuite/4_Backup/pleroma
DATE=$(/usr/bin/date '+%Y%m%d')
FILENAME=$(/usr/bin/date '+%Y%m%d_%H%M%S')

/usr/bin/mkdir -p $PATH/$DATE

/usr/bin/tar -cf $FILENAME.tar /home/yude/docker-compose/pleroma
/usr/bin/gzip $FILENAME.tar

/usr/bin/mv $FILENAME.tar.gz $PATH/$DATE/
