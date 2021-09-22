#!/bin/bash
PATH=/mnt/gdrive2/データ/GSuite/4_Backup/minecraft_hcu
FOLDER=$(/usr/bin/date '+%Y-%m')
FILENAME=$(/usr/bin/date '+%Y%m%d_%H%M%S')

/usr/bin/mkdir -p $PATH/$FOLDER

/usr/bin/mv /home/yude/minecraft/hcu/backups/* $PATH/$FOLDER/
