# Vagrant-General
<p>Vagrant File for General porpouses. It can be used as example for small servers and webapp DevOs.</p>
<h2>INTRODUCTION:</h2>
<p>The file is based on CentOS7 because I believe is more reliable than Ubuntu. I like the Debian family but the virtualization and the servers are more stronger in RedHat family.</p>
<h2>Installation</h2>
<p>From CLI run this command:</p>
<pre>
<code>
$git clone https://github.com/Heribertosgp/Vagrant-General.git
$cd Vagrant-General
$vagrant up
</code>
</pre>
<p>Now you are up and running!</p>
<p>If you only want to run one machine, you can especify it in the "Vagrant up" command:</p>
<pre>
<code>
$vagrant up master/node1/node2
</code>
</pre>
<h3>VAGRANTFILE CONFIGURATION:</h3>
<p>In order to use HAproxy and NGINX I will use a multiple-Machine configuration to distribute the traffic among several machines.</p>
<p> The config file of HAProxy is located on <code>/etc/haproxy/haproxy.cfg</code>
<h3>SERVICES:</h3>
<p>To install the services I use a inline SHELL provisioning to keep the things as simple as posible. With YUM repositorie and restarting two services: "Puppet and NGNIX".
To configure the services is possible to use Puppet or Salt, in the file services.pp for puppet and master for salt.
The services installed are HAProxy, NGINX, PHP-FPM, REDIS, MYSQL.
Some details on the configuration of the services:
</p>
<p>The configuration file of each service can be modified or resyncronize with other file from Git project.
  For Salt you can use this sintax:
  </p>
  <pre>
  <code>
  {% if '/vagrant/nginx/html' in salt['mount.active']() %}
/usr/share/nginx/html:
  file:
    - symlink
    - target: /vagrant/nginx/html/index.html
{% endif %}
  </code>
  </pre>
<p></p>
<h3>Bibliography:</h3>
<p>"Pro Vagrant" by Włodzimierz Gajda, apress 2015.</p>
<p>Salt Cookbook by Anirban Saha Published by Packt Publishing, 2015.</p>
<p>Network Security with OpenSSL by Pravir Chandra; Matt Messier; John Viega Published by O'Reilly Media, Inc., 2002 </p>
<P>Network Security with OpenSSL by John Viega; Matt Messier; Pravir Chandra Published by O'Reilly Media, Inc., 2002 </p>
<h3>Infography:</h3>
<p><a href="https://www.vagrantup.com/docs/">Vagrant documentation</a></p>
<p><a href="https://puppet.com/docs/puppet/5.3/index.html">Puppet documentation</a></p>
<p><a href="http://docs.saltstack.com/topics/tutorials/walkthrough.html">Saltstak wolkthrough</a></p>
<p><a href="http://cbonte.github.io/haproxy-dconv/1.5/configuration.html">HAproxy documentation</a></p>
<p><a href="https://docs.saltstack.com/en/latest/ref/configuration/master.html">Salt configuration master</a></p>







