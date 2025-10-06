#!/bin/bash
ansible-playbook -i servers.yml -i inventory.yml \
	./shgn/bootstrap.yml
