#!/bin/bash

sudo apt install -y libmicrohttpd-dev libssl-dev cmake build-essential libhwloc-dev git libssl-dev
rm -rf xmr-stak
git clone https://github.com/fireice-uk/xmr-stak.git
cd xmr-stak/
sed -i 's/2.0/0.02/' xmrstak/donate-level.hpp 
rm -rf build
mkdir -pv build
cd build/
cmake -DCPU_ENABLE=ON -DOpenCL_ENABLE=OFF -DMICROHTTPD_ENABLE=OFF -DHWLOC_ENABLE=OFF ..
make

cd ~
cat <<EOF > xmr.sh
#!/bin/bash
cd xmr-stak/build
./bin/xmr-stak --currency monero --noAMD --noNVIDIA  -O xmr-us-west1.nanopool.org:14433 -u $XMR_ADDRESS.$HOSTNAME/$XMR_EMAIL
EOF

chmod 700 ~/xmr.sh
screen -L -S xmr -dm ~/xmr.sh
