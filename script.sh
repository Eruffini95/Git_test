#!/bin/bash
NEW_USERS="/home/ubuntu/Git_test/script.sh"
HOME_BASE="/home/"
cat ${NEW_USERS} | \
while read USER PASSWORD
do
useradd -p ${PASSWORD} -m -d ${HOME_BASE}${USER} ${USER}  mkdir "/home/${USER}/Maildir"
echo ${USER} OK
done
