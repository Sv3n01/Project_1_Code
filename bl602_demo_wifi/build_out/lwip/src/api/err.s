	.file	"err.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.err_to_errno,"ax",@progbits
	.align	1
	.globl	err_to_errno
	.type	err_to_errno, @function
err_to_errno:
.LFB4:
	.file 1 "/Users/Sven/bl_iot_sdk/components/network/lwip/src/api/err.c"
	.loc 1 70 1
	.cfi_startproc
.LVL0:
	.loc 1 71 3
	.loc 1 71 17 is_stmt 0
	addi	a5,a0,16
	.loc 1 71 6
	andi	a5,a5,0xff
	li	a4,16
	bgtu	a5,a4,.L3
	.loc 1 74 3 is_stmt 1
	.loc 1 74 28 is_stmt 0
	slli	a5,a0,2
	lui	a0,%hi(.LANCHOR0)
.LVL1:
	addi	a0,a0,%lo(.LANCHOR0)
	sub	a0,a0,a5
	lw	a0,0(a0)
	ret
.LVL2:
.L3:
	.loc 1 72 12
	li	a0,5
.LVL3:
	.loc 1 75 1
	ret
	.cfi_endproc
.LFE4:
	.size	err_to_errno, .-err_to_errno
	.section	.rodata.err_to_errno_table,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	err_to_errno_table, @object
	.size	err_to_errno_table, 68
err_to_errno_table:
	.word	0
	.word	12
	.word	105
	.word	11
	.word	113
	.word	115
	.word	22
	.word	11
	.word	98
	.word	114
	.word	106
	.word	107
	.word	-1
	.word	103
	.word	104
	.word	107
	.word	5
	.text
.Letext0:
	.file 2 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 4 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/reent.h"
	.file 6 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/lock.h"
	.file 7 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 8 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/stdlib.h"
	.file 9 "/Users/Sven/bl_iot_sdk/components/network/lwip/src/include/lwip/arch.h"
	.file 10 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/ctype.h"
	.file 11 "/Users/Sven/bl_iot_sdk/components/network/lwip/src/include/lwip/err.h"
	.file 12 "/Users/Sven/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 13 "/Users/Sven/bl_iot_sdk/components/network/lwip/src/include/lwip/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9f2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF130
	.byte	0xc
	.4byte	.LASF131
	.4byte	.LASF132
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF4
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x3d
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x65
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x6
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x165
	.byte	0x16
	.4byte	0x81
	.byte	0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x65
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x74
	.byte	0xe
	.4byte	0x65
	.byte	0x4
	.4byte	.LASF14
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0x7
	.byte	0x4
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.4byte	0xdb
	.byte	0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa7
	.byte	0xc
	.4byte	0x88
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa8
	.byte	0x13
	.4byte	0xdb
	.byte	0
	.byte	0x9
	.4byte	0x44
	.4byte	0xeb
	.byte	0xa
	.4byte	0x81
	.byte	0x3
	.byte	0
	.byte	0xb
	.byte	0x8
	.byte	0x4
	.byte	0xa2
	.byte	0x9
	.4byte	0x10f
	.byte	0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa9
	.byte	0x5
	.4byte	0xb9
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0xeb
	.byte	0xd
	.byte	0x4
	.byte	0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x6c
	.byte	0x4
	.4byte	.LASF21
	.byte	0x6
	.byte	0xc
	.byte	0xd
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x23
	.byte	0x1b
	.4byte	0x129
	.byte	0xe
	.4byte	.LASF27
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x19b
	.byte	0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x19b
	.byte	0
	.byte	0xf
	.string	"_k"
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xc
	.4byte	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0xc
	.4byte	.LASF25
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0xc
	.4byte	.LASF26
	.byte	0x5
	.byte	0x37
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.byte	0xf
	.string	"_x"
	.byte	0x5
	.byte	0x38
	.byte	0xb
	.4byte	0x1a1
	.byte	0x14
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x141
	.byte	0x9
	.4byte	0x11d
	.4byte	0x1b1
	.byte	0xa
	.4byte	0x81
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF28
	.byte	0x24
	.byte	0x5
	.byte	0x3c
	.byte	0x8
	.4byte	0x234
	.byte	0xc
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xc
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xc
	.4byte	.LASF31
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xc
	.4byte	.LASF32
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0xc
	.4byte	.LASF33
	.byte	0x5
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0xc
	.4byte	.LASF34
	.byte	0x5
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0xc
	.4byte	.LASF35
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xc
	.4byte	.LASF36
	.byte	0x5
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF37
	.byte	0x5
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x279
	.byte	0xc
	.4byte	.LASF39
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x279
	.byte	0
	.byte	0xc
	.4byte	.LASF40
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x279
	.byte	0x80
	.byte	0x12
	.4byte	.LASF41
	.byte	0x5
	.byte	0x53
	.byte	0xa
	.4byte	0x11d
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF42
	.byte	0x5
	.byte	0x56
	.byte	0xa
	.4byte	0x11d
	.2byte	0x104
	.byte	0
	.byte	0x9
	.4byte	0x11b
	.4byte	0x289
	.byte	0xa
	.4byte	0x81
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF43
	.2byte	0x190
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x2cc
	.byte	0xc
	.4byte	.LASF23
	.byte	0x5
	.byte	0x63
	.byte	0x12
	.4byte	0x2cc
	.byte	0
	.byte	0xc
	.4byte	.LASF44
	.byte	0x5
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0xc
	.4byte	.LASF45
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x2d2
	.byte	0x8
	.byte	0xc
	.4byte	.LASF38
	.byte	0x5
	.byte	0x67
	.byte	0x1e
	.4byte	0x234
	.byte	0x88
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x289
	.byte	0x9
	.4byte	0x2e2
	.4byte	0x2e2
	.byte	0xa
	.4byte	0x81
	.byte	0x1f
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x2e8
	.byte	0x13
	.byte	0xe
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x8
	.4byte	0x311
	.byte	0xc
	.4byte	.LASF47
	.byte	0x5
	.byte	0x7b
	.byte	0x11
	.4byte	0x311
	.byte	0
	.byte	0xc
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x44
	.byte	0xe
	.4byte	.LASF49
	.byte	0x68
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x45a
	.byte	0xf
	.string	"_p"
	.byte	0x5
	.byte	0xbb
	.byte	0x12
	.4byte	0x311
	.byte	0
	.byte	0xf
	.string	"_r"
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xf
	.string	"_w"
	.byte	0x5
	.byte	0xbd
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xc
	.4byte	.LASF50
	.byte	0x5
	.byte	0xbe
	.byte	0x9
	.4byte	0x4b
	.byte	0xc
	.byte	0xc
	.4byte	.LASF51
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x4b
	.byte	0xe
	.byte	0xf
	.string	"_bf"
	.byte	0x5
	.byte	0xc0
	.byte	0x11
	.4byte	0x2e9
	.byte	0x10
	.byte	0xc
	.4byte	.LASF52
	.byte	0x5
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xc
	.4byte	.LASF53
	.byte	0x5
	.byte	0xc8
	.byte	0xa
	.4byte	0x11b
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF54
	.byte	0x5
	.byte	0xca
	.byte	0xe
	.4byte	0x5de
	.byte	0x20
	.byte	0xc
	.4byte	.LASF55
	.byte	0x5
	.byte	0xcc
	.byte	0xe
	.4byte	0x608
	.byte	0x24
	.byte	0xc
	.4byte	.LASF56
	.byte	0x5
	.byte	0xcf
	.byte	0xd
	.4byte	0x62c
	.byte	0x28
	.byte	0xc
	.4byte	.LASF57
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x646
	.byte	0x2c
	.byte	0xf
	.string	"_ub"
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x2e9
	.byte	0x30
	.byte	0xf
	.string	"_up"
	.byte	0x5
	.byte	0xd4
	.byte	0x12
	.4byte	0x311
	.byte	0x38
	.byte	0xf
	.string	"_ur"
	.byte	0x5
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF58
	.byte	0x5
	.byte	0xd8
	.byte	0x11
	.4byte	0x64c
	.byte	0x40
	.byte	0xc
	.4byte	.LASF59
	.byte	0x5
	.byte	0xd9
	.byte	0x11
	.4byte	0x65c
	.byte	0x43
	.byte	0xf
	.string	"_lb"
	.byte	0x5
	.byte	0xdc
	.byte	0x11
	.4byte	0x2e9
	.byte	0x44
	.byte	0xc
	.4byte	.LASF60
	.byte	0x5
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF61
	.byte	0x5
	.byte	0xe0
	.byte	0xa
	.4byte	0x95
	.byte	0x50
	.byte	0xc
	.4byte	.LASF62
	.byte	0x5
	.byte	0xe3
	.byte	0x12
	.4byte	0x478
	.byte	0x54
	.byte	0xc
	.4byte	.LASF63
	.byte	0x5
	.byte	0xe7
	.byte	0xc
	.4byte	0x135
	.byte	0x58
	.byte	0xc
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe9
	.byte	0xe
	.4byte	0x10f
	.byte	0x5c
	.byte	0xc
	.4byte	.LASF65
	.byte	0x5
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xad
	.4byte	0x478
	.byte	0x15
	.4byte	0x478
	.byte	0x15
	.4byte	0x11b
	.byte	0x15
	.4byte	0x5cc
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x483
	.byte	0x3
	.4byte	0x478
	.byte	0x16
	.4byte	.LASF66
	.2byte	0x428
	.byte	0x5
	.2byte	0x265
	.byte	0x8
	.4byte	0x5cc
	.byte	0x17
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x17
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6b8
	.byte	0x4
	.byte	0x17
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6b8
	.byte	0x8
	.byte	0x17
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6b8
	.byte	0xc
	.byte	0x17
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x17
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8b8
	.byte	0x14
	.byte	0x17
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x17
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x273
	.byte	0x16
	.4byte	0x8cd
	.byte	0x34
	.byte	0x17
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x17
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x277
	.byte	0xa
	.4byte	0x8de
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x27a
	.byte	0x13
	.4byte	0x19b
	.byte	0x40
	.byte	0x17
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x17
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x27c
	.byte	0x13
	.4byte	0x19b
	.byte	0x48
	.byte	0x17
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8e4
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x17
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x281
	.byte	0x9
	.4byte	0x5cc
	.byte	0x54
	.byte	0x17
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x893
	.byte	0x58
	.byte	0x18
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2cc
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x289
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8f5
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x679
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x901
	.2byte	0x2ec
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5d2
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF88
	.byte	0x3
	.4byte	0x5d2
	.byte	0x10
	.byte	0x4
	.4byte	0x45a
	.byte	0x14
	.4byte	0xad
	.4byte	0x602
	.byte	0x15
	.4byte	0x478
	.byte	0x15
	.4byte	0x11b
	.byte	0x15
	.4byte	0x602
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5d9
	.byte	0x10
	.byte	0x4
	.4byte	0x5e4
	.byte	0x14
	.4byte	0xa1
	.4byte	0x62c
	.byte	0x15
	.4byte	0x478
	.byte	0x15
	.4byte	0x11b
	.byte	0x15
	.4byte	0xa1
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x60e
	.byte	0x14
	.4byte	0x25
	.4byte	0x646
	.byte	0x15
	.4byte	0x478
	.byte	0x15
	.4byte	0x11b
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x632
	.byte	0x9
	.4byte	0x44
	.4byte	0x65c
	.byte	0xa
	.4byte	0x81
	.byte	0x2
	.byte	0
	.byte	0x9
	.4byte	0x44
	.4byte	0x66c
	.byte	0xa
	.4byte	0x81
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x124
	.byte	0x18
	.4byte	0x317
	.byte	0x19
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5
	.2byte	0x128
	.byte	0x8
	.4byte	0x6b2
	.byte	0x17
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6b2
	.byte	0
	.byte	0x17
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x17
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6b8
	.byte	0x8
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x679
	.byte	0x10
	.byte	0x4
	.4byte	0x66c
	.byte	0x19
	.4byte	.LASF93
	.byte	0xe
	.byte	0x5
	.2byte	0x144
	.byte	0x8
	.4byte	0x6f7
	.byte	0x17
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x145
	.byte	0x12
	.4byte	0x6f7
	.byte	0
	.byte	0x17
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x146
	.byte	0x12
	.4byte	0x6f7
	.byte	0x6
	.byte	0x17
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x147
	.byte	0x12
	.4byte	0x52
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	0x52
	.4byte	0x707
	.byte	0xa
	.4byte	0x81
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x5
	.2byte	0x285
	.byte	0x7
	.4byte	0x81c
	.byte	0x17
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x287
	.byte	0x18
	.4byte	0x81
	.byte	0
	.byte	0x17
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x288
	.byte	0x12
	.4byte	0x5cc
	.byte	0x4
	.byte	0x17
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x289
	.byte	0x10
	.4byte	0x81c
	.byte	0x8
	.byte	0x17
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1b1
	.byte	0x24
	.byte	0x17
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x17
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x7a
	.byte	0x50
	.byte	0x17
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6be
	.byte	0x58
	.byte	0x17
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x28e
	.byte	0x16
	.4byte	0x10f
	.byte	0x68
	.byte	0x17
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x28f
	.byte	0x16
	.4byte	0x10f
	.byte	0x70
	.byte	0x17
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x290
	.byte	0x16
	.4byte	0x10f
	.byte	0x78
	.byte	0x17
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x291
	.byte	0x10
	.4byte	0x82c
	.byte	0x80
	.byte	0x17
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x292
	.byte	0x10
	.4byte	0x83c
	.byte	0x88
	.byte	0x17
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x294
	.byte	0x16
	.4byte	0x10f
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x295
	.byte	0x16
	.4byte	0x10f
	.byte	0xac
	.byte	0x17
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x296
	.byte	0x16
	.4byte	0x10f
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x297
	.byte	0x16
	.4byte	0x10f
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x298
	.byte	0x16
	.4byte	0x10f
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0x9
	.4byte	0x5d2
	.4byte	0x82c
	.byte	0xa
	.4byte	0x81
	.byte	0x19
	.byte	0
	.byte	0x9
	.4byte	0x5d2
	.4byte	0x83c
	.byte	0xa
	.4byte	0x81
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	0x5d2
	.4byte	0x84c
	.byte	0xa
	.4byte	0x81
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x5
	.2byte	0x29e
	.byte	0x7
	.4byte	0x873
	.byte	0x17
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x873
	.byte	0
	.byte	0x17
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x883
	.byte	0x78
	.byte	0
	.byte	0x9
	.4byte	0x311
	.4byte	0x883
	.byte	0xa
	.4byte	0x81
	.byte	0x1d
	.byte	0
	.byte	0x9
	.4byte	0x81
	.4byte	0x893
	.byte	0xa
	.4byte	0x81
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x283
	.byte	0x3
	.4byte	0x8b8
	.byte	0x1c
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x29a
	.byte	0xb
	.4byte	0x707
	.byte	0x1c
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x84c
	.byte	0
	.byte	0x9
	.4byte	0x5d2
	.4byte	0x8c8
	.byte	0xa
	.4byte	0x81
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF133
	.byte	0x10
	.byte	0x4
	.4byte	0x8c8
	.byte	0x1e
	.4byte	0x8de
	.byte	0x15
	.4byte	0x478
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x8d3
	.byte	0x10
	.byte	0x4
	.4byte	0x19b
	.byte	0x1e
	.4byte	0x8f5
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x8fb
	.byte	0x10
	.byte	0x4
	.4byte	0x8ea
	.byte	0x9
	.4byte	0x66c
	.4byte	0x911
	.byte	0xa
	.4byte	0x81
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF119
	.byte	0x5
	.2byte	0x333
	.byte	0x17
	.4byte	0x478
	.byte	0x1f
	.4byte	.LASF120
	.byte	0x5
	.2byte	0x334
	.byte	0x1d
	.4byte	0x47e
	.byte	0x4
	.4byte	.LASF121
	.byte	0x7
	.byte	0x14
	.byte	0x12
	.4byte	0x31
	.byte	0x4
	.4byte	.LASF122
	.byte	0x7
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.byte	0x20
	.4byte	.LASF123
	.byte	0x8
	.byte	0x67
	.byte	0xe
	.4byte	0x5cc
	.byte	0x4
	.4byte	.LASF124
	.byte	0x9
	.byte	0x7e
	.byte	0x10
	.4byte	0x92b
	.byte	0x9
	.4byte	0x5d9
	.4byte	0x966
	.byte	0x21
	.byte	0
	.byte	0x3
	.4byte	0x95b
	.byte	0x20
	.4byte	.LASF125
	.byte	0xa
	.byte	0xae
	.byte	0x13
	.4byte	0x966
	.byte	0x4
	.4byte	.LASF126
	.byte	0xb
	.byte	0x60
	.byte	0xe
	.4byte	0x94f
	.byte	0x4
	.4byte	.LASF127
	.byte	0xc
	.byte	0x3f
	.byte	0x11
	.4byte	0x937
	.byte	0x20
	.4byte	.LASF128
	.byte	0xc
	.byte	0x54
	.byte	0x13
	.4byte	0x983
	.byte	0x20
	.4byte	.LASF129
	.byte	0xd
	.byte	0xb1
	.byte	0xc
	.4byte	0x25
	.byte	0x9
	.4byte	0x2c
	.4byte	0x9b7
	.byte	0xa
	.4byte	0x81
	.byte	0x10
	.byte	0
	.byte	0x3
	.4byte	0x9a7
	.byte	0x22
	.4byte	.LASF134
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.4byte	0x9b7
	.byte	0x5
	.byte	0x3
	.4byte	err_to_errno_table
	.byte	0x23
	.4byte	.LASF135
	.byte	0x1
	.byte	0x45
	.byte	0x1
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x24
	.string	"err"
	.byte	0x1
	.byte	0x45
	.byte	0x14
	.4byte	0x977
	.4byte	.LLST0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"_on_exit_args"
.LASF106:
	.string	"_wctomb_state"
.LASF103:
	.string	"_r48"
.LASF129:
	.string	"errno"
.LASF108:
	.string	"_signal_buf"
.LASF10:
	.string	"unsigned int"
.LASF126:
	.string	"err_t"
.LASF52:
	.string	"_lbfsize"
.LASF50:
	.string	"_flags"
.LASF5:
	.string	"__int32_t"
.LASF67:
	.string	"_errno"
.LASF21:
	.string	"_LOCK_RECURSIVE_T"
.LASF54:
	.string	"_read"
.LASF110:
	.string	"_mbrlen_state"
.LASF69:
	.string	"_stdout"
.LASF13:
	.string	"_fpos_t"
.LASF45:
	.string	"_fns"
.LASF53:
	.string	"_cookie"
.LASF27:
	.string	"_Bigint"
.LASF35:
	.string	"__tm_wday"
.LASF77:
	.string	"_result"
.LASF121:
	.string	"int8_t"
.LASF31:
	.string	"__tm_hour"
.LASF17:
	.string	"__count"
.LASF30:
	.string	"__tm_min"
.LASF119:
	.string	"_impure_ptr"
.LASF116:
	.string	"_nextf"
.LASF93:
	.string	"_rand48"
.LASF78:
	.string	"_result_k"
.LASF9:
	.string	"long long unsigned int"
.LASF99:
	.string	"_asctime_buf"
.LASF49:
	.string	"__sFILE"
.LASF26:
	.string	"_wds"
.LASF89:
	.string	"__FILE"
.LASF61:
	.string	"_offset"
.LASF72:
	.string	"_emergency"
.LASF135:
	.string	"err_to_errno"
.LASF128:
	.string	"TrapNetCounter"
.LASF29:
	.string	"__tm_sec"
.LASF123:
	.string	"suboptarg"
.LASF36:
	.string	"__tm_yday"
.LASF71:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF23:
	.string	"_next"
.LASF112:
	.string	"_mbsrtowcs_state"
.LASF124:
	.string	"s8_t"
.LASF18:
	.string	"__value"
.LASF79:
	.string	"_p5s"
.LASF114:
	.string	"_wcsrtombs_state"
.LASF104:
	.string	"_mblen_state"
.LASF88:
	.string	"char"
.LASF32:
	.string	"__tm_mday"
.LASF85:
	.string	"_sig_func"
.LASF111:
	.string	"_mbrtowc_state"
.LASF84:
	.string	"_atexit0"
.LASF22:
	.string	"_flock_t"
.LASF15:
	.string	"__wch"
.LASF92:
	.string	"_iobs"
.LASF57:
	.string	"_close"
.LASF75:
	.string	"__sdidinit"
.LASF68:
	.string	"_stdin"
.LASF101:
	.string	"_gamma_signgam"
.LASF8:
	.string	"long long int"
.LASF47:
	.string	"_base"
.LASF80:
	.string	"_freelist"
.LASF95:
	.string	"_mult"
.LASF20:
	.string	"__ULong"
.LASF113:
	.string	"_wcrtomb_state"
.LASF127:
	.string	"BaseType_t"
.LASF51:
	.string	"_file"
.LASF76:
	.string	"__cleanup"
.LASF134:
	.string	"err_to_errno_table"
.LASF19:
	.string	"_mbstate_t"
.LASF130:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF39:
	.string	"_fnargs"
.LASF37:
	.string	"__tm_isdst"
.LASF115:
	.string	"_h_errno"
.LASF4:
	.string	"__int8_t"
.LASF33:
	.string	"__tm_mon"
.LASF55:
	.string	"_write"
.LASF43:
	.string	"_atexit"
.LASF64:
	.string	"_mbstate"
.LASF2:
	.string	"short int"
.LASF6:
	.string	"long int"
.LASF87:
	.string	"__sf"
.LASF25:
	.string	"_sign"
.LASF62:
	.string	"_data"
.LASF16:
	.string	"__wchb"
.LASF120:
	.string	"_global_impure_ptr"
.LASF34:
	.string	"__tm_year"
.LASF100:
	.string	"_localtime_buf"
.LASF118:
	.string	"_unused"
.LASF83:
	.string	"_new"
.LASF81:
	.string	"_cvtlen"
.LASF24:
	.string	"_maxwds"
.LASF107:
	.string	"_l64a_buf"
.LASF60:
	.string	"_blksize"
.LASF28:
	.string	"__tm"
.LASF132:
	.string	"/Users/Sven/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/lwip"
.LASF63:
	.string	"_lock"
.LASF7:
	.string	"long unsigned int"
.LASF91:
	.string	"_niobs"
.LASF11:
	.string	"wint_t"
.LASF122:
	.string	"int32_t"
.LASF40:
	.string	"_dso_handle"
.LASF82:
	.string	"_cvtbuf"
.LASF1:
	.string	"unsigned char"
.LASF109:
	.string	"_getdate_err"
.LASF96:
	.string	"_add"
.LASF46:
	.string	"__sbuf"
.LASF90:
	.string	"_glue"
.LASF86:
	.string	"__sglue"
.LASF98:
	.string	"_strtok_last"
.LASF105:
	.string	"_mbtowc_state"
.LASF74:
	.string	"_locale"
.LASF125:
	.string	"_ctype_"
.LASF14:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF66:
	.string	"_reent"
.LASF3:
	.string	"short unsigned int"
.LASF41:
	.string	"_fntypes"
.LASF48:
	.string	"_size"
.LASF12:
	.string	"_off_t"
.LASF59:
	.string	"_nbuf"
.LASF97:
	.string	"_unused_rand"
.LASF73:
	.string	"_unspecified_locale_info"
.LASF65:
	.string	"_flags2"
.LASF42:
	.string	"_is_cxa"
.LASF94:
	.string	"_seed"
.LASF102:
	.string	"_rand_next"
.LASF133:
	.string	"__locale_t"
.LASF56:
	.string	"_seek"
.LASF131:
	.string	"/Users/Sven/bl_iot_sdk/components/network/lwip/src/api/err.c"
.LASF70:
	.string	"_stderr"
.LASF117:
	.string	"_nmalloc"
.LASF58:
	.string	"_ubuf"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
