#!/bin/bash

group=$1

if [ -n "$group" ]; then
    limit_opt="--limit $group"
else
    limit_opt=""
fi

ansible-playbook -i servers.yml -i inventory.yml \
	./shgn/preflight.yml $limit_opt
ansible-playbook -i servers.yml -i inventory.yml \
	./cephadm-preflight.yml $limit_opt
