Vagrant.configure("2") do |config|

  # Use a suitable NixOS base. VM built with nixbox are tested to work with
  # this plugin.
  config.vm.box = "nixos"

  # set hostname
  config.vm.hostname = "ethminer"

  # Setup networking
  #config.vm.network "private_network", ip: "172.16.16.16"

  # Add the htop package
  config.vm.provision :nixos,
    run: 'always',
    expression: {
      environment: {
        systemPackages: [ :ethminer ]
      }
    }

end
