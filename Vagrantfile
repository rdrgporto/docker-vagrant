# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    
  # Configure VM
  config.vm.box         = "ubuntu/focal64"
  config.vm.hostname    = "docker"
  config.ssh.insert_key = true
  config.vm.network "public_network"
  
  # Configure provisioning
  config.vm.provision "ansible_local" do |ansible|
    ansible.install        = true
    ansible.playbook       = "site.yml"
    ansible.inventory_path = "inventories/staging/hosts.ini"
    ansible.limit          = "all"
  end
  
  # Configure Virtualbox
  config.vm.provider "virtualbox" do |vb, override|
    vb.cpus   = 1
    vb.memory = 2048
    vb.gui    = false
    vb.name   = "docker"
  end

end
