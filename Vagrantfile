# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "http://files.vagrantup.com/precise32.box"
  config.vm.provision "shell", privileged: false, path: "bootstrap.sh"
end
