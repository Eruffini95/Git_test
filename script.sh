#!/bin/bash

# Copier le fichier de configuration sur le serveur

cp ./config_files/ssh/sshd_config /etc/ssh/sshd_config

cp ./config_files/ssh/Banner /etc/Banner


# Redemarrer le service sshd

USER="usertest1"

PASSWORD="Respons11"

SSHKEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC0GNdr7Cv8Ogwasb0Q1j1Yi/EVSutmtL2ju1ZjyH92mz7Bpjaqq2K3O///afEfv36wVjoXFf/Y8OabJCh1V5qEhovlLiX9lp82n1fp80NBEaw9/vwynligCCcyaestO058I/3llTM1m/E8dYz0IMYJfhJCY1Wdlnzemwg7h7wj8CubawXSlNKif7EVz1e7s5XJ3dbyqCi0cB/ftQ8MLR2boiowo7PJ7zYZHmzrQCgQNvhHCN4H0BXsiUJxVGD/VZc3wn57bx1PIw6qSDnkzip82XmdCPRsrcRZ1Egq7Ei7G5dsA7HjtpfhMXm2f3FGUT8893pDVluSTaa+1e7Z82Z+S3ENanxIsqzpud2GK2eFy03YjI984d8ICRHgOfJbSg1V7Ia3a9xAoYnOAioCb6AA0QSO3YvgPcBSrcib3XUyKLcoBfvKIRgNvhilx0inpjWMjJ9kpDGZ295/LVOT5yFjT/U7y0rI9lrSUla6D+AsnYjmhBAycQpmiDqiw+BQ7GU= ruffini@LAPTOP-6I862IG7
"

useradd -p ${PASSWORD} -m -d /home/${USER} ${USER}
usermod -aG sudo ${USER}

echo ${SSHKEY} >> ~/.ssh/authorized_keys

systemctl restart sshd
