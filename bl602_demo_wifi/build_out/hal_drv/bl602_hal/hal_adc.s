	.file	"hal_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.check_adc_gpio_valid,"ax",@progbits
	.align	1
	.type	check_adc_gpio_valid, @function
check_adc_gpio_valid:
.LFB23:
	.file 1 "/Users/Sven/bl_iot_sdk/components/hal_drv/bl602_hal/hal_adc.c"
	.loc 1 37 1
	.cfi_startproc
.LVL0:
	.loc 1 38 5
	.loc 1 39 5
	.loc 1 37 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 39 9
	li	a5,4
	sw	a5,0(sp)
	li	a5,5
	sw	a5,4(sp)
	li	a5,6
	sw	a5,8(sp)
	li	a5,9
	sw	a5,12(sp)
	li	a5,10
	sw	a5,16(sp)
	li	a5,11
	sw	a5,20(sp)
	li	a5,12
	sw	a5,24(sp)
	li	a5,13
	sw	a5,28(sp)
	li	a5,14
	sw	a5,32(sp)
	li	a5,15
	sw	a5,36(sp)
	.loc 1 41 5 is_stmt 1
.LVL1:
	.loc 1 39 9 is_stmt 0
	sw	zero,40(sp)
	sw	zero,44(sp)
	mv	a5,sp
	addi	a4,sp,40
.LVL2:
.L3:
	.loc 1 42 9 is_stmt 1
	.loc 1 42 12 is_stmt 0
	lw	a3,0(a5)
	beq	a3,a0,.L4
	addi	a5,a5,4
	.loc 1 41 5 discriminator 2
	bne	a5,a4,.L3
	.loc 1 47 12
	li	a0,-1
.LVL3:
.L1:
	.loc 1 48 1
	addi	sp,sp,48
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L4:
	.cfi_restore_state
	.loc 1 43 20
	li	a0,0
.LVL5:
	j	.L1
	.cfi_endproc
.LFE23:
	.size	check_adc_gpio_valid, .-check_adc_gpio_valid
	.section	.text.hal_adc_callback_register,"ax",@progbits
	.align	1
	.globl	hal_adc_callback_register
	.type	hal_adc_callback_register, @function
hal_adc_callback_register:
.LFB25:
	.loc 1 105 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 106 5
	.loc 1 108 5
	.loc 1 105 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 108 8
	bne	a0,zero,.L8
	.loc 1 109 9 is_stmt 1 discriminator 1
	.loc 1 109 47 discriminator 1
	.loc 1 109 52 discriminator 1
	.loc 1 109 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 109 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	.loc 1 111 16 discriminator 1
	li	a0,-1
.LVL7:
	.loc 1 109 55 discriminator 1
	bgtu	a4,a5,.L7
	.loc 1 109 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 109 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L7
	.loc 1 109 157 is_stmt 1
.LBB28:
.LBB29:
	.file 2 "/Users/Sven/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE29:
.LBE28:
	.loc 1 109 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L10
	.loc 1 109 254 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL8:
.L11:
	.loc 1 109 157 discriminator 10
	mv	a1,a0
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	li	a4,109
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	call	bl_printk
.LVL9:
	.loc 1 111 16 discriminator 10
	li	a0,-1
.L7:
	.loc 1 118 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L10:
	.cfi_restore_state
	.loc 1 109 283 discriminator 8
	call	xTaskGetTickCount
.LVL10:
	j	.L11
.LVL11:
.L8:
	mv	s0,a0
	.loc 1 114 5 is_stmt 1
	.loc 1 114 11 is_stmt 0
	li	a0,1
.LVL12:
	call	bl_dma_find_ctx_by_channel
.LVL13:
	.loc 1 115 5 is_stmt 1
	.loc 1 115 13 is_stmt 0
	sw	s0,24(a0)
	.loc 1 117 5 is_stmt 1
	.loc 1 117 12 is_stmt 0
	li	a0,0
.LVL14:
	j	.L7
	.cfi_endproc
.LFE25:
	.size	hal_adc_callback_register, .-hal_adc_callback_register
	.section	.text.hal_adc_add_channel,"ax",@progbits
	.align	1
	.globl	hal_adc_add_channel
	.type	hal_adc_add_channel, @function
hal_adc_add_channel:
.LFB26:
	.loc 1 122 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 123 5
	.loc 1 124 5
	.loc 1 125 5
	.loc 1 127 5
	.loc 1 122 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 122 1
	mv	s0,a0
	.loc 1 127 11
	call	check_adc_gpio_valid
.LVL16:
	.loc 1 128 5 is_stmt 1
	.loc 1 128 8 is_stmt 0
	bge	a0,zero,.L16
.LVL17:
.LBB34:
.LBB35:
	.loc 1 129 9 is_stmt 1
	.loc 1 129 47
	.loc 1 129 52
	.loc 1 129 75 is_stmt 0
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 129 55
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	li	a0,-1
.LVL18:
	bgtu	a4,a5,.L15
	.loc 1 129 121
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 129 100
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L15
	.loc 1 129 157 is_stmt 1
.LBB36:
.LBB37:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE37:
.LBE36:
	.loc 1 129 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L18
	.loc 1 129 293
	call	xTaskGetTickCountFromISR
.LVL19:
.L19:
	.loc 1 129 157
	mv	a1,a0
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	li	a4,129
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	call	bl_printk
.LVL20:
	li	a0,-1
.LVL21:
.L15:
.LBE35:
.LBE34:
	.loc 1 140 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL22:
.L18:
	.cfi_restore_state
.LBB39:
.LBB38:
	.loc 1 129 322
	call	xTaskGetTickCount
.LVL23:
	j	.L19
.LVL24:
.L16:
.LBE38:
.LBE39:
	.loc 1 134 5 is_stmt 1
	mv	a0,s0
.LVL25:
	call	bl_adc_gpio_init
.LVL26:
	.loc 1 135 5
	.loc 1 135 15 is_stmt 0
	mv	a0,s0
	call	bl_adc_get_channel_by_gpio
.LVL27:
	mv	s0,a0
.LVL28:
	.loc 1 136 5 is_stmt 1
	.loc 1 136 14 is_stmt 0
	li	a0,1
	call	bl_dma_find_ctx_by_channel
.LVL29:
	.loc 1 137 5 is_stmt 1
	.loc 1 137 60 is_stmt 0
	li	a5,1
	sll	a4,a5,s0
	.loc 1 137 55
	lw	a5,16(a0)
	or	a5,a5,a4
	.loc 1 137 29
	sw	a5,16(a0)
	.loc 1 139 5 is_stmt 1
	.loc 1 139 12 is_stmt 0
	li	a0,0
.LVL30:
	j	.L15
	.cfi_endproc
.LFE26:
	.size	hal_adc_add_channel, .-hal_adc_add_channel
	.section	.text.hal_adc_init,"ax",@progbits
	.align	1
	.globl	hal_adc_init
	.type	hal_adc_init, @function
hal_adc_init:
.LFB24:
	.loc 1 53 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 54 5
	.loc 1 55 5
	.loc 1 57 5
	.loc 1 53 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 53 1
	mv	s1,a0
	mv	s3,a2
	mv	s2,a3
	.loc 1 57 8
	bne	a0,zero,.L24
	.loc 1 58 9 is_stmt 1
	.loc 1 58 23 is_stmt 0
	addi	a5,a1,-40
	.loc 1 58 12
	li	a4,1260
	bleu	a5,a4,.L25
	.loc 1 59 13 is_stmt 1 discriminator 1
	.loc 1 59 51 discriminator 1
	.loc 1 59 56 discriminator 1
	.loc 1 59 79 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 59 59 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bleu	a4,a5,.L26
.LVL32:
.L46:
	.loc 1 94 16 discriminator 10
	li	s0,-1
.L23:
	.loc 1 102 1
	mv	a0,s0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL33:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL34:
	lw	s3,28(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL35:
.L26:
	.cfi_restore_state
	.loc 1 59 125 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 59 104 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L46
	.loc 1 59 161 is_stmt 1
.LBB40:
.LBB41:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE41:
.LBE40:
	.loc 1 59 161
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L29
	.loc 1 59 273 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL36:
.L30:
	.loc 1 59 161 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC4)
	li	a4,59
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC4)
.LVL37:
.L45:
	.loc 1 92 157 discriminator 10
	call	bl_printk
.LVL38:
	j	.L46
.LVL39:
.L29:
	.loc 1 59 302 discriminator 8
	call	xTaskGetTickCount
.LVL40:
	j	.L30
.LVL41:
.L24:
	.loc 1 63 12 is_stmt 1
	.loc 1 63 15 is_stmt 0
	li	a5,1
	bne	a0,a5,.L31
	.loc 1 64 9 is_stmt 1
	.loc 1 64 12 is_stmt 0
	li	a5,16384
	.loc 1 64 24
	addi	a4,a1,-500
	.loc 1 64 12
	addi	a5,a5,-884
	bleu	a4,a5,.L25
	.loc 1 65 13 is_stmt 1 discriminator 1
	.loc 1 65 51 discriminator 1
	.loc 1 65 56 discriminator 1
	.loc 1 65 79 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 65 59 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L46
	.loc 1 65 125 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 65 104 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L46
	.loc 1 65 161 is_stmt 1
.LBB42:
.LBB43:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE43:
.LBE42:
	.loc 1 65 161
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L32
	.loc 1 65 275 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL42:
.L33:
	.loc 1 65 161 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC5)
	li	a4,65
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC5)
	j	.L45
.LVL43:
.L32:
	.loc 1 65 304 discriminator 8
	call	xTaskGetTickCount
.LVL44:
	j	.L33
.LVL45:
.L31:
	.loc 1 70 9 is_stmt 1 discriminator 1
	.loc 1 70 47 discriminator 1
	.loc 1 70 52 discriminator 1
	.loc 1 70 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 70 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L46
	.loc 1 70 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 70 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L46
	.loc 1 70 157 is_stmt 1
.LBB44:
.LBB45:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE45:
.LBE44:
	.loc 1 70 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L34
	.loc 1 70 239 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL46:
.L35:
	.loc 1 70 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC6)
	li	a4,70
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC6)
	j	.L45
.LVL47:
.L34:
	.loc 1 70 268 discriminator 8
	call	xTaskGetTickCount
.LVL48:
	j	.L35
.LVL49:
.L25:
	.loc 1 75 11
	mv	a0,s2
	sw	a1,12(sp)
	.loc 1 75 5 is_stmt 1
	.loc 1 75 11 is_stmt 0
	call	check_adc_gpio_valid
.LVL50:
	mv	s0,a0
.LVL51:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 8 is_stmt 0
	lw	a1,12(sp)
	beq	a0,zero,.L36
	.loc 1 77 9 is_stmt 1 discriminator 1
	.loc 1 77 47 discriminator 1
	.loc 1 77 52 discriminator 1
	.loc 1 77 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 77 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L46
	.loc 1 77 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 77 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L46
	.loc 1 77 157 is_stmt 1
.LBB46:
.LBB47:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE47:
.LBE46:
	.loc 1 77 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L37
	.loc 1 77 242 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL52:
.L38:
	.loc 1 77 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC7)
	li	a4,77
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC7)
	j	.L45
.L37:
	.loc 1 77 271 discriminator 8
	call	xTaskGetTickCount
.LVL53:
	j	.L38
.L36:
	.loc 1 82 5 is_stmt 1
	mv	a0,s1
	call	bl_adc_freq_init
.LVL54:
	.loc 1 83 5
	mv	a1,s2
	mv	a0,s1
	call	bl_adc_init
.LVL55:
	.loc 1 85 5
	.loc 1 85 8 is_stmt 0
	bne	s1,zero,.L39
	.loc 1 86 18
	li	s3,12
.LVL56:
.L39:
	.loc 1 90 5 is_stmt 1
	.loc 1 90 11 is_stmt 0
	mv	a1,s3
	mv	a0,s1
	call	bl_adc_dma_init
.LVL57:
	.loc 1 91 5 is_stmt 1
	.loc 1 91 8 is_stmt 0
	bge	a0,zero,.L40
	.loc 1 92 9 is_stmt 1 discriminator 1
	.loc 1 92 47 discriminator 1
	.loc 1 92 52 discriminator 1
	.loc 1 92 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 92 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L46
	.loc 1 92 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 92 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L46
	.loc 1 92 157 is_stmt 1
.LBB48:
.LBB49:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE49:
.LBE48:
	.loc 1 92 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L41
	.loc 1 92 241 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL58:
.L42:
	.loc 1 92 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC8)
	li	a4,92
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC8)
	j	.L45
.LVL59:
.L41:
	.loc 1 92 270 discriminator 8
	call	xTaskGetTickCount
.LVL60:
	j	.L42
.LVL61:
.L40:
	.loc 1 97 5 is_stmt 1
	mv	a0,s2
.LVL62:
	call	hal_adc_add_channel
.LVL63:
	.loc 1 99 5
	call	bl_adc_start
.LVL64:
	.loc 1 101 5
	.loc 1 101 12 is_stmt 0
	j	.L23
	.cfi_endproc
.LFE24:
	.size	hal_adc_init, .-hal_adc_init
	.section	.text.hal_adc_get_data,"ax",@progbits
	.align	1
	.globl	hal_adc_get_data
	.type	hal_adc_get_data, @function
hal_adc_get_data:
.LFB27:
	.loc 1 143 1 is_stmt 1
	.cfi_startproc
.LVL65:
	.loc 1 144 5
	.loc 1 145 5
	.loc 1 146 5
	.loc 1 147 5
	.loc 1 148 5
	.loc 1 150 5
	.loc 1 143 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 143 1
	mv	s2,a0
	mv	s3,a1
	.loc 1 150 11
	call	check_adc_gpio_valid
.LVL66:
	.loc 1 151 5 is_stmt 1
	.loc 1 151 8 is_stmt 0
	bge	a0,zero,.L48
	.loc 1 152 9 is_stmt 1 discriminator 1
	.loc 1 152 47 discriminator 1
	.loc 1 152 52 discriminator 1
	.loc 1 152 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 152 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bleu	a4,a5,.L49
.LVL67:
.L64:
	.loc 1 173 16 discriminator 10
	li	a0,-1
.L47:
	.loc 1 179 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
.LVL68:
	lw	s3,60(sp)
	.cfi_restore 19
.LVL69:
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL70:
.L49:
	.cfi_restore_state
	.loc 1 152 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 152 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L64
	.loc 1 152 157 is_stmt 1
.LBB50:
.LBB51:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE51:
.LBE50:
	.loc 1 152 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L52
	.loc 1 152 293 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL71:
.L53:
	.loc 1 152 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC3)
	li	a4,152
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC3)
.L65:
	.loc 1 171 157 discriminator 10
	call	bl_printk
.LVL72:
	j	.L64
.LVL73:
.L52:
	.loc 1 152 322 discriminator 8
	call	xTaskGetTickCount
.LVL74:
	j	.L53
.LVL75:
.L48:
	.loc 1 157 5 is_stmt 1
	.loc 1 157 14 is_stmt 0
	li	a0,1
.LVL76:
	call	bl_dma_find_ctx_by_channel
.LVL77:
	mv	s0,a0
.LVL78:
	.loc 1 158 5 is_stmt 1
	.loc 1 158 8 is_stmt 0
	bne	a0,zero,.L54
	.loc 1 159 9 is_stmt 1 discriminator 1
	.loc 1 159 47 discriminator 1
	.loc 1 159 52 discriminator 1
	.loc 1 159 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 159 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L64
	.loc 1 159 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 159 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L64
	.loc 1 159 157 is_stmt 1
.LBB52:
.LBB53:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE53:
.LBE52:
	.loc 1 159 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L55
	.loc 1 159 239 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL79:
.L56:
	.loc 1 159 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC9)
	li	a4,159
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC9)
	j	.L65
.L55:
	.loc 1 159 268 discriminator 8
	call	xTaskGetTickCount
.LVL80:
	j	.L56
.L54:
	.loc 1 164 5 is_stmt 1
	.loc 1 164 15 is_stmt 0
	mv	a0,s2
	call	bl_adc_get_channel_by_gpio
.LVL81:
	.loc 1 165 25
	lw	a4,16(s0)
	.loc 1 165 13
	li	a5,1
	sll	a5,a5,a0
	.loc 1 165 25
	and	a5,a5,a4
	.loc 1 164 15
	mv	s1,a0
.LVL82:
	.loc 1 165 5 is_stmt 1
	.loc 1 165 8 is_stmt 0
	bne	a5,zero,.L57
	.loc 1 166 9 is_stmt 1 discriminator 1
	.loc 1 166 47 discriminator 1
	.loc 1 166 52 discriminator 1
	.loc 1 166 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 166 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L64
	.loc 1 166 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 166 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L64
	.loc 1 166 157 is_stmt 1
.LBB54:
.LBB55:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE55:
.LBE54:
	.loc 1 166 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L58
	.loc 1 166 252 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL83:
.L59:
	.loc 1 166 157 discriminator 10
	mv	a1,a0
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC10)
	mv	a5,s2
	li	a4,166
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL84:
	j	.L64
.L58:
	.loc 1 166 281 discriminator 8
	call	xTaskGetTickCount
.LVL85:
	j	.L59
.L57:
	.loc 1 170 5 is_stmt 1
	.loc 1 170 15 is_stmt 0
	lw	a1,4(s0)
	.loc 1 170 8
	bne	a1,zero,.L60
	.loc 1 171 9 is_stmt 1 discriminator 1
	.loc 1 171 47 discriminator 1
	.loc 1 171 52 discriminator 1
	.loc 1 171 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 171 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L64
	.loc 1 171 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 171 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L64
	.loc 1 171 157 is_stmt 1
.LBB56:
.LBB57:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE57:
.LBE56:
	.loc 1 171 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L61
	.loc 1 171 250 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL86:
.L62:
	.loc 1 171 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC11)
	li	a4,171
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC11)
	j	.L65
.L61:
	.loc 1 171 279 discriminator 8
	call	xTaskGetTickCount
.LVL87:
	j	.L62
.L60:
	.loc 1 175 5 is_stmt 1
	li	a2,48
	mv	a0,sp
	call	memcpy
.LVL88:
	.loc 1 176 5
	.loc 1 176 12 is_stmt 0
	mv	a3,s3
	mv	a2,s1
	li	a1,12
	mv	a0,sp
	call	bl_adc_parse_data
.LVL89:
	.loc 1 178 5 is_stmt 1
	.loc 1 178 12 is_stmt 0
	j	.L47
	.cfi_endproc
.LFE27:
	.size	hal_adc_get_data, .-hal_adc_get_data
	.section	.text.hal_prase_adc_data,"ax",@progbits
	.align	1
	.globl	hal_prase_adc_data
	.type	hal_prase_adc_data, @function
hal_prase_adc_data:
.LFB28:
	.loc 1 182 1 is_stmt 1
	.cfi_startproc
.LVL90:
	.loc 1 183 5
	.loc 1 184 5
	.loc 1 186 5
	.loc 1 182 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 1 186 15
	mv	a0,a1
.LVL91:
	.loc 1 182 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 182 1
	sw	a2,12(sp)
	.loc 1 186 15
	call	bl_adc_get_channel_by_gpio
.LVL92:
	.loc 1 187 8
	li	a5,-1
	.loc 1 186 15
	mv	s0,a0
.LVL93:
	.loc 1 187 5 is_stmt 1
	.loc 1 187 8 is_stmt 0
	lw	a3,12(sp)
	bne	a0,a5,.L67
	.loc 1 188 9 is_stmt 1 discriminator 1
	.loc 1 188 47 discriminator 1
	.loc 1 188 52 discriminator 1
	.loc 1 188 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 188 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L66
	.loc 1 188 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvhal_adc)
	.loc 1 188 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvhal_adc)(a4)
	bgtu	a4,a5,.L66
	.loc 1 188 157 is_stmt 1
.LBB58:
.LBB59:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE59:
.LBE58:
	.loc 1 188 157
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L69
	.loc 1 188 243 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL94:
.L70:
	.loc 1 188 157 discriminator 10
	lui	a3,%hi(.LC0)
	lui	a2,%hi(.LC1)
	mv	a1,a0
	lui	a0,%hi(.LC12)
	li	a4,188
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
.LVL95:
.L66:
	.loc 1 196 1
	mv	a0,s0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL96:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL97:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL98:
	jr	ra
.LVL99:
.L69:
	.cfi_restore_state
	.loc 1 188 272 discriminator 8
	call	xTaskGetTickCount
.LVL100:
	j	.L70
.L67:
	.loc 1 193 5 is_stmt 1
	.loc 1 196 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL101:
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 193 12
	mv	a2,a0
	mv	a0,s1
.LVL102:
	.loc 1 196 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL103:
	.loc 1 193 12
	li	a1,12
	.loc 1 196 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL104:
	.loc 1 193 12
	tail	bl_adc_parse_data
.LVL105:
	.cfi_endproc
.LFE28:
	.size	hal_prase_adc_data, .-hal_prase_adc_data
	.section	.text.hal_parse_data_arr,"ax",@progbits
	.align	1
	.globl	hal_parse_data_arr
	.type	hal_parse_data_arr, @function
hal_parse_data_arr:
.LFB29:
	.loc 1 200 1 is_stmt 1
	.cfi_startproc
.LVL106:
	.loc 1 201 5
	.loc 1 203 5
	.loc 1 204 28 is_stmt 0
	li	a4,65536
	slli	a2,a2,2
.LVL107:
	.loc 1 203 5
	li	a5,0
	.loc 1 204 28
	addi	a4,a4,-1
.LVL108:
.L73:
	.loc 1 203 5 discriminator 1
	bne	a5,a2,.L74
	.loc 1 207 5 is_stmt 1
	.loc 1 208 1 is_stmt 0
	li	a0,0
.LVL109:
	ret
.LVL110:
.L74:
	.loc 1 204 9 is_stmt 1 discriminator 3
	.loc 1 204 24 is_stmt 0 discriminator 3
	add	a3,a0,a5
	.loc 1 204 28 discriminator 3
	lw	a3,0(a3)
	.loc 1 204 19 discriminator 3
	add	a6,a1,a5
	addi	a5,a5,4
	.loc 1 204 28 discriminator 3
	and	a3,a3,a4
	.loc 1 204 19 discriminator 3
	sw	a3,0(a6)
	j	.L73
	.cfi_endproc
.LFE29:
	.size	hal_parse_data_arr, .-hal_parse_data_arr
	.globl	_fsymf_info_hal_drvhal_adc
	.comm	_fsymf_level_hal_drvhal_adc,1,1
	.comm	_fsymc_level_hal_drv,1,1
	.section	.rodata.hal_adc_add_channel.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"[%10u][%s: %s:%4d] not legal gpio num, adc only support gpio 4,5,6,9,10,11,12,13,14,15 \r\n"
	.section	.rodata.hal_adc_callback_register.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"hal_adc.c"
	.zero	2
.LC1:
	.string	"\033[31mERROR \033[0m"
.LC2:
	.string	"[%10u][%s: %s:%4d] cb is NULL, register failed. \r\n"
	.section	.rodata.hal_adc_get_data.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"[%10u][%s: %s:%4d] get ctx error \r\n"
.LC10:
	.string	"[%10u][%s: %s:%4d] gpio = %d  not init as adc \r\n"
	.zero	3
.LC11:
	.string	"[%10u][%s: %s:%4d] adc sampling not finish. \r\n"
	.section	.rodata.hal_adc_init.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] illegal freq. for mode0, freq 40HZ ~ 1300HZ \r\n"
	.zero	2
.LC5:
	.string	"[%10u][%s: %s:%4d] illegal freq. for mode1, freq 500HZ ~ 16000HZ \r\n"
.LC6:
	.string	"[%10u][%s: %s:%4d] illegal mode. \r\n"
.LC7:
	.string	"[%10u][%s: %s:%4d] illegal gpio num \r\n"
	.zero	1
.LC8:
	.string	"[%10u][%s: %s:%4d] adc init failed \r\n"
	.section	.rodata.hal_prase_adc_data.str1.4,"aMS",@progbits,1
	.align	2
.LC12:
	.string	"[%10u][%s: %s:%4d] illegal gpio num. \r\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC13:
	.string	"hal_drv.hal_adc"
.LC14:
	.string	"hal_drv"
	.section	.sdata2.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.hal_drv,"a"
	.align	2
	.type	_fsymc_info_hal_drv, @object
	.size	_fsymc_info_hal_drv, 8
_fsymc_info_hal_drv:
	.word	_fsymc_level_hal_drv
	.word	.LC14
	.section	.static_blogfile_code.hal_drvhal_adc,"a"
	.align	2
	.type	_fsymf_info_hal_drvhal_adc, @object
	.size	_fsymf_info_hal_drvhal_adc, 8
_fsymf_info_hal_drvhal_adc:
	.word	_fsymf_level_hal_drvhal_adc
	.word	.LC13
	.text
.Letext0:
	.file 3 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 4 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/Users/Sven/bl_iot_sdk/components/stage/blog/blog_type.h"
	.file 9 "/Users/Sven/bl_iot_sdk/components/stage/blog/blog.h"
	.file 10 "/Users/Sven/bl_iot_sdk/components/hal_drv/bl602_hal/bl_adc.h"
	.file 11 "/Users/Sven/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 12 "/Users/Sven/bl_iot_sdk/components/utils/include/utils_log.h"
	.file 13 "/Users/Sven/bl_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.file 14 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1261
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF178
	.byte	0xc
	.4byte	.LASF179
	.4byte	.LASF180
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x3f
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x59
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x78
	.byte	0x4
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x6
	.4byte	.LASF12
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x8d
	.byte	0x3
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x86
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0xe7
	.byte	0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0x94
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0xe7
	.byte	0
	.byte	0x9
	.4byte	0x59
	.4byte	0xf7
	.byte	0xa
	.4byte	0x8d
	.byte	0x3
	.byte	0
	.byte	0xb
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x11b
	.byte	0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x86
	.byte	0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xc5
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0xf7
	.byte	0xd
	.byte	0x4
	.byte	0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x78
	.byte	0x3
	.4byte	.LASF22
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x86
	.byte	0x3
	.4byte	.LASF23
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x135
	.byte	0xe
	.4byte	.LASF28
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1a7
	.byte	0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1a7
	.byte	0
	.byte	0xf
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x86
	.byte	0x4
	.byte	0xc
	.4byte	.LASF25
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x86
	.byte	0x8
	.byte	0xc
	.4byte	.LASF26
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x86
	.byte	0xc
	.byte	0xc
	.4byte	.LASF27
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x86
	.byte	0x10
	.byte	0xf
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x1ad
	.byte	0x14
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x14d
	.byte	0x9
	.4byte	0x129
	.4byte	0x1bd
	.byte	0xa
	.4byte	0x8d
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF29
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x240
	.byte	0xc
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x86
	.byte	0
	.byte	0xc
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x86
	.byte	0x4
	.byte	0xc
	.4byte	.LASF32
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x86
	.byte	0x8
	.byte	0xc
	.4byte	.LASF33
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x86
	.byte	0xc
	.byte	0xc
	.4byte	.LASF34
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x86
	.byte	0x10
	.byte	0xc
	.4byte	.LASF35
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x86
	.byte	0x14
	.byte	0xc
	.4byte	.LASF36
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x86
	.byte	0x18
	.byte	0xc
	.4byte	.LASF37
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x86
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF38
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x86
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x285
	.byte	0xc
	.4byte	.LASF40
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x285
	.byte	0
	.byte	0xc
	.4byte	.LASF41
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x285
	.byte	0x80
	.byte	0x12
	.4byte	.LASF42
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x129
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF43
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x129
	.2byte	0x104
	.byte	0
	.byte	0x9
	.4byte	0x127
	.4byte	0x295
	.byte	0xa
	.4byte	0x8d
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x2d8
	.byte	0xc
	.4byte	.LASF24
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x2d8
	.byte	0
	.byte	0xc
	.4byte	.LASF45
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x86
	.byte	0x4
	.byte	0xc
	.4byte	.LASF46
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x2de
	.byte	0x8
	.byte	0xc
	.4byte	.LASF39
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x240
	.byte	0x88
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x295
	.byte	0x9
	.4byte	0x2ee
	.4byte	0x2ee
	.byte	0xa
	.4byte	0x8d
	.byte	0x1f
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x2f4
	.byte	0x13
	.byte	0xe
	.4byte	.LASF47
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x31d
	.byte	0xc
	.4byte	.LASF48
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x31d
	.byte	0
	.byte	0xc
	.4byte	.LASF49
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x86
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x59
	.byte	0xe
	.4byte	.LASF50
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x466
	.byte	0xf
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x31d
	.byte	0
	.byte	0xf
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x86
	.byte	0x4
	.byte	0xf
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x86
	.byte	0x8
	.byte	0xc
	.4byte	.LASF51
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x2c
	.byte	0xc
	.byte	0xc
	.4byte	.LASF52
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x2c
	.byte	0xe
	.byte	0xf
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x2f5
	.byte	0x10
	.byte	0xc
	.4byte	.LASF53
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x86
	.byte	0x18
	.byte	0xc
	.4byte	.LASF54
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x127
	.byte	0x1c
	.byte	0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x5ea
	.byte	0x20
	.byte	0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x614
	.byte	0x24
	.byte	0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x638
	.byte	0x28
	.byte	0xc
	.4byte	.LASF58
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x652
	.byte	0x2c
	.byte	0xf
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x2f5
	.byte	0x30
	.byte	0xf
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x31d
	.byte	0x38
	.byte	0xf
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x86
	.byte	0x3c
	.byte	0xc
	.4byte	.LASF59
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x658
	.byte	0x40
	.byte	0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x668
	.byte	0x43
	.byte	0xf
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x2f5
	.byte	0x44
	.byte	0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x86
	.byte	0x4c
	.byte	0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xa1
	.byte	0x50
	.byte	0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x484
	.byte	0x54
	.byte	0xc
	.4byte	.LASF64
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x141
	.byte	0x58
	.byte	0xc
	.4byte	.LASF65
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x11b
	.byte	0x5c
	.byte	0xc
	.4byte	.LASF66
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x86
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xb9
	.4byte	0x484
	.byte	0x15
	.4byte	0x484
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0x5d8
	.byte	0x15
	.4byte	0x86
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x48f
	.byte	0x4
	.4byte	0x484
	.byte	0x16
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x5d8
	.byte	0x17
	.4byte	.LASF68
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x86
	.byte	0
	.byte	0x17
	.4byte	.LASF69
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6c4
	.byte	0x4
	.byte	0x17
	.4byte	.LASF70
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6c4
	.byte	0x8
	.byte	0x17
	.4byte	.LASF71
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6c4
	.byte	0xc
	.byte	0x17
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x86
	.byte	0x10
	.byte	0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8c4
	.byte	0x14
	.byte	0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x86
	.byte	0x30
	.byte	0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x8d9
	.byte	0x34
	.byte	0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x86
	.byte	0x38
	.byte	0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x8ea
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1a7
	.byte	0x40
	.byte	0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x86
	.byte	0x44
	.byte	0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1a7
	.byte	0x48
	.byte	0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8f0
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x86
	.byte	0x50
	.byte	0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x5d8
	.byte	0x54
	.byte	0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x89f
	.byte	0x58
	.byte	0x18
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2d8
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x295
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x901
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x685
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x90d
	.2byte	0x2ec
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5de
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF89
	.byte	0x4
	.4byte	0x5de
	.byte	0x10
	.byte	0x4
	.4byte	0x466
	.byte	0x14
	.4byte	0xb9
	.4byte	0x60e
	.byte	0x15
	.4byte	0x484
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0x60e
	.byte	0x15
	.4byte	0x86
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x5e5
	.byte	0x10
	.byte	0x4
	.4byte	0x5f0
	.byte	0x14
	.4byte	0xad
	.4byte	0x638
	.byte	0x15
	.4byte	0x484
	.byte	0x15
	.4byte	0x127
	.byte	0x15
	.4byte	0xad
	.byte	0x15
	.4byte	0x86
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x61a
	.byte	0x14
	.4byte	0x86
	.4byte	0x652
	.byte	0x15
	.4byte	0x484
	.byte	0x15
	.4byte	0x127
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x63e
	.byte	0x9
	.4byte	0x59
	.4byte	0x668
	.byte	0xa
	.4byte	0x8d
	.byte	0x2
	.byte	0
	.byte	0x9
	.4byte	0x59
	.4byte	0x678
	.byte	0xa
	.4byte	0x8d
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x323
	.byte	0x19
	.4byte	.LASF91
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6be
	.byte	0x17
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6be
	.byte	0
	.byte	0x17
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x86
	.byte	0x4
	.byte	0x17
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6c4
	.byte	0x8
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x685
	.byte	0x10
	.byte	0x4
	.4byte	0x678
	.byte	0x19
	.4byte	.LASF94
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x703
	.byte	0x17
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x703
	.byte	0
	.byte	0x17
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x703
	.byte	0x6
	.byte	0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x60
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	0x60
	.4byte	0x713
	.byte	0xa
	.4byte	0x8d
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x828
	.byte	0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x8d
	.byte	0
	.byte	0x17
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x5d8
	.byte	0x4
	.byte	0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x828
	.byte	0x8
	.byte	0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1bd
	.byte	0x24
	.byte	0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x86
	.byte	0x48
	.byte	0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x7f
	.byte	0x50
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6ca
	.byte	0x58
	.byte	0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x11b
	.byte	0x68
	.byte	0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x11b
	.byte	0x70
	.byte	0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x11b
	.byte	0x78
	.byte	0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x838
	.byte	0x80
	.byte	0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x848
	.byte	0x88
	.byte	0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x86
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x11b
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x11b
	.byte	0xac
	.byte	0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x11b
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x11b
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x11b
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x86
	.byte	0xcc
	.byte	0
	.byte	0x9
	.4byte	0x5de
	.4byte	0x838
	.byte	0xa
	.4byte	0x8d
	.byte	0x19
	.byte	0
	.byte	0x9
	.4byte	0x5de
	.4byte	0x848
	.byte	0xa
	.4byte	0x8d
	.byte	0x7
	.byte	0
	.byte	0x9
	.4byte	0x5de
	.4byte	0x858
	.byte	0xa
	.4byte	0x8d
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x87f
	.byte	0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x87f
	.byte	0
	.byte	0x17
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x88f
	.byte	0x78
	.byte	0
	.byte	0x9
	.4byte	0x31d
	.4byte	0x88f
	.byte	0xa
	.4byte	0x8d
	.byte	0x1d
	.byte	0
	.byte	0x9
	.4byte	0x8d
	.4byte	0x89f
	.byte	0xa
	.4byte	0x8d
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8c4
	.byte	0x1c
	.4byte	.LASF67
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x713
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x858
	.byte	0
	.byte	0x9
	.4byte	0x5de
	.4byte	0x8d4
	.byte	0xa
	.4byte	0x8d
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF181
	.byte	0x10
	.byte	0x4
	.4byte	0x8d4
	.byte	0x1e
	.4byte	0x8ea
	.byte	0x15
	.4byte	0x484
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x8df
	.byte	0x10
	.byte	0x4
	.4byte	0x1a7
	.byte	0x1e
	.4byte	0x901
	.byte	0x15
	.4byte	0x86
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x907
	.byte	0x10
	.byte	0x4
	.4byte	0x8f6
	.byte	0x9
	.4byte	0x678
	.4byte	0x91d
	.byte	0xa
	.4byte	0x8d
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x484
	.byte	0x1f
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x48a
	.byte	0x3
	.4byte	.LASF122
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x33
	.byte	0x20
	.4byte	.LASF123
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0x937
	.byte	0x21
	.4byte	.LASF182
	.byte	0x7
	.byte	0x1
	.4byte	0x59
	.byte	0x8
	.byte	0x21
	.byte	0xe
	.4byte	0x98c
	.byte	0x22
	.4byte	.LASF124
	.byte	0
	.byte	0x22
	.4byte	.LASF125
	.byte	0x1
	.byte	0x22
	.4byte	.LASF126
	.byte	0x2
	.byte	0x22
	.4byte	.LASF127
	.byte	0x3
	.byte	0x22
	.4byte	.LASF128
	.byte	0x4
	.byte	0x22
	.4byte	.LASF129
	.byte	0x5
	.byte	0x22
	.4byte	.LASF130
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF131
	.byte	0x8
	.byte	0x29
	.byte	0x3
	.4byte	0x94f
	.byte	0xe
	.4byte	.LASF132
	.byte	0x8
	.byte	0x8
	.byte	0x2b
	.byte	0x10
	.4byte	0x9c0
	.byte	0xc
	.4byte	.LASF133
	.byte	0x8
	.byte	0x2c
	.byte	0x13
	.4byte	0x9c0
	.byte	0
	.byte	0xc
	.4byte	.LASF134
	.byte	0x8
	.byte	0x2d
	.byte	0xb
	.4byte	0x5d8
	.byte	0x4
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x98c
	.byte	0x3
	.4byte	.LASF135
	.byte	0x8
	.byte	0x2e
	.byte	0x3
	.4byte	0x998
	.byte	0x4
	.4byte	0x9c6
	.byte	0x23
	.4byte	.LASF137
	.byte	0x9
	.byte	0x37
	.byte	0x17
	.4byte	0x73
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x24
	.4byte	.LASF136
	.byte	0x9
	.byte	0x44
	.byte	0xe
	.4byte	0x98c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hal_drv
	.byte	0x23
	.4byte	.LASF138
	.byte	0x9
	.byte	0x45
	.byte	0x1a
	.4byte	0x9d2
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hal_drv
	.byte	0x24
	.4byte	.LASF139
	.byte	0x9
	.byte	0x52
	.byte	0xe
	.4byte	0x98c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hal_drvhal_adc
	.byte	0x24
	.4byte	.LASF140
	.byte	0x9
	.byte	0x53
	.byte	0x13
	.4byte	0x9d2
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hal_drvhal_adc
	.byte	0x3
	.4byte	.LASF141
	.byte	0xa
	.byte	0x24
	.byte	0x10
	.4byte	0xa3d
	.byte	0x10
	.byte	0x4
	.4byte	0xa43
	.byte	0x1e
	.4byte	0xa58
	.byte	0x15
	.4byte	0x86
	.byte	0x15
	.4byte	0xa58
	.byte	0x15
	.4byte	0x67
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x67
	.byte	0xe
	.4byte	.LASF142
	.byte	0x1c
	.byte	0xa
	.byte	0x25
	.byte	0x10
	.4byte	0xac6
	.byte	0xc
	.4byte	.LASF143
	.byte	0xa
	.byte	0x26
	.byte	0x9
	.4byte	0x86
	.byte	0
	.byte	0xc
	.4byte	.LASF144
	.byte	0xa
	.byte	0x27
	.byte	0xf
	.4byte	0xa58
	.byte	0x4
	.byte	0xc
	.4byte	.LASF145
	.byte	0xa
	.byte	0x28
	.byte	0xb
	.4byte	0x127
	.byte	0x8
	.byte	0xc
	.4byte	.LASF146
	.byte	0xa
	.byte	0x29
	.byte	0x9
	.4byte	0x86
	.byte	0xc
	.byte	0xc
	.4byte	.LASF147
	.byte	0xa
	.byte	0x2a
	.byte	0xe
	.4byte	0x67
	.byte	0x10
	.byte	0xc
	.4byte	.LASF148
	.byte	0xa
	.byte	0x2b
	.byte	0xe
	.4byte	0x67
	.byte	0x14
	.byte	0xf
	.string	"cb"
	.byte	0xa
	.byte	0x2c
	.byte	0x11
	.4byte	0xa31
	.byte	0x18
	.byte	0
	.byte	0x3
	.4byte	.LASF149
	.byte	0xa
	.byte	0x2d
	.byte	0x2
	.4byte	0xa5e
	.byte	0x25
	.4byte	.LASF151
	.byte	0x1
	.byte	0xc7
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0xb29
	.byte	0x26
	.string	"ptr"
	.byte	0x1
	.byte	0xc7
	.byte	0x22
	.4byte	0xa58
	.4byte	.LLST20
	.byte	0x27
	.4byte	.LASF150
	.byte	0x1
	.byte	0xc7
	.byte	0x31
	.4byte	0xa58
	.byte	0x1
	.byte	0x5b
	.byte	0x28
	.4byte	.LASF148
	.byte	0x1
	.byte	0xc7
	.byte	0x42
	.4byte	0x67
	.4byte	.LLST21
	.byte	0x29
	.string	"i"
	.byte	0x1
	.byte	0xc9
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST22
	.byte	0
	.byte	0x25
	.4byte	.LASF152
	.byte	0x1
	.byte	0xb5
	.byte	0x9
	.4byte	0x33
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0xc0e
	.byte	0x26
	.string	"ptr"
	.byte	0x1
	.byte	0xb5
	.byte	0x26
	.4byte	0xa58
	.4byte	.LLST16
	.byte	0x28
	.4byte	.LASF153
	.byte	0x1
	.byte	0xb5
	.byte	0x2f
	.4byte	0x86
	.4byte	.LLST17
	.byte	0x28
	.4byte	.LASF154
	.byte	0x1
	.byte	0xb5
	.byte	0x3d
	.4byte	0x86
	.4byte	.LLST18
	.byte	0x23
	.4byte	.LASF155
	.byte	0x1
	.byte	0xb7
	.byte	0xd
	.4byte	0x33
	.byte	0x1
	.byte	0x58
	.byte	0x2a
	.4byte	.LASF156
	.byte	0x1
	.byte	0xb8
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST19
	.byte	0x2b
	.4byte	0x10bf
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.byte	0xbc
	.byte	0xd8
	.byte	0x2c
	.4byte	.LVL92
	.4byte	0x11d2
	.4byte	0xbb6
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x2e
	.4byte	.LVL94
	.4byte	0x11de
	.byte	0x2c
	.4byte	.LVL95
	.4byte	0x11eb
	.4byte	0xbee
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xbc
	.byte	0
	.byte	0x2e
	.4byte	.LVL100
	.4byte	0x11f7
	.byte	0x2f
	.4byte	.LVL105
	.4byte	0x1204
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF157
	.byte	0x1
	.byte	0x8e
	.byte	0x9
	.4byte	0x33
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0xdd0
	.byte	0x28
	.4byte	.LASF153
	.byte	0x1
	.byte	0x8e
	.byte	0x1e
	.4byte	0x86
	.4byte	.LLST13
	.byte	0x28
	.4byte	.LASF154
	.byte	0x1
	.byte	0x8e
	.byte	0x2c
	.4byte	0x86
	.4byte	.LLST14
	.byte	0x29
	.string	"ret"
	.byte	0x1
	.byte	0x90
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST15
	.byte	0x23
	.4byte	.LASF158
	.byte	0x1
	.byte	0x91
	.byte	0x10
	.4byte	0xdd0
	.byte	0x1
	.byte	0x58
	.byte	0x23
	.4byte	.LASF159
	.byte	0x1
	.byte	0x92
	.byte	0xe
	.4byte	0xdd6
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x23
	.4byte	.LASF155
	.byte	0x1
	.byte	0x93
	.byte	0xd
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.4byte	.LASF156
	.byte	0x1
	.byte	0x94
	.byte	0x9
	.4byte	0x86
	.byte	0x1
	.byte	0x59
	.byte	0x30
	.4byte	0x10bf
	.4byte	.LBB50
	.4byte	.LBE50-.LBB50
	.byte	0x1
	.byte	0x98
	.2byte	0x10a
	.byte	0x2b
	.4byte	0x10bf
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0x9f
	.byte	0xd4
	.byte	0x2b
	.4byte	0x10bf
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0xa6
	.byte	0xe1
	.byte	0x2b
	.4byte	0x10bf
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.byte	0xab
	.byte	0xdf
	.byte	0x2c
	.4byte	.LVL66
	.4byte	0x1067
	.4byte	0xce7
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL71
	.4byte	0x11de
	.byte	0x2e
	.4byte	.LVL72
	.4byte	0x11eb
	.byte	0x2e
	.4byte	.LVL74
	.4byte	0x11f7
	.byte	0x2c
	.4byte	.LVL77
	.4byte	0x1210
	.4byte	0xd15
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x2e
	.4byte	.LVL79
	.4byte	0x11de
	.byte	0x2e
	.4byte	.LVL80
	.4byte	0x11f7
	.byte	0x2c
	.4byte	.LVL81
	.4byte	0x11d2
	.4byte	0xd3b
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL83
	.4byte	0x11de
	.byte	0x2c
	.4byte	.LVL84
	.4byte	0x11eb
	.4byte	0xd79
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xa6
	.byte	0x2d
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL85
	.4byte	0x11f7
	.byte	0x2e
	.4byte	.LVL86
	.4byte	0x11de
	.byte	0x2e
	.4byte	.LVL87
	.4byte	0x11f7
	.byte	0x2c
	.4byte	.LVL88
	.4byte	0x121c
	.4byte	0xdae
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0x31
	.4byte	.LVL89
	.4byte	0x1204
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xac6
	.byte	0x9
	.4byte	0x67
	.4byte	0xde6
	.byte	0xa
	.4byte	0x8d
	.byte	0xb
	.byte	0
	.byte	0x32
	.4byte	.LASF183
	.byte	0x1
	.byte	0x79
	.byte	0x5
	.4byte	0x86
	.byte	0x1
	.4byte	0xe28
	.byte	0x33
	.4byte	.LASF153
	.byte	0x1
	.byte	0x79
	.byte	0x1d
	.4byte	0x86
	.byte	0x34
	.string	"ret"
	.byte	0x1
	.byte	0x7b
	.byte	0x9
	.4byte	0x86
	.byte	0x35
	.4byte	.LASF158
	.byte	0x1
	.byte	0x7c
	.byte	0x10
	.4byte	0xdd0
	.byte	0x35
	.4byte	.LASF156
	.byte	0x1
	.byte	0x7d
	.byte	0x9
	.4byte	0x86
	.byte	0
	.byte	0x25
	.4byte	.LASF160
	.byte	0x1
	.byte	0x68
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0xec2
	.byte	0x26
	.string	"cb"
	.byte	0x1
	.byte	0x68
	.byte	0x2b
	.4byte	0xa31
	.4byte	.LLST2
	.byte	0x29
	.string	"ctx"
	.byte	0x1
	.byte	0x6a
	.byte	0x10
	.4byte	0xdd0
	.4byte	.LLST3
	.byte	0x2b
	.4byte	0x10bf
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x6d
	.byte	0xe3
	.byte	0x2e
	.4byte	.LVL8
	.4byte	0x11de
	.byte	0x2c
	.4byte	.LVL9
	.4byte	0x11eb
	.4byte	0xea9
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x6d
	.byte	0
	.byte	0x2e
	.4byte	.LVL10
	.4byte	0x11f7
	.byte	0x31
	.4byte	.LVL13
	.4byte	0x1210
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF161
	.byte	0x1
	.byte	0x34
	.byte	0x5
	.4byte	0x86
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x1067
	.byte	0x28
	.4byte	.LASF143
	.byte	0x1
	.byte	0x34
	.byte	0x16
	.4byte	0x86
	.4byte	.LLST8
	.byte	0x28
	.4byte	.LASF162
	.byte	0x1
	.byte	0x34
	.byte	0x20
	.4byte	0x86
	.4byte	.LLST9
	.byte	0x28
	.4byte	.LASF163
	.byte	0x1
	.byte	0x34
	.byte	0x2a
	.4byte	0x86
	.4byte	.LLST10
	.byte	0x28
	.4byte	.LASF153
	.byte	0x1
	.byte	0x34
	.byte	0x38
	.4byte	0x86
	.4byte	.LLST11
	.byte	0x29
	.string	"ret"
	.byte	0x1
	.byte	0x36
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST12
	.byte	0x23
	.4byte	.LASF164
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.4byte	0x86
	.byte	0x1
	.byte	0x63
	.byte	0x2b
	.4byte	0x10bf
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0x3b
	.byte	0xf6
	.byte	0x2b
	.4byte	0x10bf
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x41
	.byte	0xf8
	.byte	0x2b
	.4byte	0x10bf
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.byte	0x46
	.byte	0xd4
	.byte	0x2b
	.4byte	0x10bf
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.byte	0x4d
	.byte	0xd7
	.byte	0x2b
	.4byte	0x10bf
	.4byte	.LBB48
	.4byte	.LBE48-.LBB48
	.byte	0x1
	.byte	0x5c
	.byte	0xd6
	.byte	0x2e
	.4byte	.LVL36
	.4byte	0x11de
	.byte	0x2e
	.4byte	.LVL38
	.4byte	0x11eb
	.byte	0x2e
	.4byte	.LVL40
	.4byte	0x11f7
	.byte	0x2e
	.4byte	.LVL42
	.4byte	0x11de
	.byte	0x2e
	.4byte	.LVL44
	.4byte	0x11f7
	.byte	0x2e
	.4byte	.LVL46
	.4byte	0x11de
	.byte	0x2e
	.4byte	.LVL48
	.4byte	0x11f7
	.byte	0x2c
	.4byte	.LVL50
	.4byte	0x1067
	.4byte	0xfdd
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL52
	.4byte	0x11de
	.byte	0x2e
	.4byte	.LVL53
	.4byte	0x11f7
	.byte	0x2c
	.4byte	.LVL54
	.4byte	0x1228
	.4byte	0x1003
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL55
	.4byte	0x1234
	.4byte	0x101d
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL57
	.4byte	0x1240
	.4byte	0x1037
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x2d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL58
	.4byte	0x11de
	.byte	0x2e
	.4byte	.LVL60
	.4byte	0x11f7
	.byte	0x2c
	.4byte	.LVL63
	.4byte	0xde6
	.4byte	0x105d
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL64
	.4byte	0x124c
	.byte	0
	.byte	0x36
	.4byte	.LASF184
	.byte	0x1
	.byte	0x24
	.byte	0xc
	.4byte	0x86
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x10af
	.byte	0x28
	.4byte	.LASF153
	.byte	0x1
	.byte	0x24
	.byte	0x25
	.4byte	0x86
	.4byte	.LLST0
	.byte	0x29
	.string	"i"
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.4byte	0x86
	.4byte	.LLST1
	.byte	0x23
	.4byte	.LASF165
	.byte	0x1
	.byte	0x27
	.byte	0x9
	.4byte	0x10af
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0
	.byte	0x9
	.4byte	0x86
	.4byte	0x10bf
	.byte	0xa
	.4byte	0x8d
	.byte	0xb
	.byte	0
	.byte	0x37
	.4byte	.LASF185
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0x937
	.byte	0x3
	.byte	0x38
	.4byte	0xde6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x11d2
	.byte	0x39
	.4byte	0xdf7
	.4byte	.LLST4
	.byte	0x3a
	.4byte	0xe03
	.4byte	.LLST5
	.byte	0x3a
	.4byte	0xe0f
	.4byte	.LLST6
	.byte	0x3b
	.4byte	0xe1b
	.byte	0x1
	.byte	0x58
	.byte	0x3c
	.4byte	0xde6
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x79
	.byte	0x5
	.4byte	0x1186
	.byte	0x39
	.4byte	0xdf7
	.4byte	.LLST7
	.byte	0x3d
	.4byte	.Ldebug_ranges0+0
	.byte	0x3e
	.4byte	0xe03
	.byte	0x3e
	.4byte	0xe0f
	.byte	0x3e
	.4byte	0xe1b
	.byte	0x30
	.4byte	0x10bf
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0x81
	.2byte	0x10a
	.byte	0x2e
	.4byte	.LVL19
	.4byte	0x11de
	.byte	0x2c
	.4byte	.LVL20
	.4byte	0x11eb
	.4byte	0x117b
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x2d
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x2d
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x2d
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x81
	.byte	0
	.byte	0x2e
	.4byte	.LVL23
	.4byte	0x11f7
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL16
	.4byte	0x1067
	.4byte	0x119a
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL26
	.4byte	0x1258
	.4byte	0x11ae
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	.LVL27
	.4byte	0x11d2
	.4byte	0x11c2
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LVL29
	.4byte	0x1210
	.byte	0x2d
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x3f
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xa
	.byte	0x39
	.byte	0x5
	.byte	0x40
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xb
	.2byte	0x558
	.byte	0xc
	.byte	0x3f
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xc
	.byte	0x9e
	.byte	0x6
	.byte	0x40
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x547
	.byte	0xc
	.byte	0x3f
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xa
	.byte	0x3b
	.byte	0x9
	.byte	0x3f
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xd
	.byte	0x4e
	.byte	0x7
	.byte	0x3f
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xe
	.byte	0x1f
	.byte	0x8
	.byte	0x3f
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xa
	.byte	0x3a
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0xa
	.byte	0x35
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0xa
	.byte	0x36
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0xa
	.byte	0x37
	.byte	0x5
	.byte	0x3f
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0xa
	.byte	0x38
	.byte	0x5
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
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
	.byte	0x4
	.byte	0x26
	.byte	0
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
	.byte	0x8
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
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x22
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x5
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
	.byte	0x28
	.byte	0x5
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x29
	.byte	0x34
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
	.byte	0x2a
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x1d
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x1d
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x5
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
	.byte	0x34
	.byte	0x34
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
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x2e
	.byte	0x1
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
	.byte	0x2e
	.byte	0
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
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3c
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x3e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3f
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x40
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST20:
	.4byte	.LVL106
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL107
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL103
	.4byte	.LVL105-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL90
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL92-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL90
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL92-1
	.4byte	.LVL98
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL99
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL104
	.4byte	.LFE28
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL105-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66-1
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66-1
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36-1
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-1
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42-1
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44-1
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46-1
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48-1
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50-1
	.4byte	.LFE24
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL36-1
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL40-1
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42-1
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL44-1
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL46-1
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50-1
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL56
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL36-1
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL40-1
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL42-1
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL44-1
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL46-1
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL48-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL50-1
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL51
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF134:
	.string	"name"
.LASF165:
	.string	"gpio_arr"
.LASF150:
	.string	"output"
.LASF39:
	.string	"_on_exit_args"
.LASF127:
	.string	"BLOG_LEVEL_WARN"
.LASF107:
	.string	"_wctomb_state"
.LASF104:
	.string	"_r48"
.LASF128:
	.string	"BLOG_LEVEL_ERROR"
.LASF154:
	.string	"raw_flag"
.LASF109:
	.string	"_signal_buf"
.LASF11:
	.string	"unsigned int"
.LASF53:
	.string	"_lbfsize"
.LASF51:
	.string	"_flags"
.LASF68:
	.string	"_errno"
.LASF133:
	.string	"level"
.LASF22:
	.string	"_LOCK_RECURSIVE_T"
.LASF55:
	.string	"_read"
.LASF143:
	.string	"mode"
.LASF111:
	.string	"_mbrlen_state"
.LASF158:
	.string	"pstctx"
.LASF70:
	.string	"_stdout"
.LASF170:
	.string	"bl_adc_parse_data"
.LASF14:
	.string	"_fpos_t"
.LASF46:
	.string	"_fns"
.LASF173:
	.string	"bl_adc_freq_init"
.LASF54:
	.string	"_cookie"
.LASF28:
	.string	"_Bigint"
.LASF159:
	.string	"adc_data"
.LASF36:
	.string	"__tm_wday"
.LASF78:
	.string	"_result"
.LASF152:
	.string	"hal_prase_adc_data"
.LASF8:
	.string	"uint32_t"
.LASF32:
	.string	"__tm_hour"
.LASF164:
	.string	"buf_size"
.LASF176:
	.string	"bl_adc_start"
.LASF139:
	.string	"_fsymf_level_hal_drvhal_adc"
.LASF18:
	.string	"__count"
.LASF131:
	.string	"blog_level_t"
.LASF31:
	.string	"__tm_min"
.LASF120:
	.string	"_impure_ptr"
.LASF117:
	.string	"_nextf"
.LASF94:
	.string	"_rand48"
.LASF79:
	.string	"_result_k"
.LASF10:
	.string	"long long unsigned int"
.LASF167:
	.string	"xTaskGetTickCountFromISR"
.LASF100:
	.string	"_asctime_buf"
.LASF50:
	.string	"__sFILE"
.LASF27:
	.string	"_wds"
.LASF157:
	.string	"hal_adc_get_data"
.LASF136:
	.string	"_fsymc_level_hal_drv"
.LASF90:
	.string	"__FILE"
.LASF168:
	.string	"bl_printk"
.LASF62:
	.string	"_offset"
.LASF132:
	.string	"_blog_info"
.LASF73:
	.string	"_emergency"
.LASF149:
	.string	"adc_ctx_t"
.LASF123:
	.string	"TrapNetCounter"
.LASF179:
	.string	"/Users/Sven/bl_iot_sdk/components/hal_drv/bl602_hal/hal_adc.c"
.LASF148:
	.string	"data_size"
.LASF30:
	.string	"__tm_sec"
.LASF126:
	.string	"BLOG_LEVEL_INFO"
.LASF37:
	.string	"__tm_yday"
.LASF72:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF130:
	.string	"BLOG_LEVEL_NEVER"
.LASF24:
	.string	"_next"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF140:
	.string	"_fsymf_info_hal_drvhal_adc"
.LASF162:
	.string	"freq"
.LASF153:
	.string	"gpio_num"
.LASF19:
	.string	"__value"
.LASF80:
	.string	"_p5s"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF105:
	.string	"_mblen_state"
.LASF89:
	.string	"char"
.LASF33:
	.string	"__tm_mday"
.LASF86:
	.string	"_sig_func"
.LASF112:
	.string	"_mbrtowc_state"
.LASF85:
	.string	"_atexit0"
.LASF180:
	.string	"/Users/Sven/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/hal_drv"
.LASF23:
	.string	"_flock_t"
.LASF16:
	.string	"__wch"
.LASF93:
	.string	"_iobs"
.LASF5:
	.string	"uint8_t"
.LASF142:
	.string	"adc_ctx"
.LASF58:
	.string	"_close"
.LASF76:
	.string	"__sdidinit"
.LASF182:
	.string	"_blog_leve"
.LASF169:
	.string	"xTaskGetTickCount"
.LASF145:
	.string	"adc_lli"
.LASF163:
	.string	"data_num"
.LASF69:
	.string	"_stdin"
.LASF102:
	.string	"_gamma_signgam"
.LASF3:
	.string	"long long int"
.LASF48:
	.string	"_base"
.LASF81:
	.string	"_freelist"
.LASF146:
	.string	"lli_flag"
.LASF96:
	.string	"_mult"
.LASF21:
	.string	"__ULong"
.LASF137:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF114:
	.string	"_wcrtomb_state"
.LASF122:
	.string	"BaseType_t"
.LASF124:
	.string	"BLOG_LEVEL_ALL"
.LASF52:
	.string	"_file"
.LASF77:
	.string	"__cleanup"
.LASF20:
	.string	"_mbstate_t"
.LASF178:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF174:
	.string	"bl_adc_init"
.LASF40:
	.string	"_fnargs"
.LASF38:
	.string	"__tm_isdst"
.LASF185:
	.string	"xPortIsInsideInterrupt"
.LASF116:
	.string	"_h_errno"
.LASF155:
	.string	"data"
.LASF34:
	.string	"__tm_mon"
.LASF56:
	.string	"_write"
.LASF156:
	.string	"channel"
.LASF44:
	.string	"_atexit"
.LASF65:
	.string	"_mbstate"
.LASF175:
	.string	"bl_adc_dma_init"
.LASF1:
	.string	"short int"
.LASF2:
	.string	"long int"
.LASF183:
	.string	"hal_adc_add_channel"
.LASF88:
	.string	"__sf"
.LASF26:
	.string	"_sign"
.LASF63:
	.string	"_data"
.LASF17:
	.string	"__wchb"
.LASF121:
	.string	"_global_impure_ptr"
.LASF161:
	.string	"hal_adc_init"
.LASF35:
	.string	"__tm_year"
.LASF101:
	.string	"_localtime_buf"
.LASF119:
	.string	"_unused"
.LASF84:
	.string	"_new"
.LASF82:
	.string	"_cvtlen"
.LASF25:
	.string	"_maxwds"
.LASF108:
	.string	"_l64a_buf"
.LASF147:
	.string	"chan_init_table"
.LASF184:
	.string	"check_adc_gpio_valid"
.LASF61:
	.string	"_blksize"
.LASF29:
	.string	"__tm"
.LASF64:
	.string	"_lock"
.LASF9:
	.string	"long unsigned int"
.LASF166:
	.string	"bl_adc_get_channel_by_gpio"
.LASF160:
	.string	"hal_adc_callback_register"
.LASF92:
	.string	"_niobs"
.LASF12:
	.string	"wint_t"
.LASF151:
	.string	"hal_parse_data_arr"
.LASF4:
	.string	"int32_t"
.LASF41:
	.string	"_dso_handle"
.LASF129:
	.string	"BLOG_LEVEL_ASSERT"
.LASF83:
	.string	"_cvtbuf"
.LASF6:
	.string	"unsigned char"
.LASF110:
	.string	"_getdate_err"
.LASF97:
	.string	"_add"
.LASF47:
	.string	"__sbuf"
.LASF141:
	.string	"bl_adc_cb_t"
.LASF91:
	.string	"_glue"
.LASF87:
	.string	"__sglue"
.LASF99:
	.string	"_strtok_last"
.LASF106:
	.string	"_mbtowc_state"
.LASF144:
	.string	"channel_data"
.LASF177:
	.string	"bl_adc_gpio_init"
.LASF75:
	.string	"_locale"
.LASF15:
	.string	"_ssize_t"
.LASF0:
	.string	"signed char"
.LASF67:
	.string	"_reent"
.LASF7:
	.string	"short unsigned int"
.LASF172:
	.string	"memcpy"
.LASF125:
	.string	"BLOG_LEVEL_DEBUG"
.LASF42:
	.string	"_fntypes"
.LASF49:
	.string	"_size"
.LASF171:
	.string	"bl_dma_find_ctx_by_channel"
.LASF13:
	.string	"_off_t"
.LASF135:
	.string	"blog_info_t"
.LASF60:
	.string	"_nbuf"
.LASF98:
	.string	"_unused_rand"
.LASF74:
	.string	"_unspecified_locale_info"
.LASF66:
	.string	"_flags2"
.LASF43:
	.string	"_is_cxa"
.LASF95:
	.string	"_seed"
.LASF103:
	.string	"_rand_next"
.LASF181:
	.string	"__locale_t"
.LASF57:
	.string	"_seek"
.LASF71:
	.string	"_stderr"
.LASF118:
	.string	"_nmalloc"
.LASF59:
	.string	"_ubuf"
.LASF138:
	.string	"_fsymc_info_hal_drv"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
