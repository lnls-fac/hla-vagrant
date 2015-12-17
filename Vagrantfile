# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :master do |master_config|
    master_config.vm.box = "ubuntu/trusty64"
    master_config.vm.host_name = 'saltmaster.local'
    master_config.vm.network "private_network", ip: "192.168.50.10"
    master_config.vm.synced_folder "hla/salt/", "/srv/salt"
    master_config.vm.synced_folder "hla/pillar/", "/srv/pillar"

    master_config.vm.provision :salt do |salt|
      salt.master_config = "hla/etc/master"
      salt.master_key = "hla/keys/master.pem"
      salt.master_pub = "hla/keys/master.pub"
      salt.minion_key = "hla/keys/master.pem"
      salt.minion_pub = "hla/keys/master.pub"
      salt.seed_master = {
                          "va" => "hla/keys/va.pub",
                          "hla" => "hla/keys/hla.pub"
                         }

      salt.install_type = "stable"
      salt.install_master = true
      salt.no_minion = true
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
    end
  end

  config.vm.define :va do |va_config|
    va_config.vm.box = "ubuntu/trusty64"
    va_config.vm.host_name = 'va.local'
    va_config.vm.network "private_network", ip: "192.168.50.11"

    va_config.vm.provider "virtualbox" do |v|
        v.cpus = 4
        v.memory = 1536
    end

    va_config.vm.provision :salt do |salt|
      salt.minion_config = "hla/etc/va"
      salt.minion_key = "hla/keys/va.pem"
      salt.minion_pub = "hla/keys/va.pub"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
    end
  end

  config.vm.define :hla do |hla_config|
    hla_config.vm.box = "ubuntu/trusty64"
    hla_config.vm.host_name = 'hla.local'
    hla_config.vm.network "private_network", ip: "192.168.50.12"

    hla_config.vm.provider "virtualbox" do |v|
        v.cpus = 2
        v.memory = 1536
    end

    hla_config.vm.provision :salt do |salt|
      salt.minion_config = "hla/etc/hla"
      salt.minion_key = "hla/keys/hla.pem"
      salt.minion_pub = "hla/keys/hla.pub"
      salt.install_type = "stable"
      salt.verbose = true
      salt.colorize = true
      salt.bootstrap_options = "-P -c /tmp"
    end
  end

end
