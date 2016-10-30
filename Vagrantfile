# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define :db1 do |db1|
    db1.vm.box = "mjp182/CentOS_6.6"
    db1.vm.network "private_network", ip: "10.11.1.103"
    db1.vm.network "forwarded_port", guest: 22, host: 2222, id: "ssh", disabled: "true"
    db1.vm.network "forwarded_port", guest: 22, host: 2203
    db1.vm.hostname = "db1"

  end

  config.vm.define :db2, autostart: true do |db2|
    db2.vm.box = "mjp182/CentOS_6.6"
    db2.vm.network "private_network", ip: "10.11.1.104"
    db2.vm.network "forwarded_port", guest: 22, host: 2222, id: "ssh", disabled: "true"
    db2.vm.network "forwarded_port", guest: 22, host: 2204
    db2.vm.hostname = "db2"

  end

  config.vm.define :db3, autostart: false do |db3|
    db3.vm.box = "mjp182/CentOS_6.6"
    db3.vm.network "private_network", ip: "10.11.1.106"
    db3.vm.network "forwarded_port", guest: 22, host: 2222, id: "ssh", disabled: "true"
    db3.vm.network "forwarded_port", guest: 22, host: 2206
    db3.vm.hostname = "db3"

  end


  config.vm.define :ansible do |ansible|
    ansible.vm.box = "mjp182/CentOS_6.6"
    ansible.vm.network "private_network", ip: "10.11.1.105"
    ansible.vm.network "forwarded_port", guest: 22, host: 2222, id: "ssh", disabled: "true"
    ansible.vm.network "forwarded_port", guest: 22, host: 2205
    ansible.vm.synced_folder "ansible/", "/home/vagrant/ansible"
    ansible.vm.synced_folder ".vagrant/", "/home/vagrant/.v", mount_options: ["dmode=775,fmode=700"]
    ansible.vm.provision "shell", inline: "sudo yum -y install epel-release; sudo yum -y install ansible"
    ansible.vm.hostname = "ansible"
  end



end
