#! /bin/sh

curl -sSL https://get.docker.com/ | CHANNEL=stable sh
systemctl enable --now docker
apt -y update
apt -y upgrade
apt install docker-compose-plugin
curl -L https://github.com/docker/compose/releases/download/v$(curl -Ls https://www.servercow.de/docker-compose/latest.php)/docker-compose-$(uname -s)-$(uname -m) > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
