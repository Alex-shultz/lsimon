#!/bin/bash

WORK_DIR=$(pwd)
ZABBIX_DIR=/etc/zabbix

mkdir -p ${ZABBIX_DIR}/scripts
/bin/cp -r ${WORK_DIR}/linux/scripts-bash/* ${ZABBIX_DIR}/scripts

chown -R root\: ${ZABBIX_DIR}/scripts
chmod a+x ${ZABBIX_DIR}/scripts/*

/bin/cp ${WORK_DIR}/linux/zabbix_agentd.conf.d/lsi_raid_linux.conf ${ZABBIX_DIR}/zabbix_agentd.d/lsi_raid_linux.conf
chown root\: ${ZABBIX_DIR}/zabbix_agentd.d/lsi_raid_linux.conf
chmod 644 ${ZABBIX_DIR}/zabbix_agentd.d/lsi_raid_linux.conf


/bin/cp ${WORK_DIR}/linux/sudoers_zabbix_lsistorcli /etc/sudoers.d/sudoers_zabbix_lsistorcli
chown root\: /etc/sudoers.d/sudoers_zabbix_lsistorcli
chmod 644 /etc/sudoers.d/sudoers_zabbix_lsistorcli

systemctl restart zabbix-agent
