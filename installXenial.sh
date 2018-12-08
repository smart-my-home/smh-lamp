#/bin/sh
apt update
apt install sudo -y
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu/ trusty multiverse" && sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu/ trusty-updates multiverse"
git submodule update --init --recursive
sudo apt-get install make unrar-free autoconf automake libtool gcc g++ gperf \
    flex bison texinfo gawk ncurses-dev libexpat-dev python-dev python python-serial \
    sed git unzip bash help2man wget bzip2 esptool libtool-bin gperf bison flex texinfo gperf -y
git clone --recursive https://github.com/pfalcon/esp-open-sdk.git
cd esp-open-sdk
make toolchain esptool libhal STANDALONE=n
cd ..
git clone --recursive https://github.com/Superhouse/esp-open-rtos.git



