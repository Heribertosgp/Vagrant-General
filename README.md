# Vagrant-General
Vagrant File for General porpouses. It can be used as example for small servers and webapp DevOs.
INTRODUCTION:
The file is based on CentOS7 because I believe is more reliable than Ubuntu. I like the Debian family but the virtualization and the servers are more stronger in RedHat family.
VAGRANTFILE CONFIGURATION:
In order to use HAproxy and NGINX I will use a multiple-Machine configuration to distribute the traffic among several machines.
SERVICES:
To install the services I use a inline SHELL provisioning to keep the things as simple as posible. With YUM repositorie and restarting two services: "Puppet and NGNIX".
To configure the services I used Puppet. (Or I will, it's not done yet)
The services installed are HAProxy, NGINX, PHP-FPM, REDIS (not yet), MYSQL.
Some details on the configuration of the services:

Bibliography:
"Pro Vagrant" by Włodzimierz Gajda, apress 2015
Infography:
https://www.vagrantup.com/docs/
https://puppet.com/docs/puppet/5.3/index.html
http://cbonte.github.io/haproxy-dconv/1.5/configuration.html


