#!/bin/bash -ex




# nvidia blacklist nouveau
echo "
blacklist lbm-nouveau
options nouveau modeset=0
alias nouveau off
alias lbm-nouveau offidia
" | sudo tee -a /etc/modprobe.d/blacklist.conf
echo options nouveau modeset=0 | sudo tee -a /etc/modprobe.d/nouveau-kms.conf
sudo update-initramfs -u





# install nvidia
wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda_9.1.85_387.26_linux
chmod -c 0700 cuda_9.1.85_387.26_linux
./cuda_9.1.85_387.26_linux




#boot text
systemctl set-default multi-user.target
sed -i 's/linux quiet/text' /etc/default/grub
sudo grub-update




# allow ansible
echo "$(whoami) ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
echo $SSH_AUTH_KEY > .ssh/authorized_keys
