# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "http://files.vagrantup.com/precise32.box"
  config.vm.provision "shell", privileged: false, path: "bootstrap.sh"

  config.vm.synced_folder "~/Code/acceptance-tests-starter", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  end
end
