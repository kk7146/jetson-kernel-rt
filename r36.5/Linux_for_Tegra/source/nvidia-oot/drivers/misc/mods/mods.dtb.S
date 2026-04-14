#include <asm-generic/vmlinux.lds.h>
.section .dtb.init.rodata,"a"
.balign STRUCT_ALIGNMENT
.global __dtb_mods_begin
__dtb_mods_begin:
.incbin "/home/dongeun/Desktop/github/jetson-kernel-rt/r36.5/Linux_for_Tegra/source/nvidia-oot/drivers/misc/mods/mods.dtb" 
__dtb_mods_end:
.global __dtb_mods_end
.balign STRUCT_ALIGNMENT
