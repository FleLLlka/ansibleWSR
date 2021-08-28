#!/bin/bash

sudo systemctl disable redis-server
sudo systemctl disable nginx

sudo rm -rf /etc/app
sudo rm -rf /etc/nginx/conf.d/*
sudo rm -rf /etc/proxy
sudo rm -rf /etc/deploy

sudo apt remove -y redis-server nginx
