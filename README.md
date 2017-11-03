# Vagrant-General
Vagrant File for General porpouses. It can be used as example for small servers and webapp DevOs.
The file is based on CentOS7 because I believe is more reliable than Ubuntu. I like the Debian family but the virtualization and the servers are more stronger in RedHat family.
To install the services I use a inline SHELL provisioning to keep the things as simple as posible.
To configure the services I used Puppet. (Or I will, it's not done yet)
The services installed are HAProxy, NGINX, PHP-FPM, REDIS (not yet), MYSQL.
Some details on the configuration of the services:
(Wait for it)
