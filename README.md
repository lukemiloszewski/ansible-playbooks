<h1 align="center">Ansible Playbooks</h1>
<p align="center">Configure, deploy and orchestrate remote servers 📕</p>

## Installation

Install ansible:

```shell
pipx install --include-deps ansible
```

Create a configuration file (`~/.ansible.cfg`):

```yml
[defaults]
remote_user = <remote_user>
```

Add the IP address of your remote server to the `inventory` file:

```yml
[droplets]
<ip_address>
```

## Usage

To update and install system packages:

```shell
make packages
```

To install pyenv:

```shell
make pyenv
```

> The current playbooks are configured for Ubuntu 20.04
