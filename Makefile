ping:
	cd ./playbooks && \
	ansible all -m ping -i ./inventory

packages:
	cd ./playbooks && \
	ansible-playbook install-packages.yml -i ./inventory

pyenv:
	cd ./playbooks && \
	ansible-playbook install-pyenv.yml -i ./inventory

docker:
	cd ./playbooks && \
	ansible-playbook install-docker.yml -i ./inventory

tasks:
	ansible-playbook droplet.yml --list-tasks

hosts:
	ansible-playbook droplet.yml --list-hosts

tags:
	ansible-playbook droplet.yml --list-tags
