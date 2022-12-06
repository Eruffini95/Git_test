#!/bin/bash

# Copier le fichier de configuration sur le serveur

cp ./config__files/ssh/sshd_config /etc/ssh/sshd_config

cp ./config__files/ssh/Banner /etc/Banner


# Redemarrer le service sshd

systemctl restart sshd

USER="usertest1"

PASSWORD="Respons11"

useradd -p ${PASSWORD} -m -d /home/${USER} ${USER}
usermod -aG sudo ${USER}
