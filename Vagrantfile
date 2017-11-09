# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|
  
  #Define the box from the Atlas so that ensures that is a "Public box". If you want to use multiple boxes use <name>.vm.box
  config.vm.box = "centos/7"
  
  #Define the diferent machines with <name>.vm.define
  
  #Config/Master node 
  config.vm.define "master", primary: true do |master|
    master.vm.network "forwarded_port", guest: 80, host: 8080, host_ip:"127.0.0.1", auto_correct: true 
    #master.vm.provision "shell", inline: "echo Hello"
  end
  
#Secundary nodes
  config.vm.define "node1" do |node1|
    node1.vm.network "forwarded_port", guest: 802, host: 8080, host_ip:"127.0.0.2", auto_correct: true
    #node1.vm.provision "shell", inline: "echo Hello"
  end
  
  config.vm.define "node2" do |node2|
    node2.vm.network "forwarded_port", guest: 803, host: 8080, host_ip:"127.0.0.3", auto_correct: true  
  end
  
  #If more nodes needed start it with $vagrant up <name>
  config.vm.define "node3", autostart: false do |node3|
    node3.vm.network "forwarded_port", guest: 804, host: 8080, host_ip:"127.0.0.4", auto_correct: true
  end
  
  config.vm.define "node4", autostart: false do |node4|
    node4.vm.network "forwarded_port", guest: 805, host: 8080, host_ip:"127.0.0.5", auto_correct: true  
  end
  
  # Sync folders, "Host ../folder_name", "/Guest_folder_name" -Options
   config.vm.synced_folder "../manifests", "/vagrant_manifests"

  # Provider specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  #Uncoment for "virtualbox":
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end

  # Enable provisioning with a shell script. 
  #Basic SetUp
   config.vm.provision "shell", inline: <<-SHELL
      echo "Instaling basic setup"
      yum install epel-release -y > /dev/null
      rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm > /dev/null
      yum update -y > /dev/null
      echo "Installing utilities"
      yum install nano -y > /dev/null
      yum install puppet -y > /dev/null
      yum install nginx -y > /dev/null
      yum install haproxy -y > /dev/null
      yum install php -y > /dev/null
      yum install curl -y > /dev/null
      yum install php-fpm -y > /dev/null
      echo "Installing DB"     
      yum install debconf-utils -y > /dev/null
      yum install mysql -y > /dev/null
      yum update -y > /dev/null
      echo "Restarting Puppet and Nginx"
      service puppet restart
      service nginx restart
      echo "You just installed Puppet, Ngnix, haproxy, php-fpm and MySQL"
   SHELL

#Shell single line
#config.vm.provision "shell", inline: "echo Hello"

  #Puppet provisioning
  #config.vm.provision "puppet" 

end
