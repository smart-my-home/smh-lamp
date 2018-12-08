export SDK_PATH="esp-open-rtos"
export PATH="esp-open-sdk/xtensa-lx106-elf/bin/:$PATH"
make -C examples/led all
zip -r r.zip examples/led