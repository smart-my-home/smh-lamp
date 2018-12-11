PROGRAM = led

EXTRA_COMPONENTS = \
	extras/http-parser \
	$(abspath ../../../components/wolfssl) \
	$(abspath ../../../components/cJSON) \
	$(abspath ../../../components/homekit)

FLASH_SIZE ?= 32

EXTRA_CFLAGS += -I../.. -DHOMEKIT_SHORT_APPLE_UUIDS

include ../../../sdk/esp-open-rtos/common.mk

monitor:
	$(FILTEROUTPUT) --port $(ESPPORT) --baud 115200 --elf $(PROGRAM_OUT)
