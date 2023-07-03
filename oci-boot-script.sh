#!/bin/bash
sudo apt update
sudo apt -y upgrade

sudo timedatectl set-timezone Asia/Seoul

sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo echo '/swapfile swap swap defaults 0 0' | sudo tee -a /etc/fstab

sudo ufw allow 21
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443
sudo ufw allow 8000
sudo ufw allow 9443
yes | sudo ufw enable
sudo systemctl enable ufw.service
sudo ufw restart
sudo ufw status

curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

sudo apt-get -y install docker-compose


ip="$(curl --silent icanhazip.com)"
echo ""
echo ""
echo "===== oci boot script ====="
echo ""
echo "부트 스크립트 설정이 완료되었습니다."
