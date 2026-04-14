	.arch armv8-a+crc
	.file	"bounds.c"
// GNU C89 (Buildroot 2020.08) version 9.3.0 (aarch64-buildroot-linux-gnu)
//	compiled by GNU C version 4.8.4, GMP version 6.1.2, MPFR version 4.0.2, MPC version 1.1.0, isl version none
// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -nostdinc -I ./arch/arm64/include
// -I ./arch/arm64/include/generated -I ./include
// -I ./arch/arm64/include/uapi -I ./arch/arm64/include/generated/uapi
// -I ./include/uapi -I ./include/generated/uapi -I ./ubuntu/include
// -iprefix /home/dongeun/l4t-gcc/bin/../lib/gcc/aarch64-buildroot-linux-gnu/9.3.0/
// -isysroot /home/dongeun/l4t-gcc/aarch64-buildroot-linux-gnu/sysroot
// -D __KERNEL__ -D KASAN_SHADOW_SCALE_SHIFT=
// -D CONFIG_CC_HAS_K_CONSTRAINT=1 -D ARM64_ASM_ARCH="armv8.5-a"
// -D KASAN_SHADOW_SCALE_SHIFT= -D KBUILD_MODFILE="./bounds"
// -D KBUILD_BASENAME="bounds" -D KBUILD_MODNAME="bounds"
// -D __KBUILD_MODNAME=kmod_bounds
// -isystem /home/dongeun/l4t-gcc/bin/../lib/gcc/aarch64-buildroot-linux-gnu/9.3.0/include
// -include ./include/linux/compiler-version.h
// -include ./include/linux/kconfig.h
// -include ./include/linux/compiler_types.h -MMD kernel/.bounds.s.d
// kernel/bounds.c -mlittle-endian -mgeneral-regs-only -mabi=lp64
// -mbranch-protection=pac-ret+leaf -mcpu=cortex-a53
// -auxbase-strip kernel/bounds.s -O2 -Wall -Wundef
// -Werror=strict-prototypes -Wno-trigraphs
// -Werror=implicit-function-declaration -Werror=implicit-int
// -Werror=return-type -Wno-format-security -Wno-psabi -Wno-frame-address
// -Wformat-truncation=0 -Wformat-overflow=0 -Wno-address-of-packed-member
// -Wframe-larger-than=2048 -Wimplicit-fallthrough=5 -Wno-main
// -Wno-unused-but-set-variable -Wunused-const-variable=0
// -Wdeclaration-after-statement -Wvla -Wno-pointer-sign
// -Wno-stringop-truncation -Wno-array-bounds -Wstringop-overflow=0
// -Wno-restrict -Wno-maybe-uninitialized
// -Walloc-size-larger-than=18446744073709551615EiB -Werror=date-time
// -Werror=incompatible-pointer-types -Werror=designated-init
// -Wno-packed-not-aligned -std=gnu90 -p -fmacro-prefix-map=./=
// -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE
// -fno-asynchronous-unwind-tables -fno-unwind-tables
// -fno-delete-null-pointer-checks -fstack-protector-strong
// -fno-omit-frame-pointer -fno-optimize-sibling-calls
// -fno-stack-clash-protection -fno-strict-overflow -fstack-check=no
// -fconserve-stack -fno-builtin-wcslen -fverbose-asm
// --param allow-store-data-races=0
// options enabled:  -faggressive-loop-optimizations -falign-functions
// -falign-jumps -falign-labels -falign-loops -fassume-phsa -fauto-inc-dec
// -fbranch-count-reg -fcaller-saves -fcode-hoisting
// -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
// -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
// -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
// -feliminate-unused-debug-types -fexpensive-optimizations
// -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
// -fgcse-lm -fgnu-runtime -fgnu-unique -fguess-branch-probability
// -fhoist-adjacent-loads -fident -fif-conversion -fif-conversion2
// -findirect-inlining -finline -finline-atomics
// -finline-functions-called-once -finline-small-functions -fipa-bit-cp
// -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables -fipa-profile
// -fipa-pure-const -fipa-reference -fipa-reference-addressable -fipa-sra
// -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
// -fira-share-save-slots -fira-share-spill-slots
// -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
// -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
// -fmath-errno -fmerge-constants -fmerge-debug-strings
// -fmove-loop-invariants -fomit-frame-pointer -foptimize-strlen
// -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
// -fprofile -free -freg-struct-return -freorder-blocks -freorder-functions
// -frerun-cse-after-loop -fsched-critical-path-heuristic
// -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
// -fsched-last-insn-heuristic -fsched-pressure -fsched-rank-heuristic
// -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep
// -fschedule-fusion -fschedule-insns -fschedule-insns2 -fsection-anchors
// -fsemantic-interposition -fshow-column -fshrink-wrap
// -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
// -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstack-protector-strong
// -fstdarg-opt -fstore-merging -fstrict-volatile-bitfields -fsync-libcalls
// -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
// -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
// -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
// -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
// -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
// -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
// -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
// -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
// -funit-at-a-time -fverbose-asm -fwrapv -fwrapv-pointer
// -fzero-initialized-in-bss -mfix-cortex-a53-835769
// -mfix-cortex-a53-843419 -mgeneral-regs-only -mglibc -mlittle-endian
// -momit-leaf-frame-pointer -mpc-relative-literal-loads

	.text
	.global	_mcount
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 4,,15
	.global	main
	.type	main, %function
main:
	hint	25 // paciasp
	stp	x29, x30, [sp, -16]!	//,,,
	mov	x29, sp	//,
// kernel/bounds.c:17: {
	hint	7 // xpaclri
	mov	x0, x30	//,
	bl	_mcount		//
// kernel/bounds.c:19: 	DEFINE(NR_PAGEFLAGS, __NR_PAGEFLAGS);
#APP
// 19 "kernel/bounds.c" 1
	
.ascii "->NR_PAGEFLAGS 24 __NR_PAGEFLAGS"	//
// 0 "" 2
// kernel/bounds.c:20: 	DEFINE(MAX_NR_ZONES, __MAX_NR_ZONES);
// 20 "kernel/bounds.c" 1
	
.ascii "->MAX_NR_ZONES 4 __MAX_NR_ZONES"	//
// 0 "" 2
// kernel/bounds.c:22: 	DEFINE(NR_CPUS_BITS, order_base_2(CONFIG_NR_CPUS));
// 22 "kernel/bounds.c" 1
	
.ascii "->NR_CPUS_BITS 8 order_base_2(CONFIG_NR_CPUS)"	//
// 0 "" 2
// kernel/bounds.c:24: 	DEFINE(SPINLOCK_SIZE, sizeof(spinlock_t));
// 24 "kernel/bounds.c" 1
	
.ascii "->SPINLOCK_SIZE 32 sizeof(spinlock_t)"	//
// 0 "" 2
// kernel/bounds.c:28: }
#NO_APP
	mov	w0, 0	//,
	ldp	x29, x30, [sp], 16	//,,,
	hint	29 // autiasp
	ret	
	.size	main, .-main
	.ident	"GCC: (Buildroot 2020.08) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align	3
	.word	4
	.word	16
	.word	5
	.string	"GNU"
	.word	3221225472
	.word	4
	.word	2
	.align	3
