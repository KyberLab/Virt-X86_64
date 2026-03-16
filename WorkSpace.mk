#                                 KyberLab
# Copyright (c) 2025-2026, Kyber Development Team, all right reserved.
#




###############################################################################
# Build Config

$(eval $(call rule_inc,$(WORKSPACE_ROOT_PATH)/config/Default.mk))

QEMU_RUN_BIN				?= qemu-system-x86_64
QEMU_MACHINE_TYPE			?= q35
QEMU_CPU_TYPE				?= host

QEMU_BOOT_IMAGE				?= Ubuntu
QEMU_TERM_TYPE				?= none
#QEMU_STORAGE_TYPE			?= pcie
QEMU_NETWORK_TYPE			?= none
QEMU_GRAPHIC_TYPE			?= none
QEMU_GRAPHIC_ARGS			?= -nographic

QEMU_RUN_EXTRAS				?= -enable-kvm


EMU_RUN_ARGS				:= \
	$(if $(QEMU_RUN_BIN),QEMU_RUN_BIN=$(QEMU_RUN_BIN)) \
	$(if $(QEMU_MACHINE_TYPE),QEMU_MACHINE_TYPE=$(QEMU_MACHINE_TYPE)) \
	$(if $(QEMU_CPU_TYPE),QEMU_CPU_TYPE=$(QEMU_CPU_TYPE)) \
	$(if $(QEMU_BOOT_IMAGE),QEMU_BOOT_IMAGE=$(QEMU_BOOT_IMAGE)) \
	$(if $(QEMU_TERM_TYPE),QEMU_TERM_TYPE=$(QEMU_TERM_TYPE)) \
	$(if $(QEMU_STORAGE_TYPE),QEMU_STORAGE_TYPE=$(QEMU_STORAGE_TYPE)) \
	$(if $(QEMU_NETWORK_TYPE),QEMU_NETWORK_TYPE=$(QEMU_NETWORK_TYPE)) \
	$(if $(QEMU_GRAPHIC_TYPE),QEMU_GRAPHIC_TYPE=$(QEMU_GRAPHIC_TYPE)) \
	$(if $(QEMU_GRAPHIC_ARGS),QEMU_GRAPHIC_ARGS=$(QEMU_GRAPHIC_ARGS)) \
	$(if $(QEMU_RUN_EXTRAS),QEMU_RUN_EXTRAS=$(QEMU_RUN_EXTRAS))



###############################################################################
# Network Config

$(eval $(call rule_inc,$(WORKSPACE_ROOT_PATH)/config/Network.mk))



###############################################################################
# Repo Config

$(eval $(call rule_inc,$(WORKSPACE_ROOT_PATH)/config/Repo.mk))

