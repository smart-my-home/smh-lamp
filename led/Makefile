PROGRAM = led

EXTRA_COMPONENTS = \
	extras/http-parser \
	$(abspath ../components/wolfssl) \
	$(abspath ../components/cJSON) \
	$(abspath ../components/homekit) # \
#	$(abspath ../sdk/esp-open-rtos/extras/mbedtls) \
#	$(abspath ../sdk/esp-open-rtos/extras/httpd)

FLASH_SIZE ?= 32

EXTRA_CFLAGS += -I../.. -DHOMEKIT_SHORT_APPLE_UUIDS -DLWIP_HTTPD_CGI=1 -DLWIP_HTTPD_SSI=1 -I./fsdata

include ../sdk/esp-open-rtos/common.mk


config:
	bash ../config > conf.h

monminicom:
	minicom -D $(ESPPORT) -b 115200

monitor:
	$(FILTEROUTPUT) --port $(ESPPORT) --baud 115200 --elf $(PROGRAM_OUT)
