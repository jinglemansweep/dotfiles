#!/bin/bash

declare -r borg_repo="/mnt/nas/backup/borg/laptops/personal"
declare -r backup_name="$(date +%Y%m%d-%H%m%S)"

echo "BORG BACKUP"
echo "Repo:   ${borg_repo}"
echo "Name:   ${backup_name}"

borg create \
 --progress \
 --exclude-caches \
 --pattern "- /home/*/nas" \
 --pattern "- /home/*/.cache" \
 --pattern "- /home/*/.config" \
 --pattern "- /home/*/.vscode" \
 ${borg_repo}::${backup_name} \
 ~
