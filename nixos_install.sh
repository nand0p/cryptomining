#!/bin/sh

      
# exit if not root
if [[ $EUID -ne 0 ]]; then
   echo "You must be root to install nixos."
   exit 1
fi


# install base nixos on /mnt
nixos-generate-config --root /mnt
nixos-install


# prep root for rebuild switch
chroot /mnt
mkdir -pv /etc/nixos
pushd /etc/nixos
git clone --single-branch --branch ethminer https://github.com/nand0p/nixpkgs.git
curl -o configuration.nix https://raw.githubusercontent.com/nand0p/nixos-configurations/master/miner.nix


# rebuild nixos with ethminer service
export NIX_PATH=nixpkgs=/etc/nixos/nixpkgs:nixos-config=/etc/nixos/configuration.nix
nixos-rebuild switch
