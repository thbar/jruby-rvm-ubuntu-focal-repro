Vagrant.require_version ">= 2.2.6"

# https://rvm.io/integration/vagrant
Vagrant.configure(2) do |config|
  config.vm.define 'jruby_rvm_repro' do |node|
    node.vm.box = 'bento/ubuntu-20.04'
    node.vm.network "private_network", ip: '192.168.33.50'

    config.vm.provision :shell, path: "install-rvm.sh", args: "stable", privileged: false
    config.vm.provision :shell, path: "install-ruby.sh", args: "jruby-9.2.13.0", privileged: false
  end
end
