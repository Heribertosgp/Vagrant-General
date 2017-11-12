# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure(2) do |config|
  
  #Define the box from the Atlas so that ensures that is a "Public box". If you want to use multiple boxes use <name>.vm.box
  config.vm.box = "centos/7"
  
  #Define the diferent machines with <name>.vm.define
  
  #Config/Master node 
  config.vm.define "master", primary: true do |master|
    master.vm.network "forwarded_port", guest: 80, host: 8080, host_ip:"127.0.0.1", auto_correct: true 
    master.vm.provision "shell", inline: "echo Configure_master"
    master.vm.provision "shell", inline: "yum install salt-master -y > /dev/null" 
    master.vm.provision "shell", inline: "yum install haproxy -y > /dev/null"
    #cp1
    #cp2
    #ln
    master.vm.provision "shell", inline: "service salt-master start"
    master.vm.provision "shell", inline: "chkconfig salt-master on"
    master.vm.provision "shell", inline: "salt-key -l accepted"
    master.vm.provision "shell", inline: "salt 'salt-minion' state.highstate \ saltenv=development"
    master.vm.provision "shell", inline: "salt-key -y -A"
    #master.vm.provision "shell", inline: "echo Hello" 
  end
 
  #Second master for redundacy and failover
    config.vm.define "master2", autostart: false do |master2|
    master2.vm.network "forwarded_port", guest: 80, host: 8080, host_ip:"127.0.0.2", auto_correct: true 
    master2.vm.provision "shell", inline: "echo Configure_master"
    master2.vm.provision "shell", inline: "yum install salt-master -y > /dev/null" 
    master2.vm.provision "shell", inline: "yum install haproxy -y > /dev/null"
    #cp1
    #cp2
    #ln
    master2.vm.provision "shell", inline: "service salt-master start"
    master2.vm.provision "shell", inline: "chkconfig salt-master on"
    #master.vm.provision "shell", inline: "echo Hello" 
  end
  
#Secundary nodes or minions
  config.vm.define "node1" do |node1|
    node1.vm.network "forwarded_port", guest: 802, host: 80, host_ip:"127.0.0.3", auto_correct: true
    node1.vm.provision "shell", inline: "yum install salt-minion -y >/dev/null"
    node1.vm.provision "shell", inline: "service salt-minion start"
    node1.vm.provision "shell", inline: "chkconfig salt-minion on"
    #node1.vm.provision "shell", inline: "echo Hello"
  end
  
  config.vm.define "node2" do |node2|
    node2.vm.network "forwarded_port", guest: 803, host: 80, host_ip:"127.0.0.4", auto_correct: true  
    node2.vm.provision "shell", inline: "yum install salt-minion -y >/dev/null"
    node2.vm.provision "shell", inline: "service salt-minion start"
    node2.vm.provision "shell", inline: "chkconfig salt-minion on"
  end
  
  #If more nodes needed start it with $vagrant up <name>
  config.vm.define "node3", autostart: false do |node3|
    node3.vm.network "forwarded_port", guest: 804, host: 80, host_ip:"127.0.0.5", auto_correct: true
    node3.vm.provision "shell", inline: "yum install salt-minion -y >/dev/null"
    node3.vm.provision "shell", inline: "service salt-minion start"
    node3.vm.provision "shell", inline: "chkconfig salt-minion on"
  end
  
  config.vm.define "node4", autostart: false do |node4|
    node4.vm.network "forwarded_port", guest: 805, host: 80, host_ip:"127.0.0.6", auto_correct: true  
    node4.vm.provision "shell", inline: "yum install salt-minion -y >/dev/null"
    node4.vm.provision "shell", inline: "service salt-minion start"
    node4.vm.provision "shell", inline: "chkconfig salt-minion on"
  end
  
  # Sync folders, "Host ../folder_name", "/Guest_folder_name" -Options
   config.vm.synced_folder "../manifests", "/vagrant_manifests", create: true
   config.vm.synced_folder "./", "/srv/salt", id: "vagrant-root"

# Provider specific configuration so you can fine-tune various
# backing providers for Vagrant. These expose provider-specific options.
#Uncoment for "virtualbox", "vmware" "libvirt".
#    config.vm.provider "virtualbox" do |v|
#    v.memory = 1024
# Display the VirtualBox GUI when booting the machine
  #  v.gui = true 
#  end

#  config.vm.provider "vmware_fusion" do |v|
#    v.vmx["memsize"] = "1024"
#  end

#  config.vm.provider "libvirt" do |libvirt|
#    libvirt.memory = 1024
#  end

  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end

  # Enable provisioning with a shell script. 
  #Basic SetUp
   config.vm.provision "shell", inline: <<-SHELL
      echo "Installing basic setup"
      yum install epel-release -y > /dev/null
      rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm > /dev/null
      yum update -y > /dev/null
      echo "Installing utilities"
      yum install nano -y > /dev/null
      yum install puppet -y > /dev/null
      yum install nginx -y > /dev/null
      yum install php -y > /dev/null
      yum install curl -y > /dev/null
      yum install php-fpm -y > /dev/null
      yum install ntp -y > /dev/null
      echo "Installing DB"     
      yum install debconf-utils -y > /dev/null
      yum install mysql -y > /dev/null
      yum update -y > /dev/null
      echo "Restarting services"
      ntpd
      service ntpd restart
      service puppet restart
      service nginx restart
      echo "You just installed Puppet, Ngnix, haproxy, php-fpm and MySQL"
   SHELL

#Shell single line
#config.vm.provision "shell", inline: "echo Hello"

  #Puppet provisioning
  #config.vm.provision "puppet" 

end
