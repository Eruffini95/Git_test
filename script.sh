#!/bin/bash

# Copier le fichier de configuration sur le serveur

cp ./config__files/ssh/sshd_config /etc/ssh/sshd_config

cp ./config__files/ssh/Banner /etc/Banner


# Redemarrer le service sshd

USER="usertest1"

PASSWORD="Respons11"

SSHKEY=""

useradd -p ${PASSWORD} -m -d /home/${USER} ${USER}
usermod -aG sudo ${USER}

echo ${SSHKEY} >> ~/.ssh/authorized_keys

systemctl restart sshd
