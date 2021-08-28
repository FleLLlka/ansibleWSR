#!/bin/bash

sudo systemctl disable redis-server
sudo systemctl disable nginx
sudo systemctl disable haproxy

sudo rm -rf /etc/app
sudo rm -rf /etc/nginx/conf.d/*
sudo rm -rf /etc/proxy
sudo rm -rf /etc/deploy


sudo rm -rf /etc/haproxy/haproxy.cfg
sudo rm -rf /home/azadmin/haproxy*



sudo apt remove -y redis-server nginx haproxy
