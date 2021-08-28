#!/bin/bash

apt update

apt-get install -y redis-server nginx

systemctl enable redis-server
systemctl enable nginx

chmod +x /etc/app/web-53

/etc/app/web-53 -c /etc/app/config.yaml &

cp /etc/proxy/wsr.conf /etc/nginx/conf.d/

systemctl restart nginx
systemctl enable haproxy
