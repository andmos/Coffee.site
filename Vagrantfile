# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.box_url = "ubuntu/trusty64"
  config.vm.provision :shell, :inline => "sudo apt-get update"
  config.vm.provision :shell, :inline => "sudo apt-get install software-properties-common -y"
  config.vm.provision :shell, :inline => "sudo apt-get -y install python-pip -y"
  config.vm.provision :shell, :inline => "sudo apt-get install vim -y"
  
  config.vm.provision :shell, :inline => "sudo pip install mkdocs"
  
  config.vm.provision :shell, :inline => "curl -sSL https://get.docker.com/gpg | sudo apt-key add -"
  config.vm.provision :shell, :inline => "curl -sSL https://get.docker.com/ | sh"
  config.vm.provision :shell, :inline => "sudo usermod -aG docker vagrant"
  config.vm.provision :shell, :inline => "echo All done, go vagrant ssh!"

  config.vm.forward_port 8080, 8080
 
end


Vagrant.configure("2") do |config|

config.vm.provider :virtualbox do |virtualbox|

virtualbox.customize ["modifyvm", :id, "--memory", "1024"]

end
end
