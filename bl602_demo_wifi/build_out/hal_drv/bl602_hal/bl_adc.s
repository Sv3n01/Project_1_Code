	.file	"bl_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.adc_data_update,"ax",@progbits
	.align	1
	.type	adc_data_update, @function
adc_data_update:
.LFB34:
	.file 1 "/Users/Sven/bl_iot_sdk/components/hal_drv/bl602_hal/bl_adc.c"
	.loc 1 286 1
	.cfi_startproc
	.loc 1 287 5
	.loc 1 289 5
	.loc 1 286 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 289 14
	li	a0,1
	.loc 1 286 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 289 14
	call	bl_dma_find_ctx_by_channel
.LVL0:
	.loc 1 290 5 is_stmt 1
	.loc 1 290 8 is_stmt 0
	bne	a0,zero,.L2
.LBB33:
.LBB34:
	.loc 1 291 9 is_stmt 1
	.loc 1 291 47
	.loc 1 291 52
	.loc 1 291 75 is_stmt 0
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 291 55
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L1
	.loc 1 291 121
	lui	a4,%hi(_fsymf_level_hal_drvbl_adc)
	.loc 1 291 100
	lbu	a4,%lo(_fsymf_level_hal_drvbl_adc)(a4)
	bgtu	a4,a5,.L1
	.loc 1 291 156 is_stmt 1
.LBB35:
.LBB36:
	.file 2 "/Users/Sven/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE36:
.LBE35:
	.loc 1 291 156
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L6
	.loc 1 291 238
	call	xTaskGetTickCountFromISR
.LVL1:
.L7:
.LBE34:
.LBE33:
	.loc 1 308 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
.LBB40:
.LBB37:
	.loc 1 291 156
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	mv	a1,a0
	lui	a0,%hi(.LC3)
.LBE37:
.LBE40:
	.loc 1 308 1
.LBB41:
.LBB38:
	.loc 1 291 156
	li	a4,291
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC3)
.LBE38:
.LBE41:
	.loc 1 308 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB42:
.LBB39:
	.loc 1 291 156
	tail	bl_printk
.LVL2:
.L6:
	.cfi_restore_state
	.loc 1 291 267
	call	xTaskGetTickCount
.LVL3:
	j	.L7
.LVL4:
.L2:
.LBE39:
.LBE42:
	.loc 1 295 5 is_stmt 1
	.loc 1 295 8 is_stmt 0
	lw	a4,12(a0)
	lw	a5,8(a0)
	bne	a4,zero,.L8
	.loc 1 296 9 is_stmt 1
	.loc 1 296 30 is_stmt 0
	lw	a5,4(a5)
	sw	a5,4(a0)
	.loc 1 297 9 is_stmt 1
	.loc 1 297 26 is_stmt 0
	li	a5,1
	sw	a5,12(a0)
.L9:
	.loc 1 303 5 is_stmt 1
	.loc 1 303 15 is_stmt 0
	lw	t1,24(a0)
	.loc 1 303 8
	beq	t1,zero,.L1
	.loc 1 304 9 is_stmt 1
	.loc 1 304 16 is_stmt 0
	lw	a2,20(a0)
	lw	a1,4(a0)
	.loc 1 308 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 304 16
	lw	a0,0(a0)
.LVL5:
	.loc 1 308 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 304 16
	jr	t1
.LVL6:
.L8:
	.cfi_restore_state
	.loc 1 299 9 is_stmt 1
	.loc 1 299 30 is_stmt 0
	lw	a5,20(a5)
	.loc 1 300 26
	sw	zero,12(a0)
	.loc 1 299 30
	sw	a5,4(a0)
	.loc 1 300 9 is_stmt 1
	j	.L9
.L1:
	.loc 1 308 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE34:
	.size	adc_data_update, .-adc_data_update
	.section	.text.ADC_Clock_Init,"ax",@progbits
	.align	1
	.globl	ADC_Clock_Init
	.type	ADC_Clock_Init, @function
ADC_Clock_Init:
.LFB27:
	.loc 1 78 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 79 5
	.loc 1 78 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.loc 1 79 5
	mv	a2,a0
	.cfi_offset 8, -8
	.loc 1 78 1
	mv	s0,a0
	.loc 1 79 5
	li	a1,0
	li	a0,1
.LVL8:
	.loc 1 78 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 79 5
	call	GLB_Set_ADC_CLK
.LVL9:
	.loc 1 80 5 is_stmt 1
	.loc 1 80 43
	.loc 1 80 48
	.loc 1 80 70 is_stmt 0
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 80 51
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,2
	bgtu	a4,a5,.L14
	.loc 1 80 115 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvbl_adc)
	.loc 1 80 95 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvbl_adc)(a4)
	bgtu	a4,a5,.L14
.LVL10:
.LBB47:
.LBB48:
	.loc 1 80 150 is_stmt 1
.LBB49:
.LBB50:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE50:
.LBE49:
	.loc 1 80 150
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L16
	.loc 1 80 261
	call	xTaskGetTickCountFromISR
.LVL11:
.L17:
	.loc 1 80 150
	mv	a6,s0
	mv	a5,s0
.LBE48:
.LBE47:
	.loc 1 81 1
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL12:
	lw	ra,12(sp)
	.cfi_restore 1
.LBB54:
.LBB51:
	.loc 1 80 150
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC4)
	mv	a1,a0
	lui	a0,%hi(.LC5)
.LBE51:
.LBE54:
	.loc 1 81 1
.LBB55:
.LBB52:
	.loc 1 80 150
	li	a4,80
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC5)
.LBE52:
.LBE55:
	.loc 1 81 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB56:
.LBB53:
	.loc 1 80 150
	tail	bl_printk
.LVL13:
.L16:
	.cfi_restore_state
	.loc 1 80 290
	call	xTaskGetTickCount
.LVL14:
	j	.L17
.LVL15:
.L14:
.LBE53:
.LBE56:
	.loc 1 81 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	ADC_Clock_Init, .-ADC_Clock_Init
	.section	.text.TSEN_Calibration,"ax",@progbits
	.align	1
	.globl	TSEN_Calibration
	.type	TSEN_Calibration, @function
TSEN_Calibration:
.LFB28:
	.loc 1 84 1 is_stmt 1
	.cfi_startproc
	.loc 1 85 5
	.loc 1 84 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 85 5
	call	ADC_SET_TSVBE_LOW
.LVL16:
	.loc 1 86 5 is_stmt 1
	call	ADC_Start
.LVL17:
	.loc 1 87 5
	li	a0,100
	call	BL602_Delay_MS
.LVL18:
	.loc 1 88 5
.L20:
	.loc 1 88 37 discriminator 1
	.loc 1 88 11 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL19:
	.loc 1 88 10 discriminator 1
	beq	a0,zero,.L20
	.loc 1 89 5 is_stmt 1
	call	ADC_Read_FIFO
.LVL20:
	.loc 1 91 5
	call	ADC_SET_TSVBE_HIGH
.LVL21:
	.loc 1 92 5
	call	ADC_Start
.LVL22:
	.loc 1 93 5
	li	a0,100
	call	BL602_Delay_MS
.LVL23:
	.loc 1 94 5
.L21:
	.loc 1 94 37 discriminator 1
	.loc 1 94 11 is_stmt 0 discriminator 1
	call	ADC_Get_FIFO_Count
.LVL24:
	.loc 1 94 10 discriminator 1
	beq	a0,zero,.L21
	.loc 1 95 5 is_stmt 1
	call	ADC_Read_FIFO
.LVL25:
	.loc 1 97 5
	.loc 1 98 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 97 5
	tail	ADC_SET_TSVBE_LOW
.LVL26:
	.cfi_endproc
.LFE28:
	.size	TSEN_Calibration, .-TSEN_Calibration
	.section	.text.test_adc_init,"ax",@progbits
	.align	1
	.globl	test_adc_init
	.type	test_adc_init, @function
test_adc_init:
.LFB30:
	.loc 1 155 1 is_stmt 1
	.cfi_startproc
	.loc 1 156 5
	.loc 1 155 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 156 5
	li	a0,2
	.loc 1 155 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 156 5
	call	ADC_Clock_Init
.LVL27:
	.loc 1 158 5 is_stmt 1
	call	ADC_Reset
.LVL28:
	.loc 1 160 5
	call	ADC_Disable
.LVL29:
	.loc 1 161 5
	call	ADC_Enable
.LVL30:
	.loc 1 163 5
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	ADC_Init
.LVL31:
	.loc 1 164 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL32:
	.loc 1 165 5
	li	a0,0
	call	ADC_Tsen_Init
.LVL33:
	.loc 1 167 5
	lui	a0,%hi(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	ADC_FIFO_Cfg
.LVL34:
	.loc 1 168 5
	call	TSEN_Calibration
.LVL35:
	.loc 1 170 5
	.loc 1 171 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	test_adc_init, .-test_adc_init
	.globl	__extendsfdf2
	.globl	__divdf3
	.globl	__truncdfsf2
	.section	.text.test_adc_get,"ax",@progbits
	.align	1
	.globl	test_adc_get
	.type	test_adc_get, @function
test_adc_get:
.LFB31:
	.loc 1 174 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 175 5
	.loc 1 176 5
	.loc 1 174 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 203 21
	lui	a5,%hi(.LC6)
	.loc 1 174 1
	fsw	fs0,28(sp)
	.cfi_offset 40, -36
	.loc 1 203 21
	flw	fs0,%lo(.LC6)(a5)
	.loc 1 204 31
	lui	a5,%hi(.LC7)
	.loc 1 174 1
	sw	s4,40(sp)
	sw	s5,36(sp)
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 204 31
	lw	s4,%lo(.LC7)(a5)
	lw	s5,%lo(.LC7+4)(a5)
	.loc 1 174 1
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 174 1
	mv	s3,a0
	.loc 1 176 14
	sw	zero,4(sp)
	.loc 1 177 5 is_stmt 1
.LVL37:
	.loc 1 178 5
	.loc 1 179 5
	.loc 1 181 5
	.loc 1 178 19 is_stmt 0
	li	s2,0
	.loc 1 178 14
	li	s1,0
	.loc 1 181 12
	li	s0,0
.LVL38:
.L36:
	.loc 1 182 9 is_stmt 1
	call	ADC_Start
.LVL39:
	.loc 1 184 9
.L30:
	.loc 1 184 15 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL40:
	.loc 1 184 14
	beq	a0,zero,.L31
.L34:
	.loc 1 189 9 is_stmt 1
	.loc 1 190 13
	.loc 1 190 22 is_stmt 0
	call	ADC_Read_FIFO
.LVL41:
	.loc 1 190 20
	sw	a0,4(sp)
	.loc 1 191 13 is_stmt 1
	addi	a2,sp,8
	li	a1,1
	addi	a0,sp,4
	call	ADC_Parse_Result
.LVL42:
	.loc 1 193 13
	lhu	a5,10(sp)
	.loc 1 193 15 is_stmt 0
	bne	s0,zero,.L32
	.loc 1 194 17 is_stmt 1
	.loc 1 194 20 is_stmt 0
	mv	s1,a5
.LVL43:
.L33:
	.loc 1 198 17
	call	ADC_Get_FIFO_Count
.LVL44:
	.loc 1 198 9
	bne	a0,zero,.L34
	.loc 1 200 9 is_stmt 1
	.loc 1 200 12 is_stmt 0
	beq	s0,zero,.L35
	.loc 1 201 13 is_stmt 1
	.loc 1 201 35 is_stmt 0
	fcvt.s.wu	fa5,s2
	.loc 1 201 23
	fcvt.s.w	fa0,s1
	.loc 1 201 21
	fsub.s	fa0,fa0,fa5
.LVL45:
	.loc 1 203 13 is_stmt 1
	.loc 1 204 13
	.loc 1 204 31 is_stmt 0
	fsub.s	fa0,fa0,fs0
.LVL46:
	call	__extendsfdf2
.LVL47:
	mv	a2,s4
	mv	a3,s5
	call	__divdf3
.LVL48:
	.loc 1 207 13 is_stmt 1
	.loc 1 204 21 is_stmt 0
	call	__truncdfsf2
.LVL49:
	.loc 1 207 20
	fcvt.w.s a5,fa0,rtz
	sh	a5,0(s3)
	.loc 1 209 9 is_stmt 1
	.loc 1 212 13
	call	ADC_SET_TSVBE_LOW
.LVL50:
.L37:
	.loc 1 181 5 is_stmt 0 discriminator 2
	beq	s0,zero,.L38
	.loc 1 216 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL51:
	lw	s1,52(sp)
	.cfi_restore 9
.LVL52:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL53:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL54:
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	flw	fs0,28(sp)
	.cfi_restore 40
	li	a0,0
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL55:
.L38:
	.cfi_restore_state
	li	s0,1
.LVL56:
	j	.L36
.LVL57:
.L31:
.LBB57:
	.loc 1 185 13 is_stmt 1
	.loc 1 186 13
	li	a0,1
	call	aos_msleep
.LVL58:
	j	.L30
.L32:
.LBE57:
	.loc 1 196 17
	.loc 1 196 20 is_stmt 0
	mv	s2,a5
.LVL59:
	j	.L33
.L35:
	.loc 1 209 9 is_stmt 1
	.loc 1 210 13
	call	ADC_SET_TSVBE_HIGH
.LVL60:
	j	.L37
	.cfi_endproc
.LFE31:
	.size	test_adc_get, .-test_adc_get
	.section	.text.test_adc_test,"ax",@progbits
	.align	1
	.globl	test_adc_test
	.type	test_adc_test, @function
test_adc_test:
.LFB32:
	.loc 1 219 1
	.cfi_startproc
	.loc 1 220 5
.LBB64:
.LBB65:
	.loc 1 102 5
	.loc 1 103 5
.LBE65:
.LBE64:
	.loc 1 219 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	fsw	fs0,28(sp)
	sw	s7,44(sp)
	sw	s8,40(sp)
	sw	s9,36(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 40, -52
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
.LBB71:
.LBB70:
	.loc 1 103 14
	sw	zero,4(sp)
	.loc 1 104 5 is_stmt 1
.LVL61:
	.loc 1 105 5
	.loc 1 106 5
	.loc 1 108 5
	call	ADC_Reset
.LVL62:
	.loc 1 110 5
	call	ADC_Disable
.LVL63:
	.loc 1 111 5
	call	ADC_Enable
.LVL64:
	.loc 1 113 5
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	call	ADC_Init
.LVL65:
	.loc 1 114 5
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL66:
	.loc 1 115 5
	li	a0,0
	call	ADC_Tsen_Init
.LVL67:
	.loc 1 117 5
	lui	a0,%hi(.LANCHOR1)
	addi	a0,a0,%lo(.LANCHOR1)
	call	ADC_FIFO_Cfg
.LVL68:
	.loc 1 118 5
	call	TSEN_Calibration
.LVL69:
	.loc 1 120 5
	.loc 1 138 23 is_stmt 0
	lui	a5,%hi(.LC6)
	flw	fs0,%lo(.LC6)(a5)
	.loc 1 139 33
	lui	a5,%hi(.LC7)
	lw	s4,%lo(.LC7)(a5)
	lw	s5,%lo(.LC7+4)(a5)
	.loc 1 105 19
	li	s2,0
	.loc 1 105 14
	li	s1,0
	.loc 1 120 10
	li	s0,0
	.loc 1 140 158
	lui	s3,%hi(.LC1)
	lui	s6,%hi(.LC4)
.LVL70:
.L57:
	.loc 1 121 9 is_stmt 1
	call	ADC_Start
.LVL71:
	.loc 1 123 9
.L43:
	.loc 1 123 41
	.loc 1 123 15 is_stmt 0
	call	ADC_Get_FIFO_Count
.LVL72:
	.loc 1 123 14
	beq	a0,zero,.L43
	.loc 1 129 20
	andi	s7,s0,1
.L46:
	.loc 1 125 9 is_stmt 1
	.loc 1 126 13
	.loc 1 126 22 is_stmt 0
	call	ADC_Read_FIFO
.LVL73:
	.loc 1 126 20
	sw	a0,4(sp)
	.loc 1 127 13 is_stmt 1
	addi	a2,sp,8
	li	a1,1
	addi	a0,sp,4
	call	ADC_Parse_Result
.LVL74:
	.loc 1 129 13
	lhu	a5,10(sp)
	.loc 1 129 15 is_stmt 0
	bne	s7,zero,.L44
	.loc 1 130 17 is_stmt 1
	.loc 1 130 20 is_stmt 0
	mv	s1,a5
.LVL75:
.L45:
	.loc 1 134 16
	call	ADC_Get_FIFO_Count
.LVL76:
	.loc 1 134 9
	bne	a0,zero,.L46
	.loc 1 136 9 is_stmt 1
	.loc 1 136 11 is_stmt 0
	beq	s7,zero,.L47
	.loc 1 137 15 is_stmt 1
.LVL77:
	.loc 1 138 15
	.loc 1 139 15
	.loc 1 140 13
	.loc 1 140 51
	.loc 1 140 56
	.loc 1 140 78 is_stmt 0
	lui	s9,%hi(_fsymc_level_hal_drv)
	.loc 1 140 59
	lbu	a4,%lo(_fsymc_level_hal_drv)(s9)
	li	a5,2
	bgtu	a4,a5,.L56
	.loc 1 140 123
	lui	s8,%hi(_fsymf_level_hal_drvbl_adc)
	.loc 1 140 103
	lbu	a4,%lo(_fsymf_level_hal_drvbl_adc)(s8)
	bleu	a4,a5,.L49
.L56:
	.loc 1 142 392 is_stmt 1
	.loc 1 144 9
	.loc 1 147 13
	call	ADC_SET_TSVBE_LOW
.LVL78:
	j	.L58
.LVL79:
.L44:
	.loc 1 132 17
	.loc 1 132 20 is_stmt 0
	mv	s2,a5
.LVL80:
	j	.L45
.LVL81:
.L49:
	.loc 1 140 158 is_stmt 1
.LBB66:
.LBB67:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE67:
.LBE66:
	.loc 1 140 158
	lw	a4,%lo(TrapNetCounter)(a5)
	mv	s7,a5
	beq	a4,zero,.L51
	.loc 1 140 242
	call	xTaskGetTickCountFromISR
.LVL82:
.L52:
	.loc 1 140 158
	mv	a1,a0
	lui	a0,%hi(.LC8)
	mv	a5,s1
	li	a4,140
	mv	a6,s2
	addi	a3,s3,%lo(.LC1)
	addi	a2,s6,%lo(.LC4)
	addi	a0,a0,%lo(.LC8)
	call	bl_printk
.LVL83:
	.loc 1 140 358 is_stmt 1
	.loc 1 142 13
	.loc 1 142 51
	.loc 1 142 56
	.loc 1 142 59 is_stmt 0
	lbu	a4,%lo(_fsymc_level_hal_drv)(s9)
	li	a5,2
	bgtu	a4,a5,.L56
	.loc 1 142 103
	lbu	a4,%lo(_fsymf_level_hal_drvbl_adc)(s8)
	bgtu	a4,a5,.L56
	.loc 1 142 158 is_stmt 1
.LBB68:
.LBB69:
	.loc 2 151 5
.LBE69:
.LBE68:
	.loc 1 142 158 is_stmt 0
	lw	a5,%lo(TrapNetCounter)(s7)
	beq	a5,zero,.L54
	.loc 1 142 262
	call	xTaskGetTickCountFromISR
.LVL84:
.L65:
	.loc 1 137 37
	fcvt.s.wu	fa5,s2
	.loc 1 137 25
	fcvt.s.w	fa0,s1
	.loc 1 142 291
	mv	s7,a0
	.loc 1 137 23
	fsub.s	fa0,fa0,fa5
	.loc 1 139 33
	fsub.s	fa0,fa0,fs0
	call	__extendsfdf2
.LVL85:
	mv	a2,s4
	mv	a3,s5
	call	__divdf3
.LVL86:
	.loc 1 139 23
	call	__truncdfsf2
.LVL87:
	.loc 1 142 158
	fcvt.wu.s a5,fa0,rtz
	lui	a0,%hi(.LC9)
	li	a4,142
	addi	a3,s3,%lo(.LC1)
	addi	a2,s6,%lo(.LC4)
	mv	a1,s7
	addi	a0,a0,%lo(.LC9)
	call	bl_printk
.LVL88:
	j	.L56
.L51:
	.loc 1 140 271
	call	xTaskGetTickCount
.LVL89:
	j	.L52
.L54:
	.loc 1 142 291
	call	xTaskGetTickCount
.LVL90:
	j	.L65
.LVL91:
.L47:
	.loc 1 142 392 is_stmt 1
	.loc 1 144 9
	.loc 1 145 13
	call	ADC_SET_TSVBE_HIGH
.LVL92:
.L58:
	.loc 1 149 9
	li	a0,500
	call	BL602_Delay_MS
.LVL93:
	.loc 1 120 19 is_stmt 0
	addi	s0,s0,1
.LVL94:
	andi	s0,s0,0xff
.LVL95:
	.loc 1 120 5
	li	a5,40
	bne	s0,a5,.L57
.LBE70:
.LBE71:
	.loc 1 222 1
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL96:
	lw	s1,68(sp)
	.cfi_restore 9
.LVL97:
	lw	s2,64(sp)
	.cfi_restore 18
.LVL98:
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s8,40(sp)
	.cfi_restore 24
	lw	s9,36(sp)
	.cfi_restore 25
	flw	fs0,28(sp)
	.cfi_restore 40
	li	a0,0
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	test_adc_test, .-test_adc_test
	.section	.text.bl_tsen_adc_get,"ax",@progbits
	.align	1
	.globl	bl_tsen_adc_get
	.type	bl_tsen_adc_get, @function
bl_tsen_adc_get:
.LFB33:
	.loc 1 225 1 is_stmt 1
	.cfi_startproc
.LVL99:
	.loc 1 226 5
	.loc 1 227 5
	.loc 1 229 5
	.loc 1 225 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s1,68(sp)
	.cfi_offset 9, -12
	.loc 1 229 16
	lui	s1,%hi(.LANCHOR2)
	.loc 1 229 8
	lhu	a4,%lo(.LANCHOR2)(s1)
	li	a5,65536
	.loc 1 225 1
	sw	s0,72(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	ra,76(sp)
	fsw	fs0,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 40, -36
	.loc 1 229 8
	addi	a5,a5,-1
	.loc 1 225 1
	mv	s2,a0
	mv	s3,a1
	addi	s0,s1,%lo(.LANCHOR2)
	.loc 1 229 8
	bne	a4,a5,.L67
.LBB72:
	.loc 1 230 9 is_stmt 1
	.loc 1 231 22 is_stmt 0
	lui	a1,%hi(.LANCHOR3)
.LVL100:
	li	a2,14
	addi	a1,a1,%lo(.LANCHOR3)
	addi	a0,sp,16
.LVL101:
	.loc 1 230 21
	sh	zero,0(s0)
	.loc 1 231 9 is_stmt 1
	.loc 1 231 22 is_stmt 0
	call	memcpy
.LVL102:
	.loc 1 248 9 is_stmt 1
	.loc 1 253 9 is_stmt 0
	li	a2,7
	li	a1,0
	li	a0,1
	.loc 1 248 27
	sh	zero,12(sp)
	.loc 1 253 9 is_stmt 1
	call	GLB_Set_ADC_CLK
.LVL103:
	.loc 1 255 9
	call	ADC_Disable
.LVL104:
	.loc 1 256 9
	call	ADC_Enable
.LVL105:
	.loc 1 258 9
	call	ADC_Reset
.LVL106:
	.loc 1 260 9
	addi	a0,sp,16
	call	ADC_Init
.LVL107:
	.loc 1 261 9
	li	a2,0
	li	a1,23
	li	a0,14
	call	ADC_Channel_Config
.LVL108:
	.loc 1 262 9
	li	a0,0
	call	ADC_Tsen_Init
.LVL109:
	.loc 1 264 9
	addi	a0,sp,12
	call	ADC_FIFO_Cfg
.LVL110:
	.loc 1 266 9
	.loc 1 266 13 is_stmt 0
	addi	a0,s1,%lo(.LANCHOR2)
	call	ADC_Trim_TSEN
.LVL111:
	lui	a5,%hi(TrapNetCounter)
	.loc 1 266 12
	li	a4,1
	lui	s1,%hi(.LC1)
	.loc 1 267 20
	lw	a5,%lo(TrapNetCounter)(a5)
	.loc 1 266 12
	bne	a0,a4,.L68
	.loc 1 267 13 is_stmt 1
	.loc 1 267 18
	.loc 1 267 20
.LBB73:
.LBB74:
	.loc 2 151 5
.LBE74:
.LBE73:
	.loc 1 267 20 is_stmt 0
	beq	a5,zero,.L69
	.loc 1 267 110 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL112:
.L70:
	.loc 1 267 20 discriminator 4
	lui	a2,%hi(.LC2)
	mv	a1,a0
	lui	a0,%hi(.LC10)
	li	a4,267
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC10)
	call	bl_printk
.LVL113:
	.loc 1 267 204 is_stmt 1 discriminator 4
.L67:
.LBE72:
	.loc 1 272 5
	.loc 1 272 11 is_stmt 0
	lhu	a0,0(s0)
	call	TSEN_Get_Temp
.LVL114:
	fmv.s	fs0,fa0
.LVL115:
	.loc 1 273 5 is_stmt 1
	.loc 1 273 8 is_stmt 0
	beq	s3,zero,.L74
	.loc 1 274 9 is_stmt 1
	call	__extendsfdf2
.LVL116:
	mv	a2,a0
	lui	a0,%hi(.LC12)
	mv	a3,a1
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL117:
.L74:
	.loc 1 277 5
	.loc 1 277 8 is_stmt 0
	beq	s2,zero,.L75
	.loc 1 278 9 is_stmt 1
	.loc 1 278 17 is_stmt 0
	fcvt.w.s a5,fs0,rtz
	sh	a5,0(s2)
.L75:
	.loc 1 281 5 is_stmt 1
	.loc 1 282 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
.LVL118:
	lw	s3,60(sp)
	.cfi_restore 19
	flw	fs0,44(sp)
	.cfi_restore 40
.LVL119:
	li	a0,0
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL120:
.L69:
	.cfi_restore_state
.LBB77:
	.loc 1 267 139 discriminator 2
	call	xTaskGetTickCount
.LVL121:
	j	.L70
.L68:
	.loc 1 269 13 is_stmt 1
	.loc 1 269 18
	.loc 1 269 20
.LBB75:
.LBB76:
	.loc 2 151 5
.LBE76:
.LBE75:
	.loc 1 269 20 is_stmt 0
	beq	a5,zero,.L72
	.loc 1 269 99 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL122:
.L73:
	.loc 1 269 20 discriminator 4
	lhu	a5,0(s0)
	mv	a1,a0
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC11)
	li	a4,269
	addi	a3,s1,%lo(.LC1)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC11)
	call	bl_printk
.LVL123:
	.loc 1 269 206 is_stmt 1 discriminator 4
	j	.L67
.L72:
	.loc 1 269 128 is_stmt 0 discriminator 2
	call	xTaskGetTickCount
.LVL124:
	j	.L73
.LBE77:
	.cfi_endproc
.LFE33:
	.size	bl_tsen_adc_get, .-bl_tsen_adc_get
	.section	.text.bl_adc_freq_init,"ax",@progbits
	.align	1
	.globl	bl_adc_freq_init
	.type	bl_adc_freq_init, @function
bl_adc_freq_init:
.LFB35:
	.loc 1 313 1 is_stmt 1
	.cfi_startproc
.LVL125:
	.loc 1 314 5
	.loc 1 315 5
	.loc 1 316 5
	.loc 1 318 5
	.loc 1 313 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 321 19
	li	a4,1
	.loc 1 318 8
	bne	a0,zero,.L84
	li	a4,12
.L84:
.LVL126:
	.loc 1 324 5 is_stmt 1
	.loc 1 324 40 is_stmt 0
	li	a5,4096
	addi	a5,a5,-1024
	mul	a4,a4,a5
.LVL127:
	.loc 1 324 17
	li	a5,96002048
	addi	a5,a5,-2048
	divu	a5,a5,a4
.LVL128:
	.loc 1 325 5 is_stmt 1
	.loc 1 325 9 is_stmt 0
	divu	a2,a5,a1
.LVL129:
	.loc 1 326 5 is_stmt 1
	.loc 1 326 15 is_stmt 0
	addi	a3,a2,1
	.loc 1 326 20
	mul	a4,a3,a1
	.loc 1 326 27
	sub	a4,a4,a5
	.loc 1 326 8
	remu	a5,a5,a1
.LVL130:
	bgeu	a4,a5,.L85
	.loc 1 327 13
	mv	a2,a3
.LVL131:
.L85:
	.loc 1 330 5 is_stmt 1
	.loc 1 334 5
	li	a5,64
	bleu	a2,a5,.L86
	li	a2,64
.LVL132:
.L86:
	addi	a2,a2,-1
	andi	a2,a2,0xff
	li	a1,0
.LVL133:
	li	a0,1
.LVL134:
	call	GLB_Set_ADC_CLK
.LVL135:
	.loc 1 336 5
	.loc 1 337 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE35:
	.size	bl_adc_freq_init, .-bl_adc_freq_init
	.section	.text.bl_adc_dma_init,"ax",@progbits
	.align	1
	.globl	bl_adc_dma_init
	.type	bl_adc_dma_init, @function
bl_adc_dma_init:
.LFB38:
	.loc 1 420 1 is_stmt 1
	.cfi_startproc
.LVL136:
	.loc 1 421 5
	.loc 1 422 5
	.loc 1 423 5
	.loc 1 424 5
	.loc 1 426 5
	.loc 1 420 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 426 8
	bne	a1,zero,.L92
	.loc 1 427 9 is_stmt 1 discriminator 1
	.loc 1 427 47 discriminator 1
	.loc 1 427 52 discriminator 1
	.loc 1 427 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 427 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bleu	a4,a5,.L93
.LVL137:
.L109:
	.loc 1 450 16 discriminator 10
	li	a0,-1
.L91:
	.loc 1 472 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL138:
.L93:
	.cfi_restore_state
	.loc 1 427 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvbl_adc)
	.loc 1 427 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvbl_adc)(a4)
	bgtu	a4,a5,.L109
	.loc 1 427 156 is_stmt 1
.LBB88:
.LBB89:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE89:
.LBE88:
	.loc 1 427 156
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L96
	.loc 1 427 238 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL139:
.L97:
	.loc 1 427 156 discriminator 10
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	mv	a1,a0
	lui	a0,%hi(.LC13)
	li	a4,427
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC13)
.L108:
	.loc 1 448 156 discriminator 10
	call	bl_printk
.LVL140:
	j	.L109
.LVL141:
.L96:
	.loc 1 427 267 discriminator 8
	call	xTaskGetTickCount
.LVL142:
	j	.L97
.LVL143:
.L92:
	mv	s4,a0
	.loc 1 432 14
	li	a0,28
.LVL144:
	mv	s3,a1
	.loc 1 432 5 is_stmt 1
	.loc 1 432 14 is_stmt 0
	call	pvPortMalloc
.LVL145:
	mv	s1,a0
.LVL146:
	.loc 1 433 5 is_stmt 1
	.loc 1 433 8 is_stmt 0
	bne	a0,zero,.L98
	.loc 1 434 9 is_stmt 1 discriminator 1
	.loc 1 434 47 discriminator 1
	.loc 1 434 52 discriminator 1
	.loc 1 434 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 434 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L109
	.loc 1 434 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvbl_adc)
	.loc 1 434 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvbl_adc)(a4)
	bgtu	a4,a5,.L109
	.loc 1 434 156 is_stmt 1
.LBB90:
.LBB91:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE91:
.LBE90:
	.loc 1 434 156
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L99
	.loc 1 434 246 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL147:
.L100:
	.loc 1 434 156 discriminator 10
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	mv	a1,a0
	lui	a0,%hi(.LC14)
	li	a4,434
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC14)
	j	.L108
.L99:
	.loc 1 434 275 discriminator 8
	call	xTaskGetTickCount
.LVL148:
	j	.L100
.L98:
	.loc 1 439 5 is_stmt 1
	.loc 1 439 14 is_stmt 0
	li	a0,32
	call	pvPortMalloc
.LVL149:
	mv	s0,a0
.LVL150:
	.loc 1 440 5 is_stmt 1
	.loc 1 440 8 is_stmt 0
	bne	a0,zero,.L101
	.loc 1 441 9 is_stmt 1 discriminator 1
	.loc 1 441 47 discriminator 1
	.loc 1 441 52 discriminator 1
	.loc 1 441 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 441 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L109
	.loc 1 441 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvbl_adc)
	.loc 1 441 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvbl_adc)(a4)
	bgtu	a4,a5,.L109
	.loc 1 441 156 is_stmt 1
.LBB92:
.LBB93:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE93:
.LBE92:
	.loc 1 441 156
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L102
	.loc 1 441 243 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL151:
.L103:
	.loc 1 441 156 discriminator 10
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	mv	a1,a0
	lui	a0,%hi(.LC15)
	li	a4,441
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC15)
	j	.L108
.L102:
	.loc 1 441 272 discriminator 8
	call	xTaskGetTickCount
.LVL152:
	j	.L103
.L101:
	.loc 1 446 5 is_stmt 1
	.loc 1 446 14 is_stmt 0
	slli	a0,s3,3
	call	pvPortMalloc
.LVL153:
	mv	s5,a0
.LVL154:
	.loc 1 447 5 is_stmt 1
	.loc 1 447 8 is_stmt 0
	bne	a0,zero,.L104
	.loc 1 448 9 is_stmt 1 discriminator 1
	.loc 1 448 47 discriminator 1
	.loc 1 448 52 discriminator 1
	.loc 1 448 75 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hal_drv)
	.loc 1 448 55 discriminator 1
	lbu	a4,%lo(_fsymc_level_hal_drv)(a5)
	li	a5,4
	bgtu	a4,a5,.L109
	.loc 1 448 121 discriminator 3
	lui	a4,%hi(_fsymf_level_hal_drvbl_adc)
	.loc 1 448 100 discriminator 3
	lbu	a4,%lo(_fsymf_level_hal_drvbl_adc)(a4)
	bgtu	a4,a5,.L109
	.loc 1 448 156 is_stmt 1
.LBB94:
.LBB95:
	.loc 2 151 5
	.loc 2 151 31 is_stmt 0
	lui	a5,%hi(TrapNetCounter)
.LBE95:
.LBE94:
	.loc 1 448 156
	lw	a5,%lo(TrapNetCounter)(a5)
	beq	a5,zero,.L105
	.loc 1 448 247 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL155:
.L106:
	.loc 1 448 156 discriminator 10
	lui	a3,%hi(.LC1)
	lui	a2,%hi(.LC2)
	mv	a1,a0
	lui	a0,%hi(.LC16)
	li	a4,448
	addi	a3,a3,%lo(.LC1)
	addi	a2,a2,%lo(.LC2)
	addi	a0,a0,%lo(.LC16)
	j	.L108
.LVL156:
.L105:
	.loc 1 448 276 discriminator 8
	call	xTaskGetTickCount
.LVL157:
	j	.L106
.LVL158:
.L104:
	.loc 1 453 5 is_stmt 1
	.loc 1 454 5
	.loc 1 455 5
	.loc 1 453 16 is_stmt 0
	li	s2,4096
	addi	a5,s2,1538
	.loc 1 456 5
	li	a0,1
.LVL159:
	.loc 1 453 16
	sh	a5,12(sp)
.LBB96:
.LBB97:
	.loc 1 395 31
	addi	s2,s2,-1
.LBE97:
.LBE96:
	.loc 1 455 22
	sb	zero,14(sp)
	.loc 1 456 5 is_stmt 1
	call	DMA_Channel_Disable
.LVL160:
	.loc 1 458 5
.LBB100:
.LBB98:
	.loc 1 393 5
	.loc 1 395 5
	.loc 1 395 31 is_stmt 0
	and	a5,s3,s2
.LVL161:
	.loc 1 396 5 is_stmt 1
	.loc 1 397 5
	.loc 1 398 5
	.loc 1 399 5
	.loc 1 400 5
	.loc 1 401 5
	.loc 1 402 5
	.loc 1 403 5
	.loc 1 404 5
	.loc 1 406 5
	.loc 1 408 35 is_stmt 0
	addi	a4,s0,16
	.loc 1 409 22
	slli	s2,a5,16
	li	a5,33558528
.LVL162:
	addi	a3,a5,-1
	.loc 1 408 23
	sw	a4,8(s0)
	.loc 1 414 22
	lw	a5,28(s0)
	.loc 1 409 22
	lw	a4,12(s0)
	li	a0,-4096
	srli	s2,s2,16
	and	a4,a4,a0
	.loc 1 414 22
	and	a5,a5,a0
	.loc 1 409 22
	or	a4,a4,s2
	.loc 1 414 22
	or	a5,a5,s2
	.loc 1 409 22
	and	a4,a4,a3
	.loc 1 414 22
	and	a5,a5,a3
	.loc 1 409 22
	li	a1,-2008547328
	.loc 1 406 26
	li	a2,1073750016
	addi	a2,a2,4
	.loc 1 409 22
	or	a4,a4,a1
	.loc 1 414 22
	or	a5,a5,a1
	.loc 1 407 27
	sw	s5,4(s0)
	.loc 1 412 39
	addi	s5,s5,48
.LVL163:
	.loc 1 406 26
	sw	a2,0(s0)
	.loc 1 407 5 is_stmt 1
	.loc 1 408 5
	.loc 1 409 5
	.loc 1 411 5
	.loc 1 409 22 is_stmt 0
	sw	a4,12(s0)
	.loc 1 411 26
	sw	a2,16(s0)
	.loc 1 412 5 is_stmt 1
	.loc 1 414 22 is_stmt 0
	sw	a5,28(s0)
.LBE98:
.LBE100:
	.loc 1 459 5
	addi	a1,sp,12
	li	a0,1
.LBB101:
.LBB99:
	.loc 1 412 27
	sw	s5,20(s0)
	.loc 1 413 5 is_stmt 1
	.loc 1 413 23 is_stmt 0
	sw	s0,24(s0)
	.loc 1 414 5 is_stmt 1
	.loc 1 416 5
.LVL164:
.LBE99:
.LBE101:
	.loc 1 459 5
	call	DMA_LLI_Init
.LVL165:
	.loc 1 460 5
	mv	a1,s0
	li	a0,1
	call	DMA_LLI_Update
.LVL166:
	.loc 1 462 5
	.loc 1 469 5 is_stmt 0
	lui	a1,%hi(adc_data_update)
	.loc 1 462 18
	sw	s4,0(s1)
	.loc 1 463 5 is_stmt 1
	.loc 1 463 21 is_stmt 0
	sw	s0,8(s1)
	.loc 1 464 5 is_stmt 1
	.loc 1 464 22 is_stmt 0
	sw	zero,12(s1)
	.loc 1 465 5 is_stmt 1
	.loc 1 465 29 is_stmt 0
	sw	zero,16(s1)
	.loc 1 466 5 is_stmt 1
	.loc 1 466 26 is_stmt 0
	sw	zero,4(s1)
	.loc 1 467 5 is_stmt 1
	.loc 1 467 23 is_stmt 0
	sw	s3,20(s1)
	.loc 1 468 5 is_stmt 1
	.loc 1 468 16 is_stmt 0
	sw	zero,24(s1)
	.loc 1 469 5 is_stmt 1
	mv	a3,s1
	li	a2,0
	addi	a1,a1,%lo(adc_data_update)
	li	a0,1
	call	bl_dma_irq_register
.LVL167:
	.loc 1 471 5
	.loc 1 471 12 is_stmt 0
	li	a0,0
	j	.L91
	.cfi_endproc
.LFE38:
	.size	bl_adc_dma_init, .-bl_adc_dma_init
	.section	.text.bl_adc_start,"ax",@progbits
	.align	1
	.globl	bl_adc_start
	.type	bl_adc_start, @function
bl_adc_start:
.LFB39:
	.loc 1 475 1 is_stmt 1
	.cfi_startproc
	.loc 1 476 5
	.loc 1 475 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 476 5
	li	a2,1
	li	a1,2
	li	a0,1
	.loc 1 475 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 476 5
	call	DMA_IntMask
.LVL168:
	.loc 1 477 5 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,1
	call	DMA_IntMask
.LVL169:
	.loc 1 478 5
	li	a2,0
	li	a1,1
	li	a0,1
	call	DMA_IntMask
.LVL170:
	.loc 1 480 5
	call	ADC_Start
.LVL171:
	.loc 1 481 5
	call	DMA_Enable
.LVL172:
	.loc 1 482 5
	li	a0,1
	call	DMA_Channel_Enable
.LVL173:
	.loc 1 484 5
	.loc 1 485 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE39:
	.size	bl_adc_start, .-bl_adc_start
	.section	.text.bl_adc_gpio_init,"ax",@progbits
	.align	1
	.globl	bl_adc_gpio_init
	.type	bl_adc_gpio_init, @function
bl_adc_gpio_init:
.LFB40:
	.loc 1 488 1 is_stmt 1
	.cfi_startproc
.LVL174:
	.loc 1 489 5
	.loc 1 488 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 489 13
	sb	a0,15(sp)
	.loc 1 491 5 is_stmt 1
	addi	a1,sp,15
	li	a2,1
	li	a0,10
.LVL175:
	.loc 1 488 1 is_stmt 0
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 491 5
	call	GLB_GPIO_Func_Init
.LVL176:
	.loc 1 493 5 is_stmt 1
	.loc 1 494 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE40:
	.size	bl_adc_gpio_init, .-bl_adc_gpio_init
	.section	.text.bl_adc_parse_data,"ax",@progbits
	.align	1
	.globl	bl_adc_parse_data
	.type	bl_adc_parse_data, @function
bl_adc_parse_data:
.LFB42:
	.loc 1 507 1 is_stmt 1
	.cfi_startproc
.LVL177:
	.loc 1 508 5
	.loc 1 509 5
	.loc 1 511 5
	.loc 1 511 12 is_stmt 0
	li	a4,0
.LVL178:
.L115:
	.loc 1 511 5 discriminator 1
	blt	a4,a1,.L119
	.loc 1 524 12
	li	a0,-1
.LVL179:
	.loc 1 525 1
	ret
.LVL180:
.L119:
	.loc 1 512 9 is_stmt 1
	.loc 1 512 17 is_stmt 0
	slli	a5,a4,2
	add	a5,a0,a5
	lw	a5,0(a5)
	.loc 1 512 21
	srli	a6,a5,21
	.loc 1 512 12
	bne	a6,a2,.L116
	.loc 1 513 13 is_stmt 1
	li	a0,65536
.LVL181:
	addi	a0,a0,-1
	.loc 1 513 16 is_stmt 0
	bne	a3,zero,.L117
	.loc 1 514 17 is_stmt 1
	.loc 1 514 22 is_stmt 0
	and	a0,a5,a0
.LVL182:
	.loc 1 515 17 is_stmt 1
	.loc 1 515 24 is_stmt 0
	ret
.LVL183:
.L117:
	.loc 1 517 17 is_stmt 1
.LBB102:
.LBB103:
	.loc 1 498 5
	.loc 1 500 5
	.loc 1 501 5
	.loc 1 500 9 is_stmt 0
	and	a5,a5,a0
.LVL184:
	.loc 1 501 16
	li	a0,4096
	addi	a0,a0,-896
	mul	a5,a5,a0
.LVL185:
	.loc 1 503 5 is_stmt 1
	.loc 1 501 9 is_stmt 0
	srli	a0,a5,16
.LVL186:
.LBE103:
.LBE102:
	.loc 1 519 17 is_stmt 1
	.loc 1 519 24 is_stmt 0
	ret
.LVL187:
.L116:
	.loc 1 511 33 discriminator 2
	addi	a4,a4,1
.LVL188:
	j	.L115
	.cfi_endproc
.LFE42:
	.size	bl_adc_parse_data, .-bl_adc_parse_data
	.section	.text.bl_adc_get_channel_by_gpio,"ax",@progbits
	.align	1
	.globl	bl_adc_get_channel_by_gpio
	.type	bl_adc_get_channel_by_gpio, @function
bl_adc_get_channel_by_gpio:
.LFB43:
	.loc 1 528 1 is_stmt 1
	.cfi_startproc
.LVL189:
	.loc 1 529 5
	.loc 1 531 5
	.loc 1 531 8 is_stmt 0
	li	a5,4
	beq	a0,a5,.L122
	.loc 1 533 12 is_stmt 1
	.loc 1 533 15 is_stmt 0
	li	a4,5
	beq	a0,a4,.L120
	.loc 1 535 12 is_stmt 1
	.loc 1 535 15 is_stmt 0
	li	a4,6
	.loc 1 536 17
	li	a5,5
	.loc 1 535 15
	beq	a0,a4,.L120
	.loc 1 537 12 is_stmt 1
	.loc 1 537 15 is_stmt 0
	li	a4,9
	.loc 1 538 17
	li	a5,7
	.loc 1 537 15
	beq	a0,a4,.L120
	.loc 1 539 12 is_stmt 1
	.loc 1 539 15 is_stmt 0
	li	a4,10
	.loc 1 540 17
	li	a5,9
	.loc 1 539 15
	beq	a0,a4,.L120
	.loc 1 541 12 is_stmt 1
	.loc 1 541 15 is_stmt 0
	li	a4,11
	.loc 1 542 17
	li	a5,10
	.loc 1 541 15
	beq	a0,a4,.L120
	.loc 1 543 12 is_stmt 1
	.loc 1 543 15 is_stmt 0
	li	a4,12
	.loc 1 544 17
	li	a5,0
	.loc 1 543 15
	beq	a0,a4,.L120
	.loc 1 545 12 is_stmt 1
	.loc 1 545 15 is_stmt 0
	li	a4,13
	.loc 1 546 17
	li	a5,3
	.loc 1 545 15
	beq	a0,a4,.L120
.LVL190:
.LBB106:
.LBB107:
	.loc 1 547 12 is_stmt 1
	.loc 1 547 15 is_stmt 0
	li	a4,14
	.loc 1 548 17
	li	a5,2
	.loc 1 547 15
	beq	a0,a4,.L120
	.loc 1 549 12 is_stmt 1
	.loc 1 549 15 is_stmt 0
	li	a4,15
	.loc 1 550 17
	li	a5,11
	.loc 1 549 15
	beq	a0,a4,.L120
	.loc 1 552 16
	li	a5,-1
.LVL191:
.L120:
.LBE107:
.LBE106:
	.loc 1 556 1
	mv	a0,a5
.LVL192:
	ret
.LVL193:
.L122:
	.loc 1 532 17
	li	a5,1
	j	.L120
	.cfi_endproc
.LFE43:
	.size	bl_adc_get_channel_by_gpio, .-bl_adc_get_channel_by_gpio
	.section	.text.bl_adc_init,"ax",@progbits
	.align	1
	.globl	bl_adc_init
	.type	bl_adc_init, @function
bl_adc_init:
.LFB36:
	.loc 1 340 1 is_stmt 1
	.cfi_startproc
.LVL194:
	.loc 1 341 5
	.loc 1 342 5
	.loc 1 343 5
	.loc 1 344 5
	.loc 1 345 5
	.loc 1 346 5
	.loc 1 347 5
	.loc 1 349 5
	.loc 1 350 5
	.loc 1 351 5
	.loc 1 352 5
	.loc 1 353 5
	.loc 1 354 5
	.loc 1 355 5
	.loc 1 356 5
	.loc 1 357 5
	.loc 1 358 5
	.loc 1 359 5
	.loc 1 360 5
	.loc 1 361 5
	.loc 1 349 18 is_stmt 0
	li	a5,393216
	.loc 1 340 1
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	.loc 1 349 18
	addi	a5,a5,258
	sw	a5,48(sp)
	.loc 1 357 16
	li	a5,196608
	.loc 1 340 1
	sw	a1,12(sp)
	sw	ra,76(sp)
	.loc 1 357 16
	sw	a5,56(sp)
	.loc 1 340 1
	sw	s0,72(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 353 17
	sw	zero,52(sp)
	.loc 1 340 1
	mv	s0,a0
	.loc 1 361 26
	sh	zero,60(sp)
	.loc 1 363 5 is_stmt 1
	call	ADC_Disable
.LVL195:
	.loc 1 364 5
	call	ADC_Enable
.LVL196:
	.loc 1 365 5
	call	ADC_Reset
.LVL197:
	.loc 1 367 5
	addi	a0,sp,48
	call	ADC_Init
.LVL198:
	.loc 1 369 5
	.loc 1 369 8 is_stmt 0
	lw	a1,12(sp)
	bne	s0,zero,.L133
	.loc 1 372 34
	li	a3,23
	.loc 1 370 9
	li	a5,12
.LVL199:
.L134:
	.loc 1 371 13 is_stmt 1 discriminator 3
	.loc 1 371 34 is_stmt 0 discriminator 3
	addi	a4,sp,24
	add	a4,a4,s0
	sb	s0,0(a4)
	.loc 1 372 13 is_stmt 1 discriminator 3
	.loc 1 372 34 is_stmt 0 discriminator 3
	addi	a4,sp,36
	add	a4,a4,s0
	sb	a3,0(a4)
	.loc 1 370 30 discriminator 3
	addi	s0,s0,1
.LVL200:
	.loc 1 370 9 discriminator 3
	bne	s0,a5,.L134
.LVL201:
.L135:
	.loc 1 382 5 is_stmt 1
	andi	a2,s0,0xff
	addi	a1,sp,36
	addi	a0,sp,24
	li	a3,1
	call	ADC_Scan_Channel_Config
.LVL202:
	.loc 1 384 5
	.loc 1 385 5
	.loc 1 386 5 is_stmt 0
	addi	a0,sp,20
	.loc 1 384 32
	li	a5,256
	sh	a5,20(sp)
	.loc 1 386 5 is_stmt 1
	call	ADC_FIFO_Cfg
.LVL203:
	.loc 1 388 5
	.loc 1 389 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
.LVL204:
	li	a0,0
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
.LVL205:
	jr	ra
.LVL206:
.L133:
	.cfi_restore_state
	.loc 1 377 9 is_stmt 1
	.loc 1 377 16 is_stmt 0
	mv	a0,a1
	call	bl_adc_get_channel_by_gpio
.LVL207:
	.loc 1 378 9 is_stmt 1
	.loc 1 379 30 is_stmt 0
	li	a5,23
	.loc 1 378 30
	sb	a0,24(sp)
	.loc 1 379 9 is_stmt 1
	.loc 1 379 30 is_stmt 0
	sb	a5,36(sp)
	.loc 1 380 9 is_stmt 1
.LVL208:
	.loc 1 380 21 is_stmt 0
	li	s0,1
.LVL209:
	j	.L135
	.cfi_endproc
.LFE36:
	.size	bl_adc_init, .-bl_adc_init
	.globl	adcFifoCfg
	.globl	adcCfg
	.globl	_fsymf_info_hal_drvbl_adc
	.comm	_fsymf_level_hal_drvbl_adc,1,1
	.comm	_fsymc_level_hal_drv,1,1
	.section	.rodata
	.align	2
	.set	.LANCHOR3,. + 0
.LC0:
	.byte	2
	.byte	1
	.byte	7
	.byte	1
	.byte	1
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.half	0
	.section	.data.adcCfg,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	adcCfg, @object
	.size	adcCfg, 14
adcCfg:
	.byte	2
	.byte	1
	.byte	4
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	4
	.byte	0
	.half	0
	.section	.rodata.ADC_Clock_Init.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"\033[32mINFO  \033[0m"
.LC5:
	.string	"[%10u][%s: %s:%4d] GLB_Set_ADC_CLK_Div(%d) == clock 96M/(%d+1)\r\n"
	.section	.rodata.adc_data_update.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"bl_adc.c"
	.zero	3
.LC2:
	.string	"\033[31mERROR \033[0m"
.LC3:
	.string	"[%10u][%s: %s:%4d] get ctx error \r\n"
	.section	.rodata.bl_adc_dma_init.str1.4,"aMS",@progbits,1
	.align	2
.LC13:
	.string	"[%10u][%s: %s:%4d] illegal para. \r\n"
.LC14:
	.string	"[%10u][%s: %s:%4d] malloc adc_ctx failed \r\n"
.LC15:
	.string	"[%10u][%s: %s:%4d] malloc lli failed. \r\n"
	.zero	3
.LC16:
	.string	"[%10u][%s: %s:%4d] malloc lli buf failed. \r\n"
	.section	.rodata.bl_tsen_adc_get.str1.4,"aMS",@progbits,1
	.align	2
.LC10:
	.string	"[%10u][%s: %s:%4d] read efuse data failed\r\n"
.LC11:
	.string	"[%10u][%s: %s:%4d] offset = %d\r\n"
	.zero	3
.LC12:
	.string	"temperature = %f Celsius\r\n"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC17:
	.string	"hal_drv.bl_adc"
	.zero	1
.LC18:
	.string	"hal_drv"
	.section	.rodata.test_adc_get.cst4,"aM",@progbits,4
	.align	2
.LC6:
	.word	1158733824
	.section	.rodata.test_adc_get.cst8,"aM",@progbits,8
	.align	3
.LC7:
	.word	1855425872
	.word	1075774226
	.section	.rodata.test_adc_test.str1.4,"aMS",@progbits,1
	.align	2
.LC8:
	.string	"[%10u][%s: %s:%4d]  v0=%ld  v1 = %ld \n"
	.zero	1
.LC9:
	.string	"[%10u][%s: %s:%4d]  chip Tempture = %ld degree centigrade\n"
	.section	.sbss.adcFifoCfg,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	adcFifoCfg, @object
	.size	adcFifoCfg, 2
adcFifoCfg:
	.zero	2
	.section	.sdata.tsen_offset.8871,"aw"
	.align	1
	.set	.LANCHOR2,. + 0
	.type	tsen_offset.8871, @object
	.size	tsen_offset.8871, 2
tsen_offset.8871:
	.half	-1
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
	.word	.LC18
	.section	.static_blogfile_code.hal_drvbl_adc,"a"
	.align	2
	.type	_fsymf_info_hal_drvbl_adc, @object
	.size	_fsymf_info_hal_drvbl_adc, 8
_fsymf_info_hal_drvbl_adc:
	.word	_fsymf_level_hal_drvbl_adc
	.word	.LC17
	.text
.Letext0:
	.file 3 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 5 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/_types.h"
	.file 6 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/reent.h"
	.file 7 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/lock.h"
	.file 8 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 9 "/Users/Sven/bl_iot_sdk/components/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/system_bl602.h"
	.file 10 "/Users/Sven/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 11 "/Users/Sven/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 12 "/Users/Sven/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 13 "/Users/Sven/bl_iot_sdk/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 14 "/Users/Sven/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 15 "/Users/Sven/bl_iot_sdk/components/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 16 "/Users/Sven/bl_iot_sdk/components/stage/blog/blog_type.h"
	.file 17 "/Users/Sven/bl_iot_sdk/components/stage/blog/blog.h"
	.file 18 "/Users/Sven/bl_iot_sdk/components/hal_drv/bl602_hal/bl_adc.h"
	.file 19 "/Users/Sven/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/task.h"
	.file 20 "/Users/Sven/bl_iot_sdk/components/utils/include/utils_log.h"
	.file 21 "/Users/Sven/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/portable.h"
	.file 22 "/Users/Sven/bl_iot_sdk/components/hal_drv/bl602_hal/bl_dma.h"
	.file 23 "/Users/Sven/bl_iot_sdk/toolchain/riscv/Darwin/riscv64-unknown-elf/include/stdio.h"
	.file 24 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2331
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF409
	.byte	0xc
	.4byte	.LASF410
	.4byte	.LASF411
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0x29
	.byte	0x15
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x4
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x60
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x3
	.byte	0x37
	.byte	0x13
	.4byte	0x73
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x39
	.byte	0x1c
	.4byte	0x86
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x99
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF12
	.byte	0x4
	.4byte	.LASF13
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0xac
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF15
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.byte	0x5
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x165
	.byte	0x16
	.4byte	0x3a
	.byte	0x4
	.4byte	.LASF18
	.byte	0x5
	.byte	0x2e
	.byte	0xe
	.4byte	0x99
	.byte	0x4
	.4byte	.LASF19
	.byte	0x5
	.byte	0x74
	.byte	0xe
	.4byte	0x99
	.byte	0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0x93
	.byte	0x14
	.4byte	0x33
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.4byte	0x114
	.byte	0x7
	.4byte	.LASF21
	.byte	0x5
	.byte	0xa7
	.byte	0xc
	.4byte	0xc1
	.byte	0x7
	.4byte	.LASF22
	.byte	0x5
	.byte	0xa8
	.byte	0x13
	.4byte	0x114
	.byte	0
	.byte	0x8
	.4byte	0x60
	.4byte	0x124
	.byte	0x9
	.4byte	0x3a
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa2
	.byte	0x9
	.4byte	0x148
	.byte	0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0xa4
	.byte	0x7
	.4byte	0x33
	.byte	0
	.byte	0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.4byte	0xf2
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF25
	.byte	0x5
	.byte	0xaa
	.byte	0x3
	.4byte	0x124
	.byte	0xc
	.byte	0x4
	.byte	0x4
	.4byte	.LASF26
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0xac
	.byte	0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0xc
	.byte	0xd
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF28
	.byte	0x6
	.byte	0x23
	.byte	0x1b
	.4byte	0x162
	.byte	0xd
	.4byte	.LASF33
	.byte	0x18
	.byte	0x6
	.byte	0x34
	.byte	0x8
	.4byte	0x1d4
	.byte	0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x36
	.byte	0x13
	.4byte	0x1d4
	.byte	0
	.byte	0xe
	.string	"_k"
	.byte	0x6
	.byte	0x37
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.byte	0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x37
	.byte	0xb
	.4byte	0x33
	.byte	0x8
	.byte	0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x33
	.byte	0xc
	.byte	0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x37
	.byte	0x1b
	.4byte	0x33
	.byte	0x10
	.byte	0xe
	.string	"_x"
	.byte	0x6
	.byte	0x38
	.byte	0xb
	.4byte	0x1da
	.byte	0x14
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x17a
	.byte	0x8
	.4byte	0x156
	.4byte	0x1ea
	.byte	0x9
	.4byte	0x3a
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF34
	.byte	0x24
	.byte	0x6
	.byte	0x3c
	.byte	0x8
	.4byte	0x26d
	.byte	0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x3e
	.byte	0x7
	.4byte	0x33
	.byte	0
	.byte	0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x3f
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.byte	0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x40
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.byte	0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x41
	.byte	0x7
	.4byte	0x33
	.byte	0xc
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x42
	.byte	0x7
	.4byte	0x33
	.byte	0x10
	.byte	0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x43
	.byte	0x7
	.4byte	0x33
	.byte	0x14
	.byte	0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x44
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.byte	0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x45
	.byte	0x7
	.4byte	0x33
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x46
	.byte	0x7
	.4byte	0x33
	.byte	0x20
	.byte	0
	.byte	0x10
	.4byte	.LASF44
	.2byte	0x108
	.byte	0x6
	.byte	0x4f
	.byte	0x8
	.4byte	0x2b2
	.byte	0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x50
	.byte	0x9
	.4byte	0x2b2
	.byte	0
	.byte	0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x51
	.byte	0x9
	.4byte	0x2b2
	.byte	0x80
	.byte	0x11
	.4byte	.LASF47
	.byte	0x6
	.byte	0x53
	.byte	0xa
	.4byte	0x156
	.2byte	0x100
	.byte	0x11
	.4byte	.LASF48
	.byte	0x6
	.byte	0x56
	.byte	0xa
	.4byte	0x156
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x154
	.4byte	0x2c2
	.byte	0x9
	.4byte	0x3a
	.byte	0x1f
	.byte	0
	.byte	0x10
	.4byte	.LASF49
	.2byte	0x190
	.byte	0x6
	.byte	0x62
	.byte	0x8
	.4byte	0x305
	.byte	0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x63
	.byte	0x12
	.4byte	0x305
	.byte	0
	.byte	0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x64
	.byte	0x6
	.4byte	0x33
	.byte	0x4
	.byte	0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x66
	.byte	0x9
	.4byte	0x30b
	.byte	0x8
	.byte	0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x67
	.byte	0x1e
	.4byte	0x26d
	.byte	0x88
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x2c2
	.byte	0x8
	.4byte	0x31b
	.4byte	0x31b
	.byte	0x9
	.4byte	0x3a
	.byte	0x1f
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x321
	.byte	0x12
	.byte	0xd
	.4byte	.LASF52
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0x8
	.4byte	0x34a
	.byte	0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0x7b
	.byte	0x11
	.4byte	0x34a
	.byte	0
	.byte	0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0x7c
	.byte	0x6
	.4byte	0x33
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x60
	.byte	0xd
	.4byte	.LASF55
	.byte	0x68
	.byte	0x6
	.byte	0xba
	.byte	0x8
	.4byte	0x493
	.byte	0xe
	.string	"_p"
	.byte	0x6
	.byte	0xbb
	.byte	0x12
	.4byte	0x34a
	.byte	0
	.byte	0xe
	.string	"_r"
	.byte	0x6
	.byte	0xbc
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.byte	0xe
	.string	"_w"
	.byte	0x6
	.byte	0xbd
	.byte	0x7
	.4byte	0x33
	.byte	0x8
	.byte	0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x73
	.byte	0xc
	.byte	0xb
	.4byte	.LASF57
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x73
	.byte	0xe
	.byte	0xe
	.string	"_bf"
	.byte	0x6
	.byte	0xc0
	.byte	0x11
	.4byte	0x322
	.byte	0x10
	.byte	0xb
	.4byte	.LASF58
	.byte	0x6
	.byte	0xc1
	.byte	0x7
	.4byte	0x33
	.byte	0x18
	.byte	0xb
	.4byte	.LASF59
	.byte	0x6
	.byte	0xc8
	.byte	0xa
	.4byte	0x154
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF60
	.byte	0x6
	.byte	0xca
	.byte	0xe
	.4byte	0x617
	.byte	0x20
	.byte	0xb
	.4byte	.LASF61
	.byte	0x6
	.byte	0xcc
	.byte	0xe
	.4byte	0x641
	.byte	0x24
	.byte	0xb
	.4byte	.LASF62
	.byte	0x6
	.byte	0xcf
	.byte	0xd
	.4byte	0x665
	.byte	0x28
	.byte	0xb
	.4byte	.LASF63
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0x67f
	.byte	0x2c
	.byte	0xe
	.string	"_ub"
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0x322
	.byte	0x30
	.byte	0xe
	.string	"_up"
	.byte	0x6
	.byte	0xd4
	.byte	0x12
	.4byte	0x34a
	.byte	0x38
	.byte	0xe
	.string	"_ur"
	.byte	0x6
	.byte	0xd5
	.byte	0x7
	.4byte	0x33
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF64
	.byte	0x6
	.byte	0xd8
	.byte	0x11
	.4byte	0x685
	.byte	0x40
	.byte	0xb
	.4byte	.LASF65
	.byte	0x6
	.byte	0xd9
	.byte	0x11
	.4byte	0x695
	.byte	0x43
	.byte	0xe
	.string	"_lb"
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0x322
	.byte	0x44
	.byte	0xb
	.4byte	.LASF66
	.byte	0x6
	.byte	0xdf
	.byte	0x7
	.4byte	0x33
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF67
	.byte	0x6
	.byte	0xe0
	.byte	0xa
	.4byte	0xce
	.byte	0x50
	.byte	0xb
	.4byte	.LASF68
	.byte	0x6
	.byte	0xe3
	.byte	0x12
	.4byte	0x4b1
	.byte	0x54
	.byte	0xb
	.4byte	.LASF69
	.byte	0x6
	.byte	0xe7
	.byte	0xc
	.4byte	0x16e
	.byte	0x58
	.byte	0xb
	.4byte	.LASF70
	.byte	0x6
	.byte	0xe9
	.byte	0xe
	.4byte	0x148
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF71
	.byte	0x6
	.byte	0xea
	.byte	0x7
	.4byte	0x33
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	0xe6
	.4byte	0x4b1
	.byte	0x14
	.4byte	0x4b1
	.byte	0x14
	.4byte	0x154
	.byte	0x14
	.4byte	0x605
	.byte	0x14
	.4byte	0x33
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x4bc
	.byte	0x15
	.4byte	0x4b1
	.byte	0x16
	.4byte	.LASF72
	.2byte	0x428
	.byte	0x6
	.2byte	0x265
	.byte	0x8
	.4byte	0x605
	.byte	0x17
	.4byte	.LASF73
	.byte	0x6
	.2byte	0x267
	.byte	0x7
	.4byte	0x33
	.byte	0
	.byte	0x17
	.4byte	.LASF74
	.byte	0x6
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6f1
	.byte	0x4
	.byte	0x17
	.4byte	.LASF75
	.byte	0x6
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6f1
	.byte	0x8
	.byte	0x17
	.4byte	.LASF76
	.byte	0x6
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6f1
	.byte	0xc
	.byte	0x17
	.4byte	.LASF77
	.byte	0x6
	.2byte	0x26e
	.byte	0x7
	.4byte	0x33
	.byte	0x10
	.byte	0x17
	.4byte	.LASF78
	.byte	0x6
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8f1
	.byte	0x14
	.byte	0x17
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x272
	.byte	0x7
	.4byte	0x33
	.byte	0x30
	.byte	0x17
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x273
	.byte	0x16
	.4byte	0x906
	.byte	0x34
	.byte	0x17
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x275
	.byte	0x7
	.4byte	0x33
	.byte	0x38
	.byte	0x17
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x277
	.byte	0xa
	.4byte	0x917
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF83
	.byte	0x6
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1d4
	.byte	0x40
	.byte	0x17
	.4byte	.LASF84
	.byte	0x6
	.2byte	0x27b
	.byte	0x7
	.4byte	0x33
	.byte	0x44
	.byte	0x17
	.4byte	.LASF85
	.byte	0x6
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1d4
	.byte	0x48
	.byte	0x17
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x27d
	.byte	0x14
	.4byte	0x91d
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x280
	.byte	0x7
	.4byte	0x33
	.byte	0x50
	.byte	0x17
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x281
	.byte	0x9
	.4byte	0x605
	.byte	0x54
	.byte	0x17
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x8cc
	.byte	0x58
	.byte	0x18
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x305
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x2c2
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x92e
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x6b2
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x93a
	.2byte	0x2ec
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x60b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF94
	.byte	0x15
	.4byte	0x60b
	.byte	0xf
	.byte	0x4
	.4byte	0x493
	.byte	0x13
	.4byte	0xe6
	.4byte	0x63b
	.byte	0x14
	.4byte	0x4b1
	.byte	0x14
	.4byte	0x154
	.byte	0x14
	.4byte	0x63b
	.byte	0x14
	.4byte	0x33
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x612
	.byte	0xf
	.byte	0x4
	.4byte	0x61d
	.byte	0x13
	.4byte	0xda
	.4byte	0x665
	.byte	0x14
	.4byte	0x4b1
	.byte	0x14
	.4byte	0x154
	.byte	0x14
	.4byte	0xda
	.byte	0x14
	.4byte	0x33
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x647
	.byte	0x13
	.4byte	0x33
	.4byte	0x67f
	.byte	0x14
	.4byte	0x4b1
	.byte	0x14
	.4byte	0x154
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x66b
	.byte	0x8
	.4byte	0x60
	.4byte	0x695
	.byte	0x9
	.4byte	0x3a
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x60
	.4byte	0x6a5
	.byte	0x9
	.4byte	0x3a
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x124
	.byte	0x18
	.4byte	0x350
	.byte	0x19
	.4byte	.LASF96
	.byte	0xc
	.byte	0x6
	.2byte	0x128
	.byte	0x8
	.4byte	0x6eb
	.byte	0x17
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6eb
	.byte	0
	.byte	0x17
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x12b
	.byte	0x7
	.4byte	0x33
	.byte	0x4
	.byte	0x17
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6f1
	.byte	0x8
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x6b2
	.byte	0xf
	.byte	0x4
	.4byte	0x6a5
	.byte	0x19
	.4byte	.LASF99
	.byte	0xe
	.byte	0x6
	.2byte	0x144
	.byte	0x8
	.4byte	0x730
	.byte	0x17
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x145
	.byte	0x12
	.4byte	0x730
	.byte	0
	.byte	0x17
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x146
	.byte	0x12
	.4byte	0x730
	.byte	0x6
	.byte	0x17
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x147
	.byte	0x12
	.4byte	0x86
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x86
	.4byte	0x740
	.byte	0x9
	.4byte	0x3a
	.byte	0x2
	.byte	0
	.byte	0x1a
	.byte	0xd0
	.byte	0x6
	.2byte	0x285
	.byte	0x7
	.4byte	0x855
	.byte	0x17
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x287
	.byte	0x18
	.4byte	0x3a
	.byte	0
	.byte	0x17
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x288
	.byte	0x12
	.4byte	0x605
	.byte	0x4
	.byte	0x17
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x289
	.byte	0x10
	.4byte	0x855
	.byte	0x8
	.byte	0x17
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1ea
	.byte	0x24
	.byte	0x17
	.4byte	.LASF107
	.byte	0x6
	.2byte	0x28b
	.byte	0xf
	.4byte	0x33
	.byte	0x48
	.byte	0x17
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x28c
	.byte	0x2c
	.4byte	0xba
	.byte	0x50
	.byte	0x17
	.4byte	.LASF109
	.byte	0x6
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6f7
	.byte	0x58
	.byte	0x17
	.4byte	.LASF110
	.byte	0x6
	.2byte	0x28e
	.byte	0x16
	.4byte	0x148
	.byte	0x68
	.byte	0x17
	.4byte	.LASF111
	.byte	0x6
	.2byte	0x28f
	.byte	0x16
	.4byte	0x148
	.byte	0x70
	.byte	0x17
	.4byte	.LASF112
	.byte	0x6
	.2byte	0x290
	.byte	0x16
	.4byte	0x148
	.byte	0x78
	.byte	0x17
	.4byte	.LASF113
	.byte	0x6
	.2byte	0x291
	.byte	0x10
	.4byte	0x865
	.byte	0x80
	.byte	0x17
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x292
	.byte	0x10
	.4byte	0x875
	.byte	0x88
	.byte	0x17
	.4byte	.LASF115
	.byte	0x6
	.2byte	0x293
	.byte	0xf
	.4byte	0x33
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF116
	.byte	0x6
	.2byte	0x294
	.byte	0x16
	.4byte	0x148
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF117
	.byte	0x6
	.2byte	0x295
	.byte	0x16
	.4byte	0x148
	.byte	0xac
	.byte	0x17
	.4byte	.LASF118
	.byte	0x6
	.2byte	0x296
	.byte	0x16
	.4byte	0x148
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF119
	.byte	0x6
	.2byte	0x297
	.byte	0x16
	.4byte	0x148
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF120
	.byte	0x6
	.2byte	0x298
	.byte	0x16
	.4byte	0x148
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF121
	.byte	0x6
	.2byte	0x299
	.byte	0x8
	.4byte	0x33
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x60b
	.4byte	0x865
	.byte	0x9
	.4byte	0x3a
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x60b
	.4byte	0x875
	.byte	0x9
	.4byte	0x3a
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x60b
	.4byte	0x885
	.byte	0x9
	.4byte	0x3a
	.byte	0x17
	.byte	0
	.byte	0x1a
	.byte	0xf0
	.byte	0x6
	.2byte	0x29e
	.byte	0x7
	.4byte	0x8ac
	.byte	0x17
	.4byte	.LASF122
	.byte	0x6
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x8ac
	.byte	0
	.byte	0x17
	.4byte	.LASF123
	.byte	0x6
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x8bc
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x34a
	.4byte	0x8bc
	.byte	0x9
	.4byte	0x3a
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x3a
	.4byte	0x8cc
	.byte	0x9
	.4byte	0x3a
	.byte	0x1d
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x6
	.2byte	0x283
	.byte	0x3
	.4byte	0x8f1
	.byte	0x1c
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x29a
	.byte	0xb
	.4byte	0x740
	.byte	0x1c
	.4byte	.LASF124
	.byte	0x6
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x885
	.byte	0
	.byte	0x8
	.4byte	0x60b
	.4byte	0x901
	.byte	0x9
	.4byte	0x3a
	.byte	0x18
	.byte	0
	.byte	0x1d
	.4byte	.LASF412
	.byte	0xf
	.byte	0x4
	.4byte	0x901
	.byte	0x1e
	.4byte	0x917
	.byte	0x14
	.4byte	0x4b1
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x90c
	.byte	0xf
	.byte	0x4
	.4byte	0x1d4
	.byte	0x1e
	.4byte	0x92e
	.byte	0x14
	.4byte	0x33
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x934
	.byte	0xf
	.byte	0x4
	.4byte	0x923
	.byte	0x8
	.4byte	0x6a5
	.4byte	0x94a
	.byte	0x9
	.4byte	0x3a
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF125
	.byte	0x6
	.2byte	0x333
	.byte	0x17
	.4byte	0x4b1
	.byte	0x1f
	.4byte	.LASF126
	.byte	0x6
	.2byte	0x334
	.byte	0x1d
	.4byte	0x4b7
	.byte	0x4
	.4byte	.LASF127
	.byte	0x8
	.byte	0x14
	.byte	0x12
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF128
	.byte	0x8
	.byte	0x18
	.byte	0x13
	.4byte	0x54
	.byte	0x4
	.4byte	.LASF129
	.byte	0x8
	.byte	0x20
	.byte	0x13
	.4byte	0x67
	.byte	0x4
	.4byte	.LASF130
	.byte	0x8
	.byte	0x24
	.byte	0x14
	.4byte	0x7a
	.byte	0x4
	.4byte	.LASF131
	.byte	0x8
	.byte	0x2c
	.byte	0x13
	.4byte	0x8d
	.byte	0x4
	.4byte	.LASF132
	.byte	0x8
	.byte	0x30
	.byte	0x14
	.4byte	0xa0
	.byte	0x15
	.4byte	0x9a0
	.byte	0x20
	.4byte	.LASF133
	.byte	0x9
	.byte	0x8
	.byte	0x11
	.4byte	0x9a0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xa
	.byte	0x17
	.byte	0x1
	.4byte	0x9de
	.byte	0x22
	.4byte	.LASF134
	.byte	0
	.byte	0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0x22
	.4byte	.LASF136
	.byte	0x2
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xa
	.byte	0x21
	.byte	0x1
	.4byte	0x9f9
	.byte	0x22
	.4byte	.LASF137
	.byte	0
	.byte	0x22
	.4byte	.LASF138
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF139
	.byte	0xa
	.byte	0x24
	.byte	0x2
	.4byte	0x9de
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xa
	.byte	0x33
	.byte	0x1
	.4byte	0xa20
	.byte	0x22
	.4byte	.LASF140
	.byte	0
	.byte	0x22
	.4byte	.LASF141
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF142
	.byte	0xa
	.byte	0x7c
	.byte	0xf
	.4byte	0x321
	.byte	0x8
	.4byte	0xa37
	.4byte	0xa37
	.byte	0x23
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0xa3d
	.byte	0xf
	.byte	0x4
	.4byte	0xa20
	.byte	0x20
	.4byte	.LASF143
	.byte	0xa
	.byte	0x84
	.byte	0x1c
	.4byte	0xa2c
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xb
	.byte	0x4c
	.byte	0x1
	.4byte	0xa9a
	.byte	0x22
	.4byte	.LASF144
	.byte	0x1
	.byte	0x22
	.4byte	.LASF145
	.byte	0x2
	.byte	0x22
	.4byte	.LASF146
	.byte	0x4
	.byte	0x22
	.4byte	.LASF147
	.byte	0x6
	.byte	0x22
	.4byte	.LASF148
	.byte	0x7
	.byte	0x22
	.4byte	.LASF149
	.byte	0x8
	.byte	0x22
	.4byte	.LASF150
	.byte	0x9
	.byte	0x22
	.4byte	.LASF151
	.byte	0xa
	.byte	0x22
	.4byte	.LASF152
	.byte	0xb
	.byte	0x22
	.4byte	.LASF153
	.byte	0xe
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xc
	.byte	0xbf
	.byte	0xe
	.4byte	0xab5
	.byte	0x22
	.4byte	.LASF154
	.byte	0
	.byte	0x22
	.4byte	.LASF155
	.byte	0x1
	.byte	0
	.byte	0x19
	.4byte	.LASF156
	.byte	0x4
	.byte	0xd
	.2byte	0x4a0
	.byte	0x10
	.4byte	0xb7b
	.byte	0x24
	.4byte	.LASF157
	.byte	0xd
	.2byte	0x4a1
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0x24
	.4byte	.LASF158
	.byte	0xd
	.2byte	0x4a2
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.byte	0x24
	.4byte	.LASF159
	.byte	0xd
	.2byte	0x4a3
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0x24
	.4byte	.LASF160
	.byte	0xd
	.2byte	0x4a4
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.byte	0x24
	.4byte	.LASF161
	.byte	0xd
	.2byte	0x4a5
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0x24
	.4byte	.LASF162
	.byte	0xd
	.2byte	0x4a6
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x24
	.4byte	.LASF163
	.byte	0xd
	.2byte	0x4a7
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0x25
	.string	"SI"
	.byte	0xd
	.2byte	0x4a8
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0x25
	.string	"DI"
	.byte	0xd
	.2byte	0x4a9
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x24
	.4byte	.LASF164
	.byte	0xd
	.2byte	0x4aa
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.byte	0x25
	.string	"I"
	.byte	0xd
	.2byte	0x4ab
	.byte	0x16
	.4byte	0x9a0
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x49
	.byte	0xe
	.4byte	0xb9c
	.byte	0x22
	.4byte	.LASF165
	.byte	0
	.byte	0x22
	.4byte	.LASF166
	.byte	0x1
	.byte	0x22
	.4byte	.LASF167
	.byte	0x2
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x52
	.byte	0xe
	.4byte	0xbc3
	.byte	0x22
	.4byte	.LASF168
	.byte	0
	.byte	0x22
	.4byte	.LASF169
	.byte	0x1
	.byte	0x22
	.4byte	.LASF170
	.byte	0x2
	.byte	0x22
	.4byte	.LASF171
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF172
	.byte	0xe
	.byte	0x57
	.byte	0x2
	.4byte	0xb9c
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x5c
	.byte	0xe
	.4byte	0xbf6
	.byte	0x22
	.4byte	.LASF173
	.byte	0
	.byte	0x22
	.4byte	.LASF174
	.byte	0x1
	.byte	0x22
	.4byte	.LASF175
	.byte	0x2
	.byte	0x22
	.4byte	.LASF176
	.byte	0x3
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x66
	.byte	0xe
	.4byte	0xc47
	.byte	0x22
	.4byte	.LASF177
	.byte	0
	.byte	0x22
	.4byte	.LASF178
	.byte	0x1
	.byte	0x22
	.4byte	.LASF179
	.byte	0x2
	.byte	0x22
	.4byte	.LASF180
	.byte	0x3
	.byte	0x22
	.4byte	.LASF181
	.byte	0x6
	.byte	0x22
	.4byte	.LASF182
	.byte	0x7
	.byte	0x22
	.4byte	.LASF183
	.byte	0xa
	.byte	0x22
	.4byte	.LASF184
	.byte	0xb
	.byte	0x22
	.4byte	.LASF185
	.byte	0x16
	.byte	0x22
	.4byte	.LASF186
	.byte	0x17
	.byte	0x22
	.4byte	.LASF187
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF188
	.byte	0xe
	.byte	0x72
	.byte	0x2
	.4byte	0xbf6
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xe
	.byte	0x82
	.byte	0xe
	.4byte	0xc74
	.byte	0x22
	.4byte	.LASF189
	.byte	0
	.byte	0x22
	.4byte	.LASF190
	.byte	0x1
	.byte	0x22
	.4byte	.LASF191
	.byte	0x2
	.byte	0
	.byte	0xa
	.byte	0x10
	.byte	0xe
	.byte	0xb0
	.byte	0x9
	.4byte	0xcb2
	.byte	0xb
	.4byte	.LASF192
	.byte	0xe
	.byte	0xb1
	.byte	0xe
	.4byte	0x9a0
	.byte	0
	.byte	0xb
	.4byte	.LASF193
	.byte	0xe
	.byte	0xb2
	.byte	0xe
	.4byte	0x9a0
	.byte	0x4
	.byte	0xb
	.4byte	.LASF194
	.byte	0xe
	.byte	0xb3
	.byte	0xe
	.4byte	0x9a0
	.byte	0x8
	.byte	0xb
	.4byte	.LASF195
	.byte	0xe
	.byte	0xb4
	.byte	0x1c
	.4byte	0xab5
	.byte	0xc
	.byte	0
	.byte	0x4
	.4byte	.LASF196
	.byte	0xe
	.byte	0xb5
	.byte	0x2
	.4byte	0xc74
	.byte	0xa
	.byte	0x3
	.byte	0xe
	.byte	0xba
	.byte	0x9
	.4byte	0xcef
	.byte	0xe
	.string	"dir"
	.byte	0xe
	.byte	0xbb
	.byte	0x18
	.4byte	0xbc3
	.byte	0
	.byte	0xb
	.4byte	.LASF197
	.byte	0xe
	.byte	0xbc
	.byte	0x19
	.4byte	0xc47
	.byte	0x1
	.byte	0xb
	.4byte	.LASF198
	.byte	0xe
	.byte	0xbd
	.byte	0x19
	.4byte	0xc47
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF199
	.byte	0xe
	.byte	0xbe
	.byte	0x2
	.4byte	0xcbe
	.byte	0xf
	.byte	0x4
	.4byte	0xcb2
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0x3a
	.byte	0xe
	.4byte	0xda0
	.byte	0x22
	.4byte	.LASF200
	.byte	0
	.byte	0x22
	.4byte	.LASF201
	.byte	0x1
	.byte	0x22
	.4byte	.LASF202
	.byte	0x2
	.byte	0x22
	.4byte	.LASF203
	.byte	0x3
	.byte	0x22
	.4byte	.LASF204
	.byte	0x4
	.byte	0x22
	.4byte	.LASF205
	.byte	0x5
	.byte	0x22
	.4byte	.LASF206
	.byte	0x6
	.byte	0x22
	.4byte	.LASF207
	.byte	0x7
	.byte	0x22
	.4byte	.LASF208
	.byte	0x8
	.byte	0x22
	.4byte	.LASF209
	.byte	0x9
	.byte	0x22
	.4byte	.LASF210
	.byte	0xa
	.byte	0x22
	.4byte	.LASF211
	.byte	0xb
	.byte	0x22
	.4byte	.LASF212
	.byte	0xc
	.byte	0x22
	.4byte	.LASF213
	.byte	0xd
	.byte	0x22
	.4byte	.LASF214
	.byte	0xe
	.byte	0x22
	.4byte	.LASF215
	.byte	0xf
	.byte	0x22
	.4byte	.LASF216
	.byte	0x10
	.byte	0x22
	.4byte	.LASF217
	.byte	0x11
	.byte	0x22
	.4byte	.LASF218
	.byte	0x12
	.byte	0x22
	.4byte	.LASF219
	.byte	0x13
	.byte	0x22
	.4byte	.LASF220
	.byte	0x14
	.byte	0x22
	.4byte	.LASF221
	.byte	0x15
	.byte	0x22
	.4byte	.LASF222
	.byte	0x16
	.byte	0x22
	.4byte	.LASF223
	.byte	0x17
	.byte	0
	.byte	0x4
	.4byte	.LASF224
	.byte	0xf
	.byte	0x53
	.byte	0x2
	.4byte	0xd01
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0x58
	.byte	0xe
	.4byte	0xdd3
	.byte	0x22
	.4byte	.LASF225
	.byte	0
	.byte	0x22
	.4byte	.LASF226
	.byte	0x1
	.byte	0x22
	.4byte	.LASF227
	.byte	0x2
	.byte	0x22
	.4byte	.LASF228
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF229
	.byte	0xf
	.byte	0x5d
	.byte	0x2
	.4byte	0xdac
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0x62
	.byte	0xe
	.4byte	0xe06
	.byte	0x22
	.4byte	.LASF230
	.byte	0
	.byte	0x22
	.4byte	.LASF231
	.byte	0x1
	.byte	0x22
	.4byte	.LASF232
	.byte	0x2
	.byte	0x22
	.4byte	.LASF233
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF234
	.byte	0xf
	.byte	0x67
	.byte	0x2
	.4byte	0xddf
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0x6c
	.byte	0xe
	.4byte	0xe51
	.byte	0x22
	.4byte	.LASF235
	.byte	0
	.byte	0x22
	.4byte	.LASF236
	.byte	0x1
	.byte	0x22
	.4byte	.LASF237
	.byte	0x2
	.byte	0x22
	.4byte	.LASF238
	.byte	0x3
	.byte	0x22
	.4byte	.LASF239
	.byte	0x4
	.byte	0x22
	.4byte	.LASF240
	.byte	0x5
	.byte	0x22
	.4byte	.LASF241
	.byte	0x6
	.byte	0x22
	.4byte	.LASF242
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	.LASF243
	.byte	0xf
	.byte	0x75
	.byte	0x2
	.4byte	0xe12
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0x88
	.byte	0xe
	.4byte	0xe96
	.byte	0x22
	.4byte	.LASF244
	.byte	0
	.byte	0x22
	.4byte	.LASF245
	.byte	0x1
	.byte	0x22
	.4byte	.LASF246
	.byte	0x2
	.byte	0x22
	.4byte	.LASF247
	.byte	0x3
	.byte	0x22
	.4byte	.LASF248
	.byte	0x4
	.byte	0x22
	.4byte	.LASF249
	.byte	0x5
	.byte	0x22
	.4byte	.LASF250
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF251
	.byte	0xf
	.byte	0x90
	.byte	0x2
	.4byte	0xe5d
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0x95
	.byte	0xe
	.4byte	0xebd
	.byte	0x22
	.4byte	.LASF252
	.byte	0
	.byte	0x22
	.4byte	.LASF253
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF254
	.byte	0xf
	.byte	0x98
	.byte	0x2
	.4byte	0xea2
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0x9d
	.byte	0xe
	.4byte	0xef0
	.byte	0x22
	.4byte	.LASF255
	.byte	0
	.byte	0x22
	.4byte	.LASF256
	.byte	0x1
	.byte	0x22
	.4byte	.LASF257
	.byte	0x2
	.byte	0x22
	.4byte	.LASF258
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF259
	.byte	0xf
	.byte	0xa2
	.byte	0x2
	.4byte	0xec9
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0xa7
	.byte	0xe
	.4byte	0xf23
	.byte	0x22
	.4byte	.LASF260
	.byte	0
	.byte	0x22
	.4byte	.LASF261
	.byte	0x1
	.byte	0x22
	.4byte	.LASF262
	.byte	0x2
	.byte	0x22
	.4byte	.LASF263
	.byte	0x3
	.byte	0
	.byte	0x4
	.4byte	.LASF264
	.byte	0xf
	.byte	0xac
	.byte	0x2
	.4byte	0xefc
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0xb1
	.byte	0xe
	.4byte	0xf4a
	.byte	0x22
	.4byte	.LASF265
	.byte	0
	.byte	0x22
	.4byte	.LASF266
	.byte	0x1
	.byte	0
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0xb9
	.byte	0xe
	.4byte	0xf65
	.byte	0x22
	.4byte	.LASF267
	.byte	0
	.byte	0x22
	.4byte	.LASF268
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF269
	.byte	0xf
	.byte	0xbc
	.byte	0x2
	.4byte	0xf4a
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0xc1
	.byte	0xe
	.4byte	0xf8c
	.byte	0x22
	.4byte	.LASF270
	.byte	0
	.byte	0x22
	.4byte	.LASF271
	.byte	0x1
	.byte	0
	.byte	0x4
	.4byte	.LASF272
	.byte	0xf
	.byte	0xc4
	.byte	0x2
	.4byte	0xf71
	.byte	0x21
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.byte	0xc9
	.byte	0xe
	.4byte	0xfc5
	.byte	0x22
	.4byte	.LASF273
	.byte	0
	.byte	0x22
	.4byte	.LASF274
	.byte	0x1
	.byte	0x22
	.4byte	.LASF275
	.byte	0x2
	.byte	0x22
	.4byte	.LASF276
	.byte	0x3
	.byte	0x22
	.4byte	.LASF277
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF278
	.byte	0xf
	.byte	0xcf
	.byte	0x2
	.4byte	0xf98
	.byte	0xa
	.byte	0xe
	.byte	0xf
	.byte	0xfc
	.byte	0x9
	.4byte	0x108e
	.byte	0xb
	.4byte	.LASF279
	.byte	0xf
	.byte	0xfd
	.byte	0x16
	.4byte	0xdd3
	.byte	0
	.byte	0xb
	.4byte	.LASF280
	.byte	0xf
	.byte	0xfe
	.byte	0x16
	.4byte	0xe06
	.byte	0x1
	.byte	0xb
	.4byte	.LASF281
	.byte	0xf
	.byte	0xff
	.byte	0x12
	.4byte	0xe51
	.byte	0x2
	.byte	0x17
	.4byte	.LASF282
	.byte	0xf
	.2byte	0x100
	.byte	0x17
	.4byte	0xe96
	.byte	0x3
	.byte	0x17
	.4byte	.LASF283
	.byte	0xf
	.2byte	0x101
	.byte	0x17
	.4byte	0xe96
	.byte	0x4
	.byte	0x17
	.4byte	.LASF284
	.byte	0xf
	.2byte	0x102
	.byte	0x17
	.4byte	0xef0
	.byte	0x5
	.byte	0x17
	.4byte	.LASF285
	.byte	0xf
	.2byte	0x103
	.byte	0x17
	.4byte	0xebd
	.byte	0x6
	.byte	0x26
	.string	"vcm"
	.byte	0xf
	.2byte	0x104
	.byte	0x16
	.4byte	0xf23
	.byte	0x7
	.byte	0x17
	.4byte	.LASF286
	.byte	0xf
	.2byte	0x105
	.byte	0x13
	.4byte	0xf65
	.byte	0x8
	.byte	0x17
	.4byte	.LASF287
	.byte	0xf
	.2byte	0x106
	.byte	0x18
	.4byte	0xf8c
	.byte	0x9
	.byte	0x17
	.4byte	.LASF288
	.byte	0xf
	.2byte	0x107
	.byte	0x19
	.4byte	0xfc5
	.byte	0xa
	.byte	0x17
	.4byte	.LASF289
	.byte	0xf
	.2byte	0x108
	.byte	0x11
	.4byte	0x9f9
	.byte	0xb
	.byte	0x17
	.4byte	.LASF290
	.byte	0xf
	.2byte	0x109
	.byte	0xd
	.4byte	0x97c
	.byte	0xc
	.byte	0
	.byte	0x5
	.4byte	.LASF291
	.byte	0xf
	.2byte	0x10a
	.byte	0x2
	.4byte	0xfd1
	.byte	0x1a
	.byte	0x8
	.byte	0xf
	.2byte	0x10f
	.byte	0x9
	.4byte	0x10de
	.byte	0x17
	.4byte	.LASF292
	.byte	0xf
	.2byte	0x110
	.byte	0xc
	.4byte	0x964
	.byte	0
	.byte	0x17
	.4byte	.LASF293
	.byte	0xf
	.2byte	0x111
	.byte	0xc
	.4byte	0x964
	.byte	0x1
	.byte	0x17
	.4byte	.LASF294
	.byte	0xf
	.2byte	0x112
	.byte	0xe
	.4byte	0x988
	.byte	0x2
	.byte	0x17
	.4byte	.LASF295
	.byte	0xf
	.2byte	0x113
	.byte	0xb
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF296
	.byte	0xf
	.2byte	0x114
	.byte	0x2
	.4byte	0x109b
	.byte	0x27
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0xf
	.2byte	0x119
	.byte	0xe
	.4byte	0x1113
	.byte	0x22
	.4byte	.LASF297
	.byte	0
	.byte	0x22
	.4byte	.LASF298
	.byte	0x1
	.byte	0x22
	.4byte	.LASF299
	.byte	0x2
	.byte	0x22
	.4byte	.LASF300
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF301
	.byte	0xf
	.2byte	0x11e
	.byte	0x2
	.4byte	0x10eb
	.byte	0x1a
	.byte	0x2
	.byte	0xf
	.2byte	0x12f
	.byte	0x9
	.4byte	0x1147
	.byte	0x17
	.4byte	.LASF302
	.byte	0xf
	.2byte	0x130
	.byte	0x1d
	.4byte	0x1113
	.byte	0
	.byte	0x17
	.4byte	.LASF303
	.byte	0xf
	.2byte	0x131
	.byte	0x11
	.4byte	0x9f9
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF304
	.byte	0xf
	.2byte	0x132
	.byte	0x2
	.4byte	0x1120
	.byte	0x4
	.4byte	.LASF305
	.byte	0x2
	.byte	0x3f
	.byte	0x11
	.4byte	0x994
	.byte	0x20
	.4byte	.LASF306
	.byte	0x2
	.byte	0x54
	.byte	0x13
	.4byte	0x1154
	.byte	0x28
	.4byte	.LASF413
	.byte	0x7
	.byte	0x1
	.4byte	0x60
	.byte	0x10
	.byte	0x21
	.byte	0xe
	.4byte	0x11a9
	.byte	0x22
	.4byte	.LASF307
	.byte	0
	.byte	0x22
	.4byte	.LASF308
	.byte	0x1
	.byte	0x22
	.4byte	.LASF309
	.byte	0x2
	.byte	0x22
	.4byte	.LASF310
	.byte	0x3
	.byte	0x22
	.4byte	.LASF311
	.byte	0x4
	.byte	0x22
	.4byte	.LASF312
	.byte	0x5
	.byte	0x22
	.4byte	.LASF313
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF314
	.byte	0x10
	.byte	0x29
	.byte	0x3
	.4byte	0x116c
	.byte	0xd
	.4byte	.LASF315
	.byte	0x8
	.byte	0x10
	.byte	0x2b
	.byte	0x10
	.4byte	0x11dd
	.byte	0xb
	.4byte	.LASF316
	.byte	0x10
	.byte	0x2c
	.byte	0x13
	.4byte	0x11dd
	.byte	0
	.byte	0xb
	.4byte	.LASF317
	.byte	0x10
	.byte	0x2d
	.byte	0xb
	.4byte	0x605
	.byte	0x4
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x11a9
	.byte	0x4
	.4byte	.LASF318
	.byte	0x10
	.byte	0x2e
	.byte	0x3
	.4byte	0x11b5
	.byte	0x15
	.4byte	0x11e3
	.byte	0x29
	.4byte	.LASF320
	.byte	0x11
	.byte	0x37
	.byte	0x17
	.4byte	0x9ac
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x2a
	.4byte	.LASF319
	.byte	0x11
	.byte	0x44
	.byte	0xe
	.4byte	0x11a9
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hal_drv
	.byte	0x29
	.4byte	.LASF321
	.byte	0x11
	.byte	0x45
	.byte	0x1a
	.4byte	0x11ef
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hal_drv
	.byte	0x2a
	.4byte	.LASF322
	.byte	0x11
	.byte	0x52
	.byte	0xe
	.4byte	0x11a9
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hal_drvbl_adc
	.byte	0x2a
	.4byte	.LASF323
	.byte	0x11
	.byte	0x53
	.byte	0x13
	.4byte	0x11ef
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hal_drvbl_adc
	.byte	0x4
	.4byte	.LASF324
	.byte	0x12
	.byte	0x24
	.byte	0x10
	.4byte	0x125a
	.byte	0xf
	.byte	0x4
	.4byte	0x1260
	.byte	0x1e
	.4byte	0x1275
	.byte	0x14
	.4byte	0x33
	.byte	0x14
	.4byte	0x1275
	.byte	0x14
	.4byte	0x9a0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x9a0
	.byte	0xd
	.4byte	.LASF325
	.byte	0x1c
	.byte	0x12
	.byte	0x25
	.byte	0x10
	.4byte	0x12e3
	.byte	0xb
	.4byte	.LASF326
	.byte	0x12
	.byte	0x26
	.byte	0x9
	.4byte	0x33
	.byte	0
	.byte	0xb
	.4byte	.LASF327
	.byte	0x12
	.byte	0x27
	.byte	0xf
	.4byte	0x1275
	.byte	0x4
	.byte	0xb
	.4byte	.LASF328
	.byte	0x12
	.byte	0x28
	.byte	0xb
	.4byte	0x154
	.byte	0x8
	.byte	0xb
	.4byte	.LASF329
	.byte	0x12
	.byte	0x29
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.byte	0xb
	.4byte	.LASF330
	.byte	0x12
	.byte	0x2a
	.byte	0xe
	.4byte	0x9a0
	.byte	0x10
	.byte	0xb
	.4byte	.LASF331
	.byte	0x12
	.byte	0x2b
	.byte	0xe
	.4byte	0x9a0
	.byte	0x14
	.byte	0xe
	.string	"cb"
	.byte	0x12
	.byte	0x2c
	.byte	0x11
	.4byte	0x124e
	.byte	0x18
	.byte	0
	.byte	0x4
	.4byte	.LASF332
	.byte	0x12
	.byte	0x2d
	.byte	0x2
	.4byte	0x127b
	.byte	0x2a
	.4byte	.LASF333
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0x108e
	.byte	0x5
	.byte	0x3
	.4byte	adcCfg
	.byte	0x2a
	.4byte	.LASF334
	.byte	0x1
	.byte	0x48
	.byte	0x13
	.4byte	0x1147
	.byte	0x5
	.byte	0x3
	.4byte	adcFifoCfg
	.byte	0x2b
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x20f
	.byte	0x5
	.4byte	0x33
	.byte	0x1
	.4byte	0x1340
	.byte	0x2c
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x20f
	.byte	0x24
	.4byte	0x33
	.byte	0x2d
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x211
	.byte	0x9
	.4byte	0x33
	.byte	0
	.byte	0x2e
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x1fa
	.byte	0x9
	.4byte	0x994
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x1
	.byte	0x9c
	.4byte	0x13e8
	.byte	0x2f
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x1fa
	.byte	0x25
	.4byte	0x1275
	.4byte	.LLST27
	.byte	0x30
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x1fa
	.byte	0x2f
	.4byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0x30
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x1fa
	.byte	0x3e
	.4byte	0x33
	.byte	0x1
	.byte	0x5c
	.byte	0x30
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x1fa
	.byte	0x4b
	.4byte	0x33
	.byte	0x1
	.byte	0x5d
	.byte	0x31
	.string	"i"
	.byte	0x1
	.2byte	0x1fc
	.byte	0x9
	.4byte	0x33
	.4byte	.LLST28
	.byte	0x32
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x1fd
	.byte	0xd
	.4byte	0x994
	.4byte	.LLST29
	.byte	0x33
	.4byte	0x13e8
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.byte	0x1
	.2byte	0x205
	.byte	0x18
	.byte	0x34
	.4byte	0x13fa
	.4byte	.LLST30
	.byte	0x35
	.4byte	.LBB103
	.4byte	.LBE103-.LBB103
	.byte	0x36
	.4byte	0x1407
	.4byte	.LLST31
	.byte	0
	.byte	0
	.byte	0
	.byte	0x37
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x1f0
	.byte	0x11
	.4byte	0x9a0
	.byte	0x1
	.4byte	0x1415
	.byte	0x2c
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x1f0
	.byte	0x28
	.4byte	0x9a0
	.byte	0x38
	.string	"val"
	.byte	0x1
	.2byte	0x1f2
	.byte	0xe
	.4byte	0x9a0
	.byte	0
	.byte	0x2e
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x1e7
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x146c
	.byte	0x2f
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x1e7
	.byte	0x1a
	.4byte	0x33
	.4byte	.LLST26
	.byte	0x39
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x1e9
	.byte	0xd
	.4byte	0x970
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x3a
	.4byte	.LVL176
	.4byte	0x2183
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x1da
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x1
	.byte	0x9c
	.4byte	0x1500
	.byte	0x3c
	.4byte	.LVL168
	.4byte	0x2190
	.4byte	0x14a4
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x3c
	.4byte	.LVL169
	.4byte	0x2190
	.4byte	0x14c1
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3c
	.4byte	.LVL170
	.4byte	0x2190
	.4byte	0x14de
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3d
	.4byte	.LVL171
	.4byte	0x219d
	.byte	0x3d
	.4byte	.LVL172
	.4byte	0x21aa
	.byte	0x3a
	.4byte	.LVL173
	.4byte	0x21b7
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x1a3
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x1
	.byte	0x9c
	.4byte	0x16f3
	.byte	0x2f
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x1a3
	.byte	0x19
	.4byte	0x33
	.4byte	.LLST20
	.byte	0x2f
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x1a3
	.byte	0x28
	.4byte	0x9a0
	.4byte	.LLST21
	.byte	0x39
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x1a5
	.byte	0x18
	.4byte	0xcfb
	.byte	0x1
	.byte	0x58
	.byte	0x32
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x1a6
	.byte	0xf
	.4byte	0x1275
	.4byte	.LLST22
	.byte	0x39
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x1a7
	.byte	0x16
	.4byte	0xcef
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x39
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x1a8
	.byte	0x10
	.4byte	0x16f3
	.byte	0x1
	.byte	0x59
	.byte	0x3e
	.4byte	0x1fe4
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.byte	0x1
	.2byte	0x1ab
	.byte	0xd3
	.byte	0x3e
	.4byte	0x1fe4
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.byte	0x1
	.2byte	0x1b2
	.byte	0xdb
	.byte	0x3e
	.4byte	0x1fe4
	.4byte	.LBB92
	.4byte	.LBE92-.LBB92
	.byte	0x1
	.2byte	0x1b9
	.byte	0xd8
	.byte	0x3e
	.4byte	0x1fe4
	.4byte	.LBB94
	.4byte	.LBE94-.LBB94
	.byte	0x1
	.2byte	0x1c0
	.byte	0xdc
	.byte	0x3f
	.4byte	0x16f9
	.4byte	.LBB96
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x1ca
	.byte	0x5
	.4byte	0x15fc
	.byte	0x34
	.4byte	0x1721
	.4byte	.LLST23
	.byte	0x34
	.4byte	0x1714
	.4byte	.LLST24
	.byte	0x34
	.4byte	0x1707
	.4byte	.LLST25
	.byte	0x40
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x41
	.4byte	0x172e
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL139
	.4byte	0x21c4
	.byte	0x3d
	.4byte	.LVL140
	.4byte	0x21d1
	.byte	0x3d
	.4byte	.LVL142
	.4byte	0x21dd
	.byte	0x3c
	.4byte	.LVL145
	.4byte	0x21ea
	.4byte	0x162a
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x4c
	.byte	0
	.byte	0x3d
	.4byte	.LVL147
	.4byte	0x21c4
	.byte	0x3d
	.4byte	.LVL148
	.4byte	0x21dd
	.byte	0x3c
	.4byte	.LVL149
	.4byte	0x21ea
	.4byte	0x1650
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x3d
	.4byte	.LVL151
	.4byte	0x21c4
	.byte	0x3d
	.4byte	.LVL152
	.4byte	0x21dd
	.byte	0x3c
	.4byte	.LVL153
	.4byte	0x21ea
	.4byte	0x1678
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x83
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0
	.byte	0x3d
	.4byte	.LVL155
	.4byte	0x21c4
	.byte	0x3d
	.4byte	.LVL157
	.4byte	0x21dd
	.byte	0x3c
	.4byte	.LVL160
	.4byte	0x21f6
	.4byte	0x169d
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x3c
	.4byte	.LVL165
	.4byte	0x2203
	.4byte	0x16b6
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x3c
	.4byte	.LVL166
	.4byte	0x2210
	.4byte	0x16cf
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x3a
	.4byte	.LVL167
	.4byte	0x221d
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	adc_data_update
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x3b
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x12e3
	.byte	0x42
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x187
	.byte	0xd
	.byte	0x1
	.4byte	0x173c
	.byte	0x2c
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x187
	.byte	0x31
	.4byte	0xcfb
	.byte	0x43
	.string	"buf"
	.byte	0x1
	.2byte	0x187
	.byte	0x43
	.4byte	0x1275
	.byte	0x2c
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x187
	.byte	0x51
	.4byte	0x9a0
	.byte	0x2d
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x189
	.byte	0x1c
	.4byte	0xab5
	.byte	0
	.byte	0x2e
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x153
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x1863
	.byte	0x2f
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x153
	.byte	0x15
	.4byte	0x33
	.4byte	.LLST34
	.byte	0x2f
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x153
	.byte	0x1f
	.4byte	0x33
	.4byte	.LLST35
	.byte	0x31
	.string	"i"
	.byte	0x1
	.2byte	0x155
	.byte	0x9
	.4byte	0x33
	.4byte	.LLST36
	.byte	0x39
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x156
	.byte	0x9
	.4byte	0x33
	.byte	0x1
	.byte	0x5a
	.byte	0x32
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x157
	.byte	0x9
	.4byte	0x33
	.4byte	.LLST37
	.byte	0x39
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x158
	.byte	0x12
	.4byte	0x108e
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x39
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x159
	.byte	0x13
	.4byte	0x1863
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x39
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x15a
	.byte	0x13
	.4byte	0x1863
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x39
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x15b
	.byte	0x17
	.4byte	0x1147
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x3d
	.4byte	.LVL195
	.4byte	0x2229
	.byte	0x3d
	.4byte	.LVL196
	.4byte	0x2236
	.byte	0x3d
	.4byte	.LVL197
	.4byte	0x2243
	.byte	0x3c
	.4byte	.LVL198
	.4byte	0x2250
	.4byte	0x1817
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0
	.byte	0x3c
	.4byte	.LVL202
	.4byte	0x225d
	.4byte	0x183c
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x3b
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x3c
	.4byte	.LVL203
	.4byte	0x226a
	.4byte	0x1850
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0
	.byte	0x3a
	.4byte	.LVL207
	.4byte	0x1313
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0xda0
	.4byte	0x1873
	.byte	0x9
	.4byte	0x3a
	.byte	0xb
	.byte	0
	.byte	0x2e
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x138
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x18f8
	.byte	0x2f
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x138
	.byte	0x1a
	.4byte	0x33
	.4byte	.LLST15
	.byte	0x2f
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x138
	.byte	0x29
	.4byte	0x9a0
	.4byte	.LLST16
	.byte	0x31
	.string	"div"
	.byte	0x1
	.2byte	0x13a
	.byte	0xe
	.4byte	0x9a0
	.4byte	.LLST17
	.byte	0x32
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x13b
	.byte	0xe
	.4byte	0x9a0
	.4byte	.LLST18
	.byte	0x32
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x13c
	.byte	0xe
	.4byte	0x9a0
	.4byte	.LLST19
	.byte	0x3a
	.4byte	.LVL135
	.4byte	0x2277
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x42
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x11d
	.byte	0xd
	.byte	0x1
	.4byte	0x1914
	.byte	0x2d
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x11f
	.byte	0x10
	.4byte	0x16f3
	.byte	0
	.byte	0x44
	.4byte	.LASF364
	.byte	0x1
	.byte	0xe0
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b23
	.byte	0x45
	.4byte	.LASF365
	.byte	0x1
	.byte	0xe0
	.byte	0x1e
	.4byte	0x1b23
	.4byte	.LLST12
	.byte	0x45
	.4byte	.LASF366
	.byte	0x1
	.byte	0xe0
	.byte	0x2c
	.4byte	0x970
	.4byte	.LLST13
	.byte	0x29
	.4byte	.LASF367
	.byte	0x1
	.byte	0xe2
	.byte	0x15
	.4byte	0x988
	.byte	0x5
	.byte	0x3
	.4byte	tsen_offset.8871
	.byte	0x46
	.string	"val"
	.byte	0x1
	.byte	0xe3
	.byte	0xb
	.4byte	0x25
	.4byte	.LLST14
	.byte	0x47
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x1b06
	.byte	0x29
	.4byte	.LASF333
	.byte	0x1
	.byte	0xe7
	.byte	0x16
	.4byte	0x108e
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x29
	.4byte	.LASF334
	.byte	0x1
	.byte	0xf8
	.byte	0x1b
	.4byte	0x1147
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x3e
	.4byte	0x1fe4
	.4byte	.LBB73
	.4byte	.LBE73-.LBB73
	.byte	0x1
	.2byte	0x10b
	.byte	0x53
	.byte	0x3e
	.4byte	0x1fe4
	.4byte	.LBB75
	.4byte	.LBE75-.LBB75
	.byte	0x1
	.2byte	0x10d
	.byte	0x48
	.byte	0x3c
	.4byte	.LVL102
	.4byte	0x2284
	.4byte	0x19dc
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3e
	.byte	0
	.byte	0x3c
	.4byte	.LVL103
	.4byte	0x2277
	.4byte	0x19f9
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x3d
	.4byte	.LVL104
	.4byte	0x2229
	.byte	0x3d
	.4byte	.LVL105
	.4byte	0x2236
	.byte	0x3d
	.4byte	.LVL106
	.4byte	0x2243
	.byte	0x3c
	.4byte	.LVL107
	.4byte	0x2250
	.4byte	0x1a28
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0
	.byte	0x3c
	.4byte	.LVL108
	.4byte	0x228f
	.4byte	0x1a45
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3c
	.4byte	.LVL109
	.4byte	0x229c
	.4byte	0x1a58
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3c
	.4byte	.LVL110
	.4byte	0x226a
	.4byte	0x1a6d
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x3c
	.4byte	.LVL111
	.4byte	0x22a9
	.4byte	0x1a81
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL112
	.4byte	0x21c4
	.byte	0x3c
	.4byte	.LVL113
	.4byte	0x21d1
	.4byte	0x1aba
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x3b
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x3b
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x10b
	.byte	0
	.byte	0x3d
	.4byte	.LVL121
	.4byte	0x21dd
	.byte	0x3d
	.4byte	.LVL122
	.4byte	0x21c4
	.byte	0x3c
	.4byte	.LVL123
	.4byte	0x21d1
	.4byte	0x1afc
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x3b
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x3b
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x10d
	.byte	0
	.byte	0x3d
	.4byte	.LVL124
	.4byte	0x21dd
	.byte	0
	.byte	0x3d
	.4byte	.LVL114
	.4byte	0x22b6
	.byte	0x3a
	.4byte	.LVL117
	.4byte	0x22c3
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x4
	.4byte	0x97c
	.byte	0x44
	.4byte	.LASF368
	.byte	0x1
	.byte	0xda
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d2f
	.byte	0x48
	.4byte	0x1ee8
	.4byte	.LBB64
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0xdc
	.byte	0x5
	.byte	0x40
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x49
	.4byte	0x1ef5
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x49
	.4byte	0x1f01
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x36
	.4byte	0x1f0d
	.4byte	.LLST8
	.byte	0x36
	.4byte	0x1f17
	.4byte	.LLST9
	.byte	0x36
	.4byte	0x1f22
	.4byte	.LLST10
	.byte	0x36
	.4byte	0x1f2d
	.4byte	.LLST11
	.byte	0x4a
	.4byte	0x1fe4
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.byte	0x8c
	.byte	0xd7
	.byte	0x4a
	.4byte	0x1fe4
	.4byte	.LBB68
	.4byte	.LBE68-.LBB68
	.byte	0x1
	.byte	0x8e
	.byte	0xeb
	.byte	0x3d
	.4byte	.LVL62
	.4byte	0x2243
	.byte	0x3d
	.4byte	.LVL63
	.4byte	0x2229
	.byte	0x3d
	.4byte	.LVL64
	.4byte	0x2236
	.byte	0x3c
	.4byte	.LVL65
	.4byte	0x2250
	.4byte	0x1be0
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x3c
	.4byte	.LVL66
	.4byte	0x228f
	.4byte	0x1bfd
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3c
	.4byte	.LVL67
	.4byte	0x229c
	.4byte	0x1c10
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3c
	.4byte	.LVL68
	.4byte	0x226a
	.4byte	0x1c27
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x3d
	.4byte	.LVL69
	.4byte	0x1f3a
	.byte	0x3d
	.4byte	.LVL71
	.4byte	0x219d
	.byte	0x3d
	.4byte	.LVL72
	.4byte	0x22cf
	.byte	0x3d
	.4byte	.LVL73
	.4byte	0x22dc
	.byte	0x3c
	.4byte	.LVL74
	.4byte	0x22e9
	.4byte	0x1c6c
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0
	.byte	0x3d
	.4byte	.LVL76
	.4byte	0x22cf
	.byte	0x3d
	.4byte	.LVL78
	.4byte	0x22f6
	.byte	0x3d
	.4byte	.LVL82
	.4byte	0x21c4
	.byte	0x3c
	.4byte	.LVL83
	.4byte	0x21d1
	.4byte	0x1cc2
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x3b
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x3b
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0x3b
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x3b
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL84
	.4byte	0x21c4
	.byte	0x3c
	.4byte	.LVL88
	.4byte	0x21d1
	.4byte	0x1d00
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x3b
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x3b
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x8e
	.byte	0
	.byte	0x3d
	.4byte	.LVL89
	.4byte	0x21dd
	.byte	0x3d
	.4byte	.LVL90
	.4byte	0x21dd
	.byte	0x3d
	.4byte	.LVL92
	.4byte	0x2303
	.byte	0x3a
	.4byte	.LVL93
	.4byte	0x2310
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x44
	.4byte	.LASF369
	.byte	0x1
	.byte	0xad
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e38
	.byte	0x4b
	.string	"tmp"
	.byte	0x1
	.byte	0xad
	.byte	0x1b
	.4byte	0x1b23
	.4byte	.LLST3
	.byte	0x29
	.4byte	.LASF370
	.byte	0x1
	.byte	0xaf
	.byte	0x15
	.4byte	0x10de
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x29
	.4byte	.LASF371
	.byte	0x1
	.byte	0xb0
	.byte	0xe
	.4byte	0x9a0
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x46
	.string	"i"
	.byte	0x1
	.byte	0xb1
	.byte	0xd
	.4byte	0x970
	.4byte	.LLST4
	.byte	0x46
	.string	"v0"
	.byte	0x1
	.byte	0xb2
	.byte	0xe
	.4byte	0x9a0
	.4byte	.LLST5
	.byte	0x46
	.string	"v1"
	.byte	0x1
	.byte	0xb2
	.byte	0x13
	.4byte	0x9a0
	.4byte	.LLST6
	.byte	0x4c
	.4byte	.LASF372
	.byte	0x1
	.byte	0xb3
	.byte	0xb
	.4byte	0x25
	.4byte	.LLST7
	.byte	0x4d
	.4byte	.LBB57
	.4byte	.LBE57-.LBB57
	.4byte	0x1de2
	.byte	0x4e
	.4byte	.LASF375
	.byte	0x1
	.byte	0xb9
	.byte	0x19
	.4byte	0x1dd2
	.byte	0x14
	.4byte	0x33
	.byte	0
	.byte	0x3a
	.4byte	.LVL58
	.4byte	0x231c
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LVL39
	.4byte	0x219d
	.byte	0x3d
	.4byte	.LVL40
	.4byte	0x22cf
	.byte	0x3d
	.4byte	.LVL41
	.4byte	0x22dc
	.byte	0x3c
	.4byte	.LVL42
	.4byte	0x22e9
	.4byte	0x1e1c
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x3d
	.4byte	.LVL44
	.4byte	0x22cf
	.byte	0x3d
	.4byte	.LVL50
	.4byte	0x22f6
	.byte	0x3d
	.4byte	.LVL60
	.4byte	0x2303
	.byte	0
	.byte	0x4f
	.4byte	.LASF373
	.byte	0x1
	.byte	0x9a
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ee8
	.byte	0x3c
	.4byte	.LVL27
	.4byte	0x1fca
	.4byte	0x1e65
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x3d
	.4byte	.LVL28
	.4byte	0x2243
	.byte	0x3d
	.4byte	.LVL29
	.4byte	0x2229
	.byte	0x3d
	.4byte	.LVL30
	.4byte	0x2236
	.byte	0x3c
	.4byte	.LVL31
	.4byte	0x2250
	.4byte	0x1e97
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x3c
	.4byte	.LVL32
	.4byte	0x228f
	.4byte	0x1eb4
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3c
	.4byte	.LVL33
	.4byte	0x229c
	.4byte	0x1ec7
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x3c
	.4byte	.LVL34
	.4byte	0x226a
	.4byte	0x1ede
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0x3d
	.4byte	.LVL35
	.4byte	0x1f3a
	.byte	0
	.byte	0x50
	.4byte	.LASF374
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.byte	0x1
	.4byte	0x1f3a
	.byte	0x51
	.4byte	.LASF370
	.byte	0x1
	.byte	0x66
	.byte	0x15
	.4byte	0x10de
	.byte	0x51
	.4byte	.LASF371
	.byte	0x1
	.byte	0x67
	.byte	0xe
	.4byte	0x9a0
	.byte	0x52
	.string	"i"
	.byte	0x1
	.byte	0x68
	.byte	0xd
	.4byte	0x970
	.byte	0x52
	.string	"v0"
	.byte	0x1
	.byte	0x69
	.byte	0xe
	.4byte	0x9a0
	.byte	0x52
	.string	"v1"
	.byte	0x1
	.byte	0x69
	.byte	0x13
	.4byte	0x9a0
	.byte	0x51
	.4byte	.LASF372
	.byte	0x1
	.byte	0x6a
	.byte	0xb
	.4byte	0x25
	.byte	0
	.byte	0x53
	.4byte	.LASF416
	.byte	0x1
	.byte	0x53
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fca
	.byte	0x3d
	.4byte	.LVL16
	.4byte	0x22f6
	.byte	0x3d
	.4byte	.LVL17
	.4byte	0x219d
	.byte	0x3c
	.4byte	.LVL18
	.4byte	0x2310
	.4byte	0x1f76
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x3d
	.4byte	.LVL19
	.4byte	0x22cf
	.byte	0x3d
	.4byte	.LVL20
	.4byte	0x22dc
	.byte	0x3d
	.4byte	.LVL21
	.4byte	0x2303
	.byte	0x3d
	.4byte	.LVL22
	.4byte	0x219d
	.byte	0x3c
	.4byte	.LVL23
	.4byte	0x2310
	.4byte	0x1fae
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x3d
	.4byte	.LVL24
	.4byte	0x22cf
	.byte	0x3d
	.4byte	.LVL25
	.4byte	0x22dc
	.byte	0x54
	.4byte	.LVL26
	.4byte	0x22f6
	.byte	0
	.byte	0x55
	.4byte	.LASF376
	.byte	0x1
	.byte	0x4d
	.byte	0x6
	.byte	0x1
	.4byte	0x1fe4
	.byte	0x56
	.string	"div"
	.byte	0x1
	.byte	0x4d
	.byte	0x1d
	.4byte	0x970
	.byte	0
	.byte	0x57
	.4byte	.LASF417
	.byte	0x2
	.byte	0x95
	.byte	0x3a
	.4byte	0x1154
	.byte	0x3
	.byte	0x58
	.4byte	0x18f8
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x2091
	.byte	0x36
	.4byte	0x1906
	.4byte	.LLST0
	.byte	0x3f
	.4byte	0x18f8
	.4byte	.LBB33
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x11d
	.byte	0xd
	.4byte	0x2081
	.byte	0x40
	.4byte	.Ldebug_ranges0+0
	.byte	0x41
	.4byte	0x1906
	.byte	0x3e
	.4byte	0x1fe4
	.4byte	.LBB35
	.4byte	.LBE35-.LBB35
	.byte	0x1
	.2byte	0x123
	.byte	0xd3
	.byte	0x3d
	.4byte	.LVL1
	.4byte	0x21c4
	.byte	0x59
	.4byte	.LVL2
	.4byte	0x21d1
	.4byte	0x2076
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x3b
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x3b
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x123
	.byte	0
	.byte	0x3d
	.4byte	.LVL3
	.4byte	0x21dd
	.byte	0
	.byte	0
	.byte	0x3a
	.4byte	.LVL0
	.4byte	0x2328
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x5a
	.4byte	0x1fca
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x2137
	.byte	0x34
	.4byte	0x1fd7
	.4byte	.LLST1
	.byte	0x5b
	.4byte	0x1fca
	.4byte	.LBB47
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.byte	0x4d
	.byte	0x6
	.4byte	0x211c
	.byte	0x34
	.4byte	0x1fd7
	.4byte	.LLST2
	.byte	0x4a
	.4byte	0x1fe4
	.4byte	.LBB49
	.4byte	.LBE49-.LBB49
	.byte	0x1
	.byte	0x50
	.byte	0xea
	.byte	0x3d
	.4byte	.LVL11
	.4byte	0x21c4
	.byte	0x59
	.4byte	.LVL13
	.4byte	0x21d1
	.4byte	0x2112
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x3b
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x3b
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x3d
	.4byte	.LVL14
	.4byte	0x21dd
	.byte	0
	.byte	0x3a
	.4byte	.LVL9
	.4byte	0x2277
	.byte	0x3b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x3b
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5a
	.4byte	0x1313
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x1
	.byte	0x9c
	.4byte	0x2183
	.byte	0x34
	.4byte	0x1325
	.4byte	.LLST32
	.byte	0x41
	.4byte	0x1332
	.byte	0x33
	.4byte	0x1313
	.4byte	.LBB106
	.4byte	.LBE106-.LBB106
	.byte	0x1
	.2byte	0x20f
	.byte	0x5
	.byte	0x34
	.4byte	0x1325
	.4byte	.LLST33
	.byte	0x35
	.4byte	.LBB107
	.4byte	.LBE107-.LBB107
	.byte	0x41
	.4byte	0x1332
	.byte	0
	.byte	0
	.byte	0
	.byte	0x5c
	.4byte	.LASF377
	.4byte	.LASF377
	.byte	0xc
	.2byte	0x277
	.byte	0xd
	.byte	0x5c
	.4byte	.LASF378
	.4byte	.LASF378
	.byte	0xe
	.2byte	0x144
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF379
	.4byte	.LASF379
	.byte	0xf
	.2byte	0x1fc
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF380
	.4byte	.LASF380
	.byte	0xe
	.2byte	0x139
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF381
	.4byte	.LASF381
	.byte	0xe
	.2byte	0x140
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF382
	.4byte	.LASF382
	.byte	0x13
	.2byte	0x558
	.byte	0xc
	.byte	0x5d
	.4byte	.LASF383
	.4byte	.LASF383
	.byte	0x14
	.byte	0x9e
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF384
	.4byte	.LASF384
	.byte	0x13
	.2byte	0x547
	.byte	0xc
	.byte	0x5d
	.4byte	.LASF385
	.4byte	.LASF385
	.byte	0x15
	.byte	0x91
	.byte	0x7
	.byte	0x5c
	.4byte	.LASF386
	.4byte	.LASF386
	.byte	0xe
	.2byte	0x141
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF387
	.4byte	.LASF387
	.byte	0xe
	.2byte	0x142
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF388
	.4byte	.LASF388
	.byte	0xe
	.2byte	0x143
	.byte	0x6
	.byte	0x5d
	.4byte	.LASF389
	.4byte	.LASF389
	.byte	0x16
	.byte	0x4b
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF390
	.4byte	.LASF390
	.byte	0xf
	.2byte	0x1f8
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF391
	.4byte	.LASF391
	.byte	0xf
	.2byte	0x1f7
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF392
	.4byte	.LASF392
	.byte	0xf
	.2byte	0x1f6
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF393
	.4byte	.LASF393
	.byte	0xf
	.2byte	0x1f9
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF394
	.4byte	.LASF394
	.byte	0xf
	.2byte	0x1fb
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF395
	.4byte	.LASF395
	.byte	0xf
	.2byte	0x1fe
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF396
	.4byte	.LASF396
	.byte	0xc
	.2byte	0x262
	.byte	0xd
	.byte	0x5e
	.4byte	.LASF418
	.4byte	.LASF419
	.byte	0x18
	.byte	0
	.byte	0x5c
	.4byte	.LASF397
	.4byte	.LASF397
	.byte	0xf
	.2byte	0x1fa
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF398
	.4byte	.LASF398
	.byte	0xf
	.2byte	0x20b
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF399
	.4byte	.LASF399
	.byte	0xf
	.2byte	0x20f
	.byte	0xd
	.byte	0x5c
	.4byte	.LASF400
	.4byte	.LASF400
	.byte	0xf
	.2byte	0x212
	.byte	0x7
	.byte	0x5d
	.4byte	.LASF401
	.4byte	.LASF401
	.byte	0x17
	.byte	0xc8
	.byte	0x5
	.byte	0x5c
	.4byte	.LASF402
	.4byte	.LASF402
	.byte	0xf
	.2byte	0x1ff
	.byte	0x9
	.byte	0x5c
	.4byte	.LASF403
	.4byte	.LASF403
	.byte	0xf
	.2byte	0x202
	.byte	0xa
	.byte	0x5c
	.4byte	.LASF404
	.4byte	.LASF404
	.byte	0xf
	.2byte	0x203
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF405
	.4byte	.LASF405
	.byte	0xf
	.2byte	0x209
	.byte	0x6
	.byte	0x5c
	.4byte	.LASF406
	.4byte	.LASF406
	.byte	0xf
	.2byte	0x20a
	.byte	0x6
	.byte	0x5d
	.4byte	.LASF407
	.4byte	.LASF407
	.byte	0xa
	.byte	0x89
	.byte	0x6
	.byte	0x5d
	.4byte	.LASF375
	.4byte	.LASF375
	.byte	0x1
	.byte	0xb9
	.byte	0x19
	.byte	0x5d
	.4byte	.LASF408
	.4byte	.LASF408
	.byte	0x16
	.byte	0x4e
	.byte	0x7
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x26
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
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x27
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x2c
	.byte	0x5
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
	.byte	0x2d
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
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x2f
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x5
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x32
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x33
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x34
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x37
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x38
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x39
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3b
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x3c
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
	.byte	0x3d
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3e
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x3f
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x40
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x41
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x42
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x43
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0x44
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x45
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
	.byte	0x46
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
	.byte	0x47
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x48
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
	.byte	0
	.byte	0
	.byte	0x49
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x4a
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
	.byte	0x4b
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
	.byte	0x4c
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
	.byte	0x4d
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4e
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
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4f
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
	.byte	0x50
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x51
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
	.byte	0x52
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
	.byte	0x53
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
	.byte	0x54
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x55
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x56
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
	.byte	0
	.byte	0
	.byte	0x57
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
	.byte	0x58
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x59
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5a
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
	.byte	0x5b
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
	.byte	0x5c
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
	.byte	0x5d
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
	.byte	0x5e
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST27:
	.4byte	.LVL177
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LVL187
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LFE42
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0xe
	.byte	0x7e
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x6
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL175
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL139-1
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142-1
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL139-1
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL142-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL142-1
	.4byte	.LVL143
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL145-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL145-1
	.4byte	.LFE38
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL155-1
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL156
	.4byte	.LVL157-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL157-1
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL159
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL163
	.4byte	.LVL165-1
	.2byte	0x2
	.byte	0x78
	.byte	0x4
	.4byte	.LVL165-1
	.4byte	.LFE38
	.2byte	0x3
	.byte	0x85
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x2
	.byte	0x78
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL194
	.4byte	.LVL195-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL195-1
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL199
	.4byte	.LVL206
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL206
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL209
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL194
	.4byte	.LVL195-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL195-1
	.4byte	.LVL205
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x3
	.byte	0x72
	.byte	0xbc,0x7f
	.4byte	.LVL206
	.4byte	.LFE36
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL199
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL201
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL208
	.4byte	.LFE36
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL125
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL125
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL133
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x16
	.byte	0x7c
	.byte	0
	.byte	0x12
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x8
	.byte	0x40
	.byte	0x16
	.byte	0x14
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL100
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL99
	.4byte	.LVL115
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x90
	.byte	0x28
	.4byte	.LVL120
	.4byte	.LFE33
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL61
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL61
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL61
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL81
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL61
	.4byte	.LVL70
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x26
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0xf7
	.byte	0x2c
	.byte	0xf4
	.byte	0x2c
	.byte	0x8
	.4byte	0x6e978d50
	.4byte	0x401f0312
	.byte	0x1b
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL91
	.2byte	0x26
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0xf7
	.byte	0x2c
	.byte	0xf4
	.byte	0x2c
	.byte	0x8
	.4byte	0x6e978d50
	.4byte	0x401f0312
	.byte	0x1b
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL55
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0xc
	.byte	0xf5
	.byte	0x2a
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x13
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0xf5
	.byte	0x2f
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL47-1
	.4byte	.LVL48
	.2byte	0x16
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0x1c
	.byte	0xf4
	.byte	0x25
	.byte	0x4
	.4byte	0x4510e000
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x6
	.byte	0xf5
	.byte	0xa
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE34
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL189
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL193
	.4byte	.LFE43
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	0
	.4byte	0
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	0
	.4byte	0
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF250:
	.string	"ADC_PGA_GAIN_32"
.LASF28:
	.string	"_flock_t"
.LASF135:
	.string	"ERROR"
.LASF154:
	.string	"GLB_ADC_CLK_96M"
.LASF300:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF317:
	.string	"name"
.LASF352:
	.string	"chan"
.LASF130:
	.string	"uint16_t"
.LASF94:
	.string	"char"
.LASF44:
	.string	"_on_exit_args"
.LASF310:
	.string	"BLOG_LEVEL_WARN"
.LASF61:
	.string	"_write"
.LASF311:
	.string	"BLOG_LEVEL_ERROR"
.LASF109:
	.string	"_r48"
.LASF394:
	.string	"ADC_Scan_Channel_Config"
.LASF192:
	.string	"srcDmaAddr"
.LASF337:
	.string	"raw_flag"
.LASF114:
	.string	"_signal_buf"
.LASF2:
	.string	"unsigned int"
.LASF151:
	.string	"GPIO_FUN_ANALOG"
.LASF262:
	.string	"ADC_PGA_VCM_1P4V"
.LASF377:
	.string	"GLB_GPIO_Func_Init"
.LASF265:
	.string	"ADC_TSEN_MOD_INTERNAL_DIODE"
.LASF58:
	.string	"_lbfsize"
.LASF56:
	.string	"_flags"
.LASF267:
	.string	"ADC_VREF_3P2V"
.LASF303:
	.string	"dmaEn"
.LASF11:
	.string	"__int32_t"
.LASF287:
	.string	"inputMode"
.LASF73:
	.string	"_errno"
.LASF147:
	.string	"GPIO_FUN_I2C"
.LASF238:
	.string	"ADC_CLK_DIV_12"
.LASF239:
	.string	"ADC_CLK_DIV_16"
.LASF371:
	.string	"regVal"
.LASF357:
	.string	"adc_fifo_cfg"
.LASF316:
	.string	"level"
.LASF388:
	.string	"DMA_LLI_Update"
.LASF187:
	.string	"DMA_REQ_NONE"
.LASF27:
	.string	"_LOCK_RECURSIVE_T"
.LASF353:
	.string	"channel_num"
.LASF232:
	.string	"ADC_V11_SEL_1P18V"
.LASF60:
	.string	"_read"
.LASF26:
	.string	"__ULong"
.LASF326:
	.string	"mode"
.LASF116:
	.string	"_mbrlen_state"
.LASF419:
	.string	"__builtin_memcpy"
.LASF349:
	.string	"pstctx"
.LASF361:
	.string	"mode_freq"
.LASF75:
	.string	"_stdout"
.LASF340:
	.string	"bl_adc_parse_data"
.LASF153:
	.string	"GPIO_FUN_JTAG"
.LASF19:
	.string	"_fpos_t"
.LASF236:
	.string	"ADC_CLK_DIV_4"
.LASF220:
	.string	"ADC_CHAN_SENP2"
.LASF51:
	.string	"_fns"
.LASF358:
	.string	"bl_adc_freq_init"
.LASF59:
	.string	"_cookie"
.LASF263:
	.string	"ADC_PGA_VCM_1P6V"
.LASF240:
	.string	"ADC_CLK_DIV_20"
.LASF402:
	.string	"ADC_Get_FIFO_Count"
.LASF241:
	.string	"ADC_CLK_DIV_24"
.LASF270:
	.string	"ADC_INPUT_SINGLE_END"
.LASF271:
	.string	"ADC_INPUT_DIFF"
.LASF33:
	.string	"_Bigint"
.LASF346:
	.string	"pstlli"
.LASF41:
	.string	"__tm_wday"
.LASF383:
	.string	"bl_printk"
.LASF203:
	.string	"ADC_CHAN3"
.LASF146:
	.string	"GPIO_FUN_SPI"
.LASF148:
	.string	"GPIO_FUN_UART"
.LASF360:
	.string	"source_freq"
.LASF83:
	.string	"_result"
.LASF132:
	.string	"uint32_t"
.LASF127:
	.string	"int8_t"
.LASF37:
	.string	"__tm_hour"
.LASF272:
	.string	"ADC_SIG_INPUT_Type"
.LASF210:
	.string	"ADC_CHAN10"
.LASF163:
	.string	"reserved_25"
.LASF198:
	.string	"dstPeriph"
.LASF23:
	.string	"__count"
.LASF194:
	.string	"nextLLI"
.LASF0:
	.string	"float"
.LASF373:
	.string	"test_adc_init"
.LASF222:
	.string	"ADC_CHAN_SENP0"
.LASF221:
	.string	"ADC_CHAN_SENP1"
.LASF290:
	.string	"offsetCalibVal"
.LASF219:
	.string	"ADC_CHAN_SENP3"
.LASF99:
	.string	"_rand48"
.LASF125:
	.string	"_impure_ptr"
.LASF122:
	.string	"_nextf"
.LASF157:
	.string	"TransferSize"
.LASF378:
	.string	"DMA_IntMask"
.LASF118:
	.string	"_mbsrtowcs_state"
.LASF242:
	.string	"ADC_CLK_DIV_32"
.LASF370:
	.string	"result"
.LASF16:
	.string	"long long unsigned int"
.LASF382:
	.string	"xTaskGetTickCountFromISR"
.LASF105:
	.string	"_asctime_buf"
.LASF335:
	.string	"parr"
.LASF55:
	.string	"__sFILE"
.LASF78:
	.string	"_emergency"
.LASF223:
	.string	"ADC_CHAN_GND"
.LASF259:
	.string	"ADC_CHOP_MOD_Type"
.LASF393:
	.string	"ADC_Init"
.LASF189:
	.string	"DMA_INT_TCOMPLETED"
.LASF193:
	.string	"destDmaAddr"
.LASF319:
	.string	"_fsymc_level_hal_drv"
.LASF185:
	.string	"DMA_REQ_GPADC0"
.LASF186:
	.string	"DMA_REQ_GPADC1"
.LASF136:
	.string	"TIMEOUT"
.LASF166:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF95:
	.string	"__FILE"
.LASF392:
	.string	"ADC_Reset"
.LASF67:
	.string	"_offset"
.LASF315:
	.string	"_blog_info"
.LASF380:
	.string	"DMA_Enable"
.LASF164:
	.string	"Prot"
.LASF299:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF387:
	.string	"DMA_LLI_Init"
.LASF379:
	.string	"ADC_Start"
.LASF294:
	.string	"value"
.LASF174:
	.string	"DMA_BURST_SIZE_4"
.LASF332:
	.string	"adc_ctx_t"
.LASF306:
	.string	"TrapNetCounter"
.LASF404:
	.string	"ADC_Parse_Result"
.LASF227:
	.string	"ADC_V18_SEL_1P82V"
.LASF331:
	.string	"data_size"
.LASF246:
	.string	"ADC_PGA_GAIN_2"
.LASF35:
	.string	"__tm_sec"
.LASF161:
	.string	"DWidth"
.LASF415:
	.string	"adc_calc_data"
.LASF101:
	.string	"_mult"
.LASF24:
	.string	"__value"
.LASF77:
	.string	"_inc"
.LASF50:
	.string	"_ind"
.LASF313:
	.string	"BLOG_LEVEL_NEVER"
.LASF234:
	.string	"ADC_V11_SEL_Type"
.LASF323:
	.string	"_fsymf_info_hal_drvbl_adc"
.LASF334:
	.string	"adcFifoCfg"
.LASF410:
	.string	"/Users/Sven/bl_iot_sdk/components/hal_drv/bl602_hal/bl_adc.c"
.LASF291:
	.string	"ADC_CFG_Type"
.LASF230:
	.string	"ADC_V11_SEL_1P0V"
.LASF273:
	.string	"ADC_DATA_WIDTH_12"
.LASF359:
	.string	"freq"
.LASF339:
	.string	"gpio_num"
.LASF160:
	.string	"SWidth"
.LASF321:
	.string	"_fsymc_info_hal_drv"
.LASF158:
	.string	"SBSize"
.LASF9:
	.string	"__uint16_t"
.LASF85:
	.string	"_p5s"
.LASF233:
	.string	"ADC_V11_SEL_1P26V"
.LASF235:
	.string	"ADC_CLK_DIV_1"
.LASF243:
	.string	"ADC_CLK_Type"
.LASF368:
	.string	"test_adc_test"
.LASF110:
	.string	"_mblen_state"
.LASF237:
	.string	"ADC_CLK_DIV_8"
.LASF292:
	.string	"posChan"
.LASF134:
	.string	"SUCCESS"
.LASF384:
	.string	"xTaskGetTickCount"
.LASF309:
	.string	"BLOG_LEVEL_INFO"
.LASF38:
	.string	"__tm_mday"
.LASF91:
	.string	"_sig_func"
.LASF117:
	.string	"_mbrtowc_state"
.LASF137:
	.string	"DISABLE"
.LASF278:
	.string	"ADC_Data_Width_Type"
.LASF244:
	.string	"ADC_PGA_GAIN_NONE"
.LASF350:
	.string	"dma_ctrl_reg"
.LASF231:
	.string	"ADC_V11_SEL_1P1V"
.LASF411:
	.string	"/Users/Sven/bl_iot_sdk/customer_app/bl602_demo_wifi/build_out/hal_drv"
.LASF397:
	.string	"ADC_Channel_Config"
.LASF84:
	.string	"_result_k"
.LASF268:
	.string	"ADC_VREF_2V"
.LASF369:
	.string	"test_adc_get"
.LASF145:
	.string	"GPIO_FUN_FLASH"
.LASF347:
	.string	"llibuf"
.LASF21:
	.string	"__wch"
.LASF128:
	.string	"uint8_t"
.LASF325:
	.string	"adc_ctx"
.LASF149:
	.string	"GPIO_FUN_PWM"
.LASF245:
	.string	"ADC_PGA_GAIN_1"
.LASF152:
	.string	"GPIO_FUN_SWGPIO"
.LASF140:
	.string	"UNMASK"
.LASF247:
	.string	"ADC_PGA_GAIN_4"
.LASF63:
	.string	"_close"
.LASF248:
	.string	"ADC_PGA_GAIN_8"
.LASF413:
	.string	"_blog_leve"
.LASF81:
	.string	"__sdidinit"
.LASF288:
	.string	"resWidth"
.LASF200:
	.string	"ADC_CHAN0"
.LASF201:
	.string	"ADC_CHAN1"
.LASF202:
	.string	"ADC_CHAN2"
.LASF269:
	.string	"ADC_VREF_Type"
.LASF204:
	.string	"ADC_CHAN4"
.LASF205:
	.string	"ADC_CHAN5"
.LASF206:
	.string	"ADC_CHAN6"
.LASF207:
	.string	"ADC_CHAN7"
.LASF208:
	.string	"ADC_CHAN8"
.LASF209:
	.string	"ADC_CHAN9"
.LASF286:
	.string	"vref"
.LASF328:
	.string	"adc_lli"
.LASF374:
	.string	"ADC_tsen_case"
.LASF345:
	.string	"data_num"
.LASF74:
	.string	"_stdin"
.LASF150:
	.string	"GPIO_FUN_EXT_PA"
.LASF15:
	.string	"long long int"
.LASF277:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF401:
	.string	"printf"
.LASF281:
	.string	"clkDiv"
.LASF53:
	.string	"_base"
.LASF274:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF86:
	.string	"_freelist"
.LASF329:
	.string	"lli_flag"
.LASF381:
	.string	"DMA_Channel_Enable"
.LASF102:
	.string	"_add"
.LASF188:
	.string	"DMA_Periph_Req_Type"
.LASF320:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF119:
	.string	"_wcrtomb_state"
.LASF399:
	.string	"ADC_Trim_TSEN"
.LASF386:
	.string	"DMA_Channel_Disable"
.LASF305:
	.string	"BaseType_t"
.LASF307:
	.string	"BLOG_LEVEL_ALL"
.LASF57:
	.string	"_file"
.LASF225:
	.string	"ADC_V18_SEL_1P62V"
.LASF364:
	.string	"bl_tsen_adc_get"
.LASF7:
	.string	"__int16_t"
.LASF32:
	.string	"_wds"
.LASF156:
	.string	"DMA_Control_Reg"
.LASF276:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF180:
	.string	"DMA_REQ_UART1_TX"
.LASF159:
	.string	"DBSize"
.LASF82:
	.string	"__cleanup"
.LASF363:
	.string	"adc_data_update"
.LASF25:
	.string	"_mbstate_t"
.LASF409:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF45:
	.string	"_fnargs"
.LASF215:
	.string	"ADC_CHAN_TSEN_N"
.LASF212:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF213:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF214:
	.string	"ADC_CHAN_TSEN_P"
.LASF43:
	.string	"__tm_isdst"
.LASF64:
	.string	"_ubuf"
.LASF197:
	.string	"srcPeriph"
.LASF120:
	.string	"_wcsrtombs_state"
.LASF253:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF266:
	.string	"ADC_TSEN_MOD_EXTERNAL_DIODE"
.LASF417:
	.string	"xPortIsInsideInterrupt"
.LASF121:
	.string	"_h_errno"
.LASF354:
	.string	"adccfg"
.LASF275:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF395:
	.string	"ADC_FIFO_Cfg"
.LASF257:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF414:
	.string	"bl_adc_get_channel_by_gpio"
.LASF4:
	.string	"__int8_t"
.LASF92:
	.string	"__sglue"
.LASF258:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF338:
	.string	"data"
.LASF39:
	.string	"__tm_mon"
.LASF355:
	.string	"pos_chlist_single"
.LASF229:
	.string	"ADC_V18_SEL_Type"
.LASF144:
	.string	"GPIO_FUN_SDIO"
.LASF133:
	.string	"SystemCoreClock"
.LASF284:
	.string	"chopMode"
.LASF90:
	.string	"_atexit0"
.LASF196:
	.string	"DMA_LLI_Ctrl_Type"
.LASF107:
	.string	"_gamma_signgam"
.LASF199:
	.string	"DMA_LLI_Cfg_Type"
.LASF336:
	.string	"channel"
.LASF155:
	.string	"GLB_ADC_CLK_XCLK"
.LASF108:
	.string	"_rand_next"
.LASF49:
	.string	"_atexit"
.LASF70:
	.string	"_mbstate"
.LASF289:
	.string	"offsetCalibEn"
.LASF165:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF344:
	.string	"bl_adc_dma_init"
.LASF8:
	.string	"short int"
.LASF376:
	.string	"ADC_Clock_Init"
.LASF12:
	.string	"long int"
.LASF168:
	.string	"DMA_TRNS_M2M"
.LASF169:
	.string	"DMA_TRNS_M2P"
.LASF129:
	.string	"int16_t"
.LASF93:
	.string	"__sf"
.LASF31:
	.string	"_sign"
.LASF365:
	.string	"temp"
.LASF356:
	.string	"neg_chlist_single"
.LASF228:
	.string	"ADC_V18_SEL_1P92V"
.LASF68:
	.string	"_data"
.LASF22:
	.string	"__wchb"
.LASF126:
	.string	"_global_impure_ptr"
.LASF195:
	.string	"dmaCtrl"
.LASF296:
	.string	"ADC_Result_Type"
.LASF40:
	.string	"__tm_year"
.LASF406:
	.string	"ADC_SET_TSVBE_HIGH"
.LASF226:
	.string	"ADC_V18_SEL_1P72V"
.LASF3:
	.string	"signed char"
.LASF141:
	.string	"MASK"
.LASF367:
	.string	"tsen_offset"
.LASF106:
	.string	"_localtime_buf"
.LASF343:
	.string	"bl_adc_start"
.LASF254:
	.string	"ADC_BIAS_SEL_Type"
.LASF124:
	.string	"_unused"
.LASF5:
	.string	"__uint8_t"
.LASF89:
	.string	"_new"
.LASF252:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF87:
	.string	"_cvtlen"
.LASF30:
	.string	"_maxwds"
.LASF113:
	.string	"_l64a_buf"
.LASF351:
	.string	"bl_adc_init"
.LASF211:
	.string	"ADC_CHAN11"
.LASF330:
	.string	"chan_init_table"
.LASF295:
	.string	"volt"
.LASF142:
	.string	"intCallback_Type"
.LASF66:
	.string	"_blksize"
.LASF218:
	.string	"ADC_CHAN_VABT_HALF"
.LASF34:
	.string	"__tm"
.LASF256:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF69:
	.string	"_lock"
.LASF138:
	.string	"ENABLE"
.LASF403:
	.string	"ADC_Read_FIFO"
.LASF173:
	.string	"DMA_BURST_SIZE_1"
.LASF181:
	.string	"DMA_REQ_I2C_RX"
.LASF14:
	.string	"long unsigned int"
.LASF190:
	.string	"DMA_INT_ERR"
.LASF280:
	.string	"v11Sel"
.LASF396:
	.string	"GLB_Set_ADC_CLK"
.LASF175:
	.string	"DMA_BURST_SIZE_8"
.LASF301:
	.string	"ADC_FIFO_Threshold_Type"
.LASF97:
	.string	"_niobs"
.LASF17:
	.string	"wint_t"
.LASF131:
	.string	"int32_t"
.LASF191:
	.string	"DMA_INT_ALL"
.LASF36:
	.string	"__tm_min"
.LASF375:
	.string	"aos_msleep"
.LASF251:
	.string	"ADC_PGA_GAIN_Type"
.LASF46:
	.string	"_dso_handle"
.LASF139:
	.string	"BL_Fun_Type"
.LASF224:
	.string	"ADC_Chan_Type"
.LASF398:
	.string	"ADC_Tsen_Init"
.LASF407:
	.string	"BL602_Delay_MS"
.LASF312:
	.string	"BLOG_LEVEL_ASSERT"
.LASF177:
	.string	"DMA_REQ_UART0_RX"
.LASF279:
	.string	"v18Sel"
.LASF88:
	.string	"_cvtbuf"
.LASF6:
	.string	"unsigned char"
.LASF143:
	.string	"intCbfArra"
.LASF13:
	.string	"__uint32_t"
.LASF304:
	.string	"ADC_FIFO_Cfg_Type"
.LASF322:
	.string	"_fsymf_level_hal_drvbl_adc"
.LASF115:
	.string	"_getdate_err"
.LASF216:
	.string	"ADC_CHAN_VREF"
.LASF42:
	.string	"__tm_yday"
.LASF405:
	.string	"ADC_SET_TSVBE_LOW"
.LASF176:
	.string	"DMA_BURST_SIZE_16"
.LASF348:
	.string	"llicfg"
.LASF52:
	.string	"__sbuf"
.LASF249:
	.string	"ADC_PGA_GAIN_16"
.LASF400:
	.string	"TSEN_Get_Temp"
.LASF324:
	.string	"bl_adc_cb_t"
.LASF342:
	.string	"adc_pin"
.LASF96:
	.string	"_glue"
.LASF170:
	.string	"DMA_TRNS_P2M"
.LASF171:
	.string	"DMA_TRNS_P2P"
.LASF390:
	.string	"ADC_Disable"
.LASF172:
	.string	"DMA_Trans_Dir_Type"
.LASF285:
	.string	"biasSel"
.LASF264:
	.string	"ADC_PGA_VCM_Type"
.LASF333:
	.string	"adcCfg"
.LASF104:
	.string	"_strtok_last"
.LASF111:
	.string	"_mbtowc_state"
.LASF327:
	.string	"channel_data"
.LASF341:
	.string	"bl_adc_gpio_init"
.LASF293:
	.string	"negChan"
.LASF80:
	.string	"_locale"
.LASF20:
	.string	"_ssize_t"
.LASF314:
	.string	"blog_level_t"
.LASF72:
	.string	"_reent"
.LASF10:
	.string	"short unsigned int"
.LASF182:
	.string	"DMA_REQ_I2C_TX"
.LASF366:
	.string	"log_flag"
.LASF362:
	.string	"adc_dma_lli_init"
.LASF418:
	.string	"memcpy"
.LASF282:
	.string	"gain1"
.LASF283:
	.string	"gain2"
.LASF308:
	.string	"BLOG_LEVEL_DEBUG"
.LASF217:
	.string	"ADC_CHAN_DCTEST"
.LASF47:
	.string	"_fntypes"
.LASF416:
	.string	"TSEN_Calibration"
.LASF54:
	.string	"_size"
.LASF1:
	.string	"double"
.LASF167:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF112:
	.string	"_wctomb_state"
.LASF261:
	.string	"ADC_PGA_VCM_1P2V"
.LASF18:
	.string	"_off_t"
.LASF318:
	.string	"blog_info_t"
.LASF65:
	.string	"_nbuf"
.LASF103:
	.string	"_unused_rand"
.LASF178:
	.string	"DMA_REQ_UART0_TX"
.LASF79:
	.string	"_unspecified_locale_info"
.LASF162:
	.string	"SLargerD"
.LASF297:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF71:
	.string	"_flags2"
.LASF298:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF48:
	.string	"_is_cxa"
.LASF385:
	.string	"pvPortMalloc"
.LASF179:
	.string	"DMA_REQ_UART1_RX"
.LASF255:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF100:
	.string	"_seed"
.LASF183:
	.string	"DMA_REQ_SPI_RX"
.LASF408:
	.string	"bl_dma_find_ctx_by_channel"
.LASF302:
	.string	"fifoThreshold"
.LASF412:
	.string	"__locale_t"
.LASF62:
	.string	"_seek"
.LASF29:
	.string	"_next"
.LASF260:
	.string	"ADC_PGA_VCM_1V"
.LASF184:
	.string	"DMA_REQ_SPI_TX"
.LASF372:
	.string	"v_error"
.LASF76:
	.string	"_stderr"
.LASF123:
	.string	"_nmalloc"
.LASF98:
	.string	"_iobs"
.LASF389:
	.string	"bl_dma_irq_register"
.LASF391:
	.string	"ADC_Enable"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
