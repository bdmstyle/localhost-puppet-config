VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
config.vm.box = "hashicorp/precise32"
config.vm.define :web do |web_config|
web_config.vm.network :private_network, :ip => "192.168.33.12"

config.vm.provision :shell do |shell|
  shell.inline = "mkdir -p /etc/puppet/modules;
                  puppet module install zuinnote-oraclejdk8;"
end

config.vm.provision :puppet do |puppet|
  puppet.manifests_path = "manifests"
  puppet.manifest_file = "web.pp"
end

end
end
