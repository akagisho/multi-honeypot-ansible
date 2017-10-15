# multi-honeypot-ansible

Set up various honeypot servers

## Supported softwares

* [iplog](http://freecode.com/projects/iplog) - TCP/IP traffic logger.
* [Cowrie](https://github.com/micheloosterhof/cowrie) - SSH honeypot (port 22).
* [Mailoney](https://github.com/awhitehatter/mailoney) - SMTP-AUTH honeypot (port 587).
* Postfix - SMTP open relay mail server (port 25).

## Requirements

* CentOS 7.x
 * sshd is running without port 25
* Ansible 2.2+

For local development environment:

* VirtualBox
* Vagrant 1.5+

## Usage

### production

First of all, install CentOS 7.x to the server.

Change ssh port in `/etc/ssh/sshd_config`.

    Port 10022

Create Ansible inventory file.

    $ ${EDITOR} production/inventory
    [default]
    honeypot.example.com ansible_user=root ansible_port=10022

Run ansible playbook.

    $ ansible-playbook -i production/inventory site.yml

### local vagrant

Run ansible playbook.

    $ vagrant up
    $ vagrant provision
