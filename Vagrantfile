# -*- mode: ruby -*-
# vi: set ft=ruby :

# Box / OS
VAGRANT_BOX = "bento/ubuntu-20.04"
# Memorable name for your
VM_NAME = 'GappsDev'
# VM User — 'vagrant' by default
VM_USER = 'vagrant'


Vagrant.configure("2") do |config|
  config.vm.box = VAGRANT_BOX
  # Actual machine name
  config.vm.hostname = VM_NAME
  #config.disksize.size = "60GB"

  # Provider-specific configuration for VirtualBox:
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    vb.name = VM_NAME
    #vb.cpus = 1
    #vb.memory = "4096"

    vb.customize ["modifyvm", :id, "--cpus", 2]
    vb.customize ["modifyvm", :id, "--memory", 4096]
    vb.customize ["modifyvm", :id, "--vram", "64"]
    vb.customize ["setextradata", "global", "GUI/MaxGuestResolution", "any"]
    vb.customize ["setextradata", :id, "CustomVideoMode1", "1024x768x32"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--rtcuseutc", "on"]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
    vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
  end

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Install common packages
  config.vm.provision "shell", path: "scripts/bootstrap.sh", privileged: true
  config.vm.provision "shell", path: "scripts/keyboard-fi.sh"

  # Backend stuff
  config.vm.provision "shell", path: "scripts/java.sh"
  config.vm.provision "shell", path: "scripts/maven.sh"
  config.vm.provision "shell", path: "scripts/gradle.sh"
  config.vm.provision "shell", path: "scripts/redis.sh"
  config.vm.provision "shell", path: "scripts/mongodb.sh"

  # Frontend stuff
  config.vm.provision "shell", path: "scripts/nodejs.sh"
  config.vm.provision "shell", path: "scripts/googlesdk.sh"
  config.vm.provision "shell", path: "scripts/docker.sh"

  # Ide
  config.vm.provision "shell", path: "scripts/ide.sh"

  # trigger reload
  config.vm.provision :reload


end
