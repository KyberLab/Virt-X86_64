#                                 KyberVirt
# Copyright (c) 2025-2026, Kyber Development Team, all right reserved.
#




###############################################################################
# Build Config

$(eval $(call rule_inc,$(WORKSPACE_ROOT_PATH)/config/Default.mk))

QEMU_RUN_BIN				?= qemu-system-x86_64
QEMU_MACHINE_TYPE			?= q35
QEMU_CPU_TYPE				?= qemu64

QEMU_BOOT_IMAGE				?= Linux
QEMU_TERM_TYPE				?= none
QEMU_STORAGE_TYPE			?= none
QEMU_NETWORK_TYPE			?= none
QEMU_GRAPHIC_TYPE			?= none

#QEMU_RUN_EXTRAS				?= -kvm

EMU_RUN_ARGS				:= \
	QEMU_RUN_BIN=$(QEMU_RUN_BIN) \
	QEMU_MACHINE_TYPE=$(QEMU_MACHINE_TYPE) \
	QEMU_CPU_TYPE=$(QEMU_CPU_TYPE) \
	QEMU_BOOT_IMAGE=$(QEMU_BOOT_IMAGE) \
	QEMU_TERM_TYPE=$(QEMU_TERM_TYPE) \
	QEMU_STORAGE_TYPE=$(QEMU_STORAGE_TYPE) \
	QEMU_NETWORK_TYPE=$(QEMU_NETWORK_TYPE) \
	QEMU_GRAPHIC_TYPE=$(QEMU_GRAPHIC_TYPE) \
	$(if $(QEMU_RUN_EXTRAS),QEMU_RUN_EXTRAS=$(QEMU_RUN_EXTRAS))



###############################################################################
# Network Config

$(eval $(call rule_inc,$(WORKSPACE_ROOT_PATH)/config/Network.mk))



###############################################################################
# Repo Config

$(eval $(call rule_inc,$(WORKSPACE_ROOT_PATH)/config/Repo.mk))

