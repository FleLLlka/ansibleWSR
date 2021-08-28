#!/bin/bash

sudo apt update

sudo apt-get install -y redis-server nginx

sudo systemctl enable redis-server
sudo systemctl enable nginx

sudo chmod +x /etc/app/web-53

/etc/app/web-53 -c /etc/app/config.yaml &

sudo cp /etc/proxy/wsr.conf /etc/nginx/conf.d/

sudo systemctl restart nginx
