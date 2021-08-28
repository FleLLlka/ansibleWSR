#!/bin/bash

sudo apt update

sudo apt install ansible python3-pip git


sudo pip3 install -r requirements.txt

ansible-playbook main.yml


