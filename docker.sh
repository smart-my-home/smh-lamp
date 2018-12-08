#/bin/sh
git submodule update --init --recursive
export PATH="sdk/esp-open-sdk/xtensa-lx106-elf/bin:$PATH"
make -C led all
python -m SimpleHTTPServer $PORT