#                                 KyberLab
# Copyright (c) 2025-2026, Kyber Development Team, all right reserved.
#




IMAGE_PRE_RUN				+= && sudo chmod 666 /dev/kvm

IMAGE_BOOT_BIN				:= $(OUTPUT_ROOT_PATH)/Linux.bin

IMAGE_RUN_ARGS				+= \
	-kernel $(IMAGE_BOOT_BIN) \
	-append "console=ttyS0 root=/dev/vda rw init=/bin/sh"

