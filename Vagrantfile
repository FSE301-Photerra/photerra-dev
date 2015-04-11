# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "smallhadroncollider/centos-6.5-lamp"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.synced_folder "src/", "/var/www/public", create: true
  config.vm.provision "shell", inline: <<-SHELL
    cd /var/www/public && rm -rf ./*
    yum -y install git
    git init
    git remote add origin https://github.com/FSE301-Photerra/photerra.git
    git pull origin master
    mysql -u root < /vagrant/scripts/initdb.sql

    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer

    composer install
  SHELL
end
