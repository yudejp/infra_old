#!/bin/bash
PATH=/mnt/gdrive2/データ/GSuite/4_Backup/minecraft
FOLDER=$(/usr/bin/date '+%Y-%m')
FILENAME=$(/usr/bin/date '+%Y%m%d_%H%M%S')

/usr/bin/mkdir -p $PATH/$FOLDER

/usr/bin/mv /home/yude/minecraft/paper/backups/* $PATH/$FOLDER/
