# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "smallhadroncollider/centos-6.5-lamp"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.synced_folder "src/", "/var/www/public", create: true
  config.vm.provision "shell", inline: <<-SHELL
    cd /var/www && rm -rf public/*
    yum -y install git
    git clone https://github.com/FSE301-Photerra/photerra.git public
    mysql -u root < public/scripts/initdb.sql
  SHELL
end
