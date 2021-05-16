(1) install ofed:

download mlx-ofed-4.9
tar -xf ..  && cd 
./mlnxofedinstall --dpdk --upstream-libs

sudo vim /etc/modprobe.d/mlx4_core.conf
add: options mlx4_core log_num_mgm_entry_size=-1
sudo service openibd restart

(2) install dpdk:

download dpdk-18 or 20.11.1
pip3 install --user meson
meson <options> build 
cd build
ninja
ninja install
ldconfig
