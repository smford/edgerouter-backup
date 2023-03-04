#!/bin/bash
INSTALLPATH="/config"
mkdir -p ${INSTALLPATH}/user-data/hooks ${INSTALLPATH}/scripts/post-config.d

curl -o ${INSTALLPATH}/user-data/edgerouter-backup.conf https://raw.githubusercontent.com/psitem/edgerouter-backup/master/config/user-data/edgerouter-backup.conf
curl -o ${INSTALLPATH}/user-data/backup_user_private.key https://raw.githubusercontent.com/psitem/edgerouter-backup/master/config/user-data/backup_user_private.key


curl -o ${INSTALLPATH}/user-data/hooks/03-edgerouter-backup.sh https://raw.githubusercontent.com/psitem/edgerouter-backup/master/config/user-data/hooks/03-edgerouter-backup.sh
chmod 755 ${INSTALLPATH}/user-data/hooks/03-edgerouter-backup.sh

curl -o ${INSTALLPATH}/scripts/post-config.d/hooks.sh https://raw.githubusercontent.com/psitem/edgerouter-backup/master/config/scripts/post-config.d/hooks.sh
chmod 755 ${INSTALLPATH}/scripts/post-config.d/hooks.sh

curl -o ${INSTALLPATH}/scripts/post-config.d/ssh_keys.sh https://raw.githubusercontent.com/psitem/edgerouter-backup/master/config/scripts/post-config.d/ssh_keys.sh
chmod 755 ${INSTALLPATH}/scripts/post-config.d/ssh_keys.sh
