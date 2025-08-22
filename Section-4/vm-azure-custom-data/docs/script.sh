#! /bin/bash

# Remove todas os pacotes que podem conflitar com o Docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

# Instalar o Docker usando apt package manager

## Adiciona Docker oficial GPG key:
apt-get update -y
apt-get install -y ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc

## Adiciona o repository para o apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update -y

## Instala a ultima versão do docker:
apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Cria o grupo do Docker se não existir
if ! getent group docker > /dev/null 2>&1; then
    groupadd docker
fi

# Adiciona o usuário atual ao grupo do Docker
usermod -aG docker $USER

# Roda o comando para ativar as mudanças de grupo
newgrp docker

# Roda imagem do nginx
docker container run -dt --name nginx -p 8080:80 nginx:1.29.1-alpine