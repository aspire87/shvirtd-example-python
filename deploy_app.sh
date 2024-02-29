#!/bin/bash

yum install git -y

curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh
systemctl  start docker && systemctl enable docker

cd /opt
git clone https://github.com/aspire87/shvirtd-example-python.git && cd shvirtd-example-python
docker compose up -d
echo "Wait mysql  container started...."
sleep 180

echo "Done...."