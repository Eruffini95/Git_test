#!/bin/bash
USER="usertest1"

PASSWORD="Respons11"

useradd -p ${PASSWORD} -m -d /home/${USER} ${USER}
usermod -aG sudo ${USER}
