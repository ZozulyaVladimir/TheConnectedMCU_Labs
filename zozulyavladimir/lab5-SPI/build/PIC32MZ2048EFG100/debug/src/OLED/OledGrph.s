	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:

	.comm	rgbOledBmp,512,4

	.comm	pfnDoRop,4,4

	.comm	modOledCur,4,4
	.align	2
	.globl	OledMoveTo
.LFB4 = .
	.file 1 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/oled/oledgrph.c"
	.loc 1 114 0
	.set	nomips16
	.set	nomicromips
	.ent	OledMoveTo
	.type	OledMoveTo, @function
OledMoveTo:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL0 = .
	addiu	$sp,$sp,-24
.LCFI0 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI1 = .
	move	$fp,$sp
.LCFI2 = .
	sw	$4,24($fp)
	sw	$5,28($fp)
	.loc 1 118 0
	lw	$4,24($fp)
	jal	OledClampXco
	nop

.LVL1 = .
	sw	$2,24($fp)
.LVL2 = .
	.loc 1 119 0
	lw	$4,28($fp)
	jal	OledClampYco
	nop

.LVL3 = .
	sw	$2,28($fp)
.LVL4 = .
	.loc 1 123 0
	lw	$2,24($fp)
.LVL5 = .
	sw	$2,%gp_rel(xcoOledCur)($28)
	.loc 1 124 0
	lw	$2,28($fp)
	sw	$2,%gp_rel(ycoOledCur)($28)
	.loc 1 129 0
	lw	$2,28($fp)
	addiu	$3,$2,7
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$2,$2,3
	sll	$3,$2,7
	lw	$2,24($fp)
	addu	$3,$3,$2
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	addu	$2,$3,$2
	sw	$2,%gp_rel(pbOledCur)($28)
	.loc 1 130 0
	lw	$2,28($fp)
	andi	$2,$2,0x7
	sw	$2,%gp_rel(bnOledCur)($28)
	.loc 1 132 0
	move	$sp,$fp
.LCFI3 = .
.LVL6 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
.LVL7 = .
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledMoveTo
.LFE4:
	.size	OledMoveTo, .-OledMoveTo
	.align	2
	.globl	OledGetPos
.LFB5 = .
	.loc 1 153 0
	.set	nomips16
	.set	nomicromips
	.ent	OledGetPos
	.type	OledGetPos, @function
OledGetPos:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL8 = .
	addiu	$sp,$sp,-8
.LCFI4 = .
	sw	$fp,4($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	sw	$4,8($fp)
	sw	$5,12($fp)
	.loc 1 155 0
	lw	$3,%gp_rel(xcoOledCur)($28)
	lw	$2,8($fp)
	sw	$3,0($2)
	.loc 1 156 0
	lw	$3,%gp_rel(ycoOledCur)($28)
	lw	$2,12($fp)
	sw	$3,0($2)
	.loc 1 158 0
	move	$sp,$fp
.LCFI7 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetPos
.LFE5:
	.size	OledGetPos, .-OledGetPos
	.align	2
	.globl	OledSetDrawColor
.LFB6 = .
	.loc 1 178 0
	.set	nomips16
	.set	nomicromips
	.ent	OledSetDrawColor
	.type	OledSetDrawColor, @function
OledSetDrawColor:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL9 = .
	addiu	$sp,$sp,-8
.LCFI8 = .
	sw	$fp,4($sp)
.LCFI9 = .
	move	$fp,$sp
.LCFI10 = .
	move	$2,$4
	sb	$2,8($fp)
	.loc 1 180 0
	lbu	$2,8($fp)
	andi	$2,$2,0x1
	andi	$2,$2,0x00ff
	sb	$2,%gp_rel(clrOledCur)($28)
	.loc 1 182 0
	move	$sp,$fp
.LCFI11 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledSetDrawColor
.LFE6:
	.size	OledSetDrawColor, .-OledSetDrawColor
	.align	2
	.globl	OledGetStdPattern
.LFB7 = .
	.loc 1 203 0
	.set	nomips16
	.set	nomicromips
	.ent	OledGetStdPattern
	.type	OledGetStdPattern, @function
OledGetStdPattern:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL10 = .
	addiu	$sp,$sp,-8
.LCFI12 = .
	sw	$fp,4($sp)
.LCFI13 = .
	move	$fp,$sp
.LCFI14 = .
	sw	$4,8($fp)
	.loc 1 205 0
	lw	$2,8($fp)
	sll	$2,$2,3
	move	$3,$2
	lui	$2,%hi(rgbFillPat)
	addiu	$2,$2,%lo(rgbFillPat)
	addu	$2,$3,$2
	.loc 1 207 0
	move	$sp,$fp
.LCFI15 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetStdPattern
.LFE7:
	.size	OledGetStdPattern, .-OledGetStdPattern
	.align	2
	.globl	OledSetFillPattern
.LFB8 = .
	.loc 1 228 0
	.set	nomips16
	.set	nomicromips
	.ent	OledSetFillPattern
	.type	OledSetFillPattern, @function
OledSetFillPattern:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL11 = .
	addiu	$sp,$sp,-8
.LCFI16 = .
	sw	$fp,4($sp)
.LCFI17 = .
	move	$fp,$sp
.LCFI18 = .
	sw	$4,8($fp)
	.loc 1 230 0
	lw	$2,8($fp)
	sw	$2,%gp_rel(pbOledPatCur)($28)
	.loc 1 232 0
	move	$sp,$fp
.LCFI19 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledSetFillPattern
.LFE8:
	.size	OledSetFillPattern, .-OledSetFillPattern
	.align	2
	.globl	OledSetDrawMode
.LFB9 = .
	.loc 1 252 0
	.set	nomips16
	.set	nomicromips
	.ent	OledSetDrawMode
	.type	OledSetDrawMode, @function
OledSetDrawMode:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL12 = .
	addiu	$sp,$sp,-8
.LCFI20 = .
	sw	$fp,4($sp)
.LCFI21 = .
	move	$fp,$sp
.LCFI22 = .
	sw	$4,8($fp)
	.loc 1 254 0
	lw	$2,8($fp)
	sw	$2,%gp_rel(modOledCur)($28)
	.loc 1 256 0
	lw	$2,8($fp)
	li	$3,1			# 0x1
	beq	$2,$3,.L9
	nop

	slt	$3,$2,2
	beq	$3,$0,.L10
	nop

	beq	$2,$0,.L11
	nop

	j	.L8
	nop

.L10:
	li	$3,2			# 0x2
	beq	$2,$3,.L12
	nop

	li	$3,3			# 0x3
	beq	$2,$3,.L13
	nop

	j	.L8
	nop

.L11:
	.loc 1 258 0
	lui	$2,%hi(OledRopSet)
	addiu	$2,$2,%lo(OledRopSet)
	sw	$2,%gp_rel(pfnDoRop)($28)
	.loc 1 259 0
	j	.L7
	nop

.LVL13 = .
.L9:
	.loc 1 262 0
	lui	$2,%hi(OledRopOr)
.LVL14 = .
	addiu	$2,$2,%lo(OledRopOr)
	sw	$2,%gp_rel(pfnDoRop)($28)
	.loc 1 263 0
	j	.L7
	nop

.LVL15 = .
.L12:
	.loc 1 266 0
	lui	$2,%hi(OledRopAnd)
.LVL16 = .
	addiu	$2,$2,%lo(OledRopAnd)
	sw	$2,%gp_rel(pfnDoRop)($28)
	.loc 1 267 0
	j	.L7
	nop

.LVL17 = .
.L13:
	.loc 1 270 0
	lui	$2,%hi(OledRopXor)
.LVL18 = .
	addiu	$2,$2,%lo(OledRopXor)
	sw	$2,%gp_rel(pfnDoRop)($28)
	.loc 1 271 0
	j	.L7
	nop

.LVL19 = .
.L8:
	.loc 1 274 0
	sw	$0,%gp_rel(modOledCur)($28)
	.loc 1 275 0
	lui	$2,%hi(OledRopSet)
.LVL20 = .
	addiu	$2,$2,%lo(OledRopSet)
	sw	$2,%gp_rel(pfnDoRop)($28)
.L7:
	.loc 1 278 0
	move	$sp,$fp
.LCFI23 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledSetDrawMode
.LFE9:
	.size	OledSetDrawMode, .-OledSetDrawMode
	.align	2
	.globl	OledGetDrawMode
.LFB10 = .
	.loc 1 298 0
	.set	nomips16
	.set	nomicromips
	.ent	OledGetDrawMode
	.type	OledGetDrawMode, @function
OledGetDrawMode:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI24 = .
	sw	$fp,4($sp)
.LCFI25 = .
	move	$fp,$sp
.LCFI26 = .
	.loc 1 300 0
	lw	$2,%gp_rel(modOledCur)($28)
	.loc 1 302 0
	move	$sp,$fp
.LCFI27 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetDrawMode
.LFE10:
	.size	OledGetDrawMode, .-OledGetDrawMode
	.align	2
	.globl	OledDrawPixel
.LFB11 = .
	.loc 1 323 0
	.set	nomips16
	.set	nomicromips
	.ent	OledDrawPixel
	.type	OledDrawPixel, @function
OledDrawPixel:
	.frame	$fp,32,$31		# vars= 0, regs= 3/0, args= 16, gp= 0
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI28 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
	sw	$16,20($sp)
.LCFI29 = .
	move	$fp,$sp
.LCFI30 = .
	.loc 1 325 0
	lw	$16,%gp_rel(pbOledCur)($28)
	lw	$2,%gp_rel(pfnDoRop)($28)
	lbu	$3,%gp_rel(clrOledCur)($28)
	move	$4,$3
	lw	$3,%gp_rel(bnOledCur)($28)
	sll	$3,$4,$3
	andi	$4,$3,0x00ff
	lw	$3,%gp_rel(pbOledCur)($28)
	lbu	$5,0($3)
	lw	$3,%gp_rel(bnOledCur)($28)
	li	$6,1			# 0x1
	sll	$3,$6,$3
	andi	$3,$3,0x00ff
	move	$6,$3
	jalr	$2
	nop

.LVL21 = .
	sb	$2,0($16)
	.loc 1 327 0
	move	$sp,$fp
.LCFI31 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	lw	$16,20($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDrawPixel
.LFE11:
	.size	OledDrawPixel, .-OledDrawPixel
	.align	2
	.globl	OledGetPixel
.LFB12 = .
	.loc 1 347 0
	.set	nomips16
	.set	nomicromips
	.ent	OledGetPixel
	.type	OledGetPixel, @function
OledGetPixel:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI32 = .
	sw	$fp,4($sp)
.LCFI33 = .
	move	$fp,$sp
.LCFI34 = .
	.loc 1 349 0
	lw	$2,%gp_rel(pbOledCur)($28)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,%gp_rel(bnOledCur)($28)
	sra	$2,$3,$2
	andi	$2,$2,0x1
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	.loc 1 351 0
	move	$sp,$fp
.LCFI35 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetPixel
.LFE12:
	.size	OledGetPixel, .-OledGetPixel
	.align	2
	.globl	OledLineTo
.LFB13 = .
	.loc 1 373 0
	.set	nomips16
	.set	nomicromips
	.ent	OledLineTo
	.type	OledLineTo, @function
OledLineTo:
	.frame	$fp,56,$31		# vars= 32, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL22 = .
	addiu	$sp,$sp,-56
.LCFI36 = .
	sw	$31,52($sp)
	sw	$fp,48($sp)
.LCFI37 = .
	move	$fp,$sp
.LCFI38 = .
	sw	$4,56($fp)
	sw	$5,60($fp)
	.loc 1 385 0
	lw	$4,56($fp)
	jal	OledClampXco
	nop

.LVL23 = .
	sw	$2,56($fp)
.LVL24 = .
	.loc 1 386 0
	lw	$4,60($fp)
	jal	OledClampYco
	nop

.LVL25 = .
	sw	$2,60($fp)
.LVL26 = .
	.loc 1 390 0
	lw	$2,%gp_rel(xcoOledCur)($28)
.LVL27 = .
	lw	$3,56($fp)
	subu	$2,$3,$2
	sw	$2,40($fp)
.LVL28 = .
	.loc 1 391 0
	lw	$2,%gp_rel(ycoOledCur)($28)
.LVL29 = .
	lw	$3,60($fp)
	subu	$2,$3,$2
	sw	$2,44($fp)
.LVL30 = .
	.loc 1 392 0
	lw	$2,40($fp)
.LVL31 = .
	sra	$2,$2,31
	lw	$3,40($fp)
	xor	$3,$2,$3
	subu	$3,$3,$2
	lw	$2,44($fp)
	sra	$4,$2,31
	lw	$2,44($fp)
	xor	$2,$4,$2
	subu	$2,$2,$4
	slt	$2,$3,$2
	bne	$2,$0,.L21
	nop

	.loc 1 395 0
	lw	$2,40($fp)
	sra	$2,$2,31
	lw	$3,40($fp)
	xor	$3,$2,$3
	subu	$2,$3,$2
	sw	$2,24($fp)
.LVL32 = .
	.loc 1 396 0
	lw	$2,44($fp)
.LVL33 = .
	sra	$2,$2,31
	lw	$3,44($fp)
	xor	$3,$2,$3
	subu	$2,$3,$2
	sw	$2,20($fp)
.LVL34 = .
	.loc 1 397 0
	lw	$2,40($fp)
.LVL35 = .
	bltz	$2,.L22
	nop

	.loc 1 398 0
	lui	$2,%hi(OledMoveRight)
	addiu	$2,$2,%lo(OledMoveRight)
	sw	$2,32($fp)
.LVL36 = .
	j	.L23
	nop

.LVL37 = .
.L22:
	.loc 1 401 0
	lui	$2,%hi(OledMoveLeft)
.LVL38 = .
	addiu	$2,$2,%lo(OledMoveLeft)
	sw	$2,32($fp)
.LVL39 = .
.L23:
	.loc 1 404 0
	lw	$2,44($fp)
	bltz	$2,.L24
	nop

	.loc 1 405 0
	lui	$2,%hi(OledMoveDown)
	addiu	$2,$2,%lo(OledMoveDown)
	sw	$2,36($fp)
.LVL40 = .
	j	.L26
	nop

.LVL41 = .
.L24:
	.loc 1 408 0
	lui	$2,%hi(OledMoveUp)
	addiu	$2,$2,%lo(OledMoveUp)
	sw	$2,36($fp)
.LVL42 = .
	j	.L26
	nop

.LVL43 = .
.L21:
	.loc 1 414 0
	lw	$2,44($fp)
	sra	$2,$2,31
	lw	$3,44($fp)
	xor	$3,$2,$3
	subu	$2,$3,$2
	sw	$2,24($fp)
.LVL44 = .
	.loc 1 415 0
	lw	$2,40($fp)
.LVL45 = .
	sra	$2,$2,31
	lw	$3,40($fp)
	xor	$3,$2,$3
	subu	$2,$3,$2
	sw	$2,20($fp)
.LVL46 = .
	.loc 1 416 0
	lw	$2,44($fp)
.LVL47 = .
	bltz	$2,.L27
	nop

	.loc 1 417 0
	lui	$2,%hi(OledMoveDown)
	addiu	$2,$2,%lo(OledMoveDown)
	sw	$2,32($fp)
.LVL48 = .
	j	.L28
	nop

.LVL49 = .
.L27:
	.loc 1 420 0
	lui	$2,%hi(OledMoveUp)
	addiu	$2,$2,%lo(OledMoveUp)
	sw	$2,32($fp)
.LVL50 = .
.L28:
	.loc 1 423 0
	lw	$2,40($fp)
	bltz	$2,.L29
	nop

	.loc 1 424 0
	lui	$2,%hi(OledMoveRight)
	addiu	$2,$2,%lo(OledMoveRight)
	sw	$2,36($fp)
.LVL51 = .
	j	.L26
	nop

.LVL52 = .
.L29:
	.loc 1 427 0
	lui	$2,%hi(OledMoveLeft)
	addiu	$2,$2,%lo(OledMoveLeft)
	sw	$2,36($fp)
.LVL53 = .
.L26:
	.loc 1 439 0
	lw	$2,24($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,16($fp)
.LVL54 = .
	.loc 1 440 0
	lw	$2,24($fp)
.LVL55 = .
	sw	$2,28($fp)
.LVL56 = .
	.loc 1 441 0
	j	.L30
	nop

.LVL57 = .
.L32:
	.loc 1 442 0
	jal	OledDrawPixel
	nop

.LVL58 = .
	.loc 1 443 0
	lw	$2,32($fp)
	jalr	$2
	nop

.LVL59 = .
	.loc 1 444 0
	lw	$3,16($fp)
	lw	$2,20($fp)
	addu	$2,$3,$2
	sw	$2,16($fp)
.LVL60 = .
	.loc 1 445 0
	lw	$3,16($fp)
	lw	$2,24($fp)
.LVL61 = .
	slt	$2,$2,$3
	beq	$2,$0,.L31
	nop

	.loc 1 446 0
	lw	$3,16($fp)
	lw	$2,24($fp)
	subu	$2,$3,$2
	sw	$2,16($fp)
.LVL62 = .
	.loc 1 447 0
	lw	$2,36($fp)
.LVL63 = .
	jalr	$2
	nop

.LVL64 = .
.L31:
	.loc 1 449 0
	lw	$2,28($fp)
	addiu	$2,$2,-1
	sw	$2,28($fp)
.LVL65 = .
.L30:
	.loc 1 441 0
	lw	$2,28($fp)
	bgtz	$2,.L32
	nop

	.loc 1 454 0
	lw	$2,56($fp)
	sw	$2,%gp_rel(xcoOledCur)($28)
	.loc 1 455 0
	lw	$2,60($fp)
	sw	$2,%gp_rel(ycoOledCur)($28)
	.loc 1 457 0
	move	$sp,$fp
.LCFI39 = .
.LVL66 = .
	lw	$31,52($sp)
	lw	$fp,48($sp)
.LVL67 = .
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledLineTo
.LFE13:
	.size	OledLineTo, .-OledLineTo
	.align	2
	.globl	OledDrawRect
.LFB14 = .
	.loc 1 479 0
	.set	nomips16
	.set	nomicromips
	.ent	OledDrawRect
	.type	OledDrawRect, @function
OledDrawRect:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL68 = .
	addiu	$sp,$sp,-32
.LCFI40 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI41 = .
	move	$fp,$sp
.LCFI42 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 485 0
	lw	$4,32($fp)
	jal	OledClampXco
	nop

.LVL69 = .
	sw	$2,32($fp)
.LVL70 = .
	.loc 1 486 0
	lw	$4,36($fp)
	jal	OledClampYco
	nop

.LVL71 = .
	sw	$2,36($fp)
.LVL72 = .
	.loc 1 488 0
	lw	$2,%gp_rel(xcoOledCur)($28)
.LVL73 = .
	sw	$2,16($fp)
.LVL74 = .
	.loc 1 489 0
	lw	$2,%gp_rel(ycoOledCur)($28)
.LVL75 = .
	sw	$2,20($fp)
.LVL76 = .
	.loc 1 490 0
	lw	$4,32($fp)
	lw	$5,20($fp)
	jal	OledLineTo
	nop

.LVL77 = .
	.loc 1 491 0
	lw	$4,32($fp)
	lw	$5,36($fp)
	jal	OledLineTo
	nop

.LVL78 = .
	.loc 1 492 0
	lw	$4,16($fp)
	lw	$5,36($fp)
	jal	OledLineTo
	nop

.LVL79 = .
	.loc 1 493 0
	lw	$4,16($fp)
	lw	$5,20($fp)
	jal	OledLineTo
	nop

.LVL80 = .
	.loc 1 494 0
	move	$sp,$fp
.LCFI43 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
.LVL81 = .
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDrawRect
.LFE14:
	.size	OledDrawRect, .-OledDrawRect
	.align	2
	.globl	OledFillRect
.LFB15 = .
	.loc 1 516 0
	.set	nomips16
	.set	nomicromips
	.ent	OledFillRect
	.type	OledFillRect, @function
OledFillRect:
	.frame	$fp,64,$31		# vars= 40, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL82 = .
	addiu	$sp,$sp,-64
.LCFI44 = .
	sw	$31,60($sp)
	sw	$fp,56($sp)
.LCFI45 = .
	move	$fp,$sp
.LCFI46 = .
	sw	$4,64($fp)
	sw	$5,68($fp)
	.loc 1 530 0
	lw	$4,64($fp)
	jal	OledClampXco
	nop

.LVL83 = .
	sw	$2,64($fp)
.LVL84 = .
	.loc 1 531 0
	lw	$4,68($fp)
	jal	OledClampYco
	nop

.LVL85 = .
	sw	$2,68($fp)
.LVL86 = .
	.loc 1 535 0
	lw	$3,%gp_rel(xcoOledCur)($28)
	lw	$2,64($fp)
.LVL87 = .
	slt	$2,$3,$2
	beq	$2,$0,.L35
	nop

	.loc 1 536 0
	lw	$2,%gp_rel(xcoOledCur)($28)
	sw	$2,16($fp)
.LVL88 = .
	.loc 1 537 0
	lw	$2,64($fp)
.LVL89 = .
	sw	$2,20($fp)
.LVL90 = .
	j	.L36
	nop

.LVL91 = .
.L35:
	.loc 1 540 0
	lw	$2,64($fp)
	sw	$2,16($fp)
.LVL92 = .
	.loc 1 541 0
	lw	$2,%gp_rel(xcoOledCur)($28)
.LVL93 = .
	sw	$2,20($fp)
.LVL94 = .
.L36:
	.loc 1 544 0
	lw	$3,%gp_rel(ycoOledCur)($28)
	lw	$2,68($fp)
	slt	$2,$3,$2
	beq	$2,$0,.L37
	nop

	.loc 1 545 0
	lw	$2,%gp_rel(ycoOledCur)($28)
	sw	$2,24($fp)
.LVL95 = .
	.loc 1 546 0
	lw	$2,68($fp)
.LVL96 = .
	sw	$2,28($fp)
.LVL97 = .
	.loc 1 554 0
	j	.L39
	nop

.LVL98 = .
.L37:
	.loc 1 549 0
	lw	$2,68($fp)
	sw	$2,24($fp)
.LVL99 = .
	.loc 1 550 0
	lw	$2,%gp_rel(ycoOledCur)($28)
.LVL100 = .
	sw	$2,28($fp)
.LVL101 = .
	.loc 1 554 0
	j	.L39
	nop

.LVL102 = .
.L43:
	.loc 1 558 0
	lw	$2,24($fp)
	addiu	$3,$2,7
.LVL103 = .
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$2,$2,3
	sll	$3,$2,7
	lw	$2,16($fp)
	addu	$3,$3,$2
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	addu	$2,$3,$2
	sw	$2,48($fp)
.LVL104 = .
	.loc 1 563 0
	lw	$2,24($fp)
.LVL105 = .
	andi	$2,$2,0x7
	li	$3,1			# 0x1
	sll	$2,$3,$2
	andi	$2,$2,0x00ff
	addiu	$2,$2,-1
	sb	$2,44($fp)
.LVL106 = .
	.loc 1 570 0
	lw	$2,24($fp)
.LVL107 = .
	addiu	$3,$2,7
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$2,$2,3
	move	$3,$2
	lw	$2,28($fp)
	addiu	$4,$2,7
	slt	$5,$2,0
	movn	$2,$4,$5
	sra	$2,$2,3
	bne	$3,$2,.L40
	nop

	.loc 1 571 0
	lw	$2,28($fp)
	andi	$2,$2,0x7
	addiu	$2,$2,1
	li	$3,1			# 0x1
	sll	$2,$3,$2
	andi	$2,$2,0x00ff
	subu	$2,$0,$2
	andi	$2,$2,0x00ff
	seb	$3,$2
	lb	$2,44($fp)
	or	$2,$3,$2
	seb	$2,$2
	sb	$2,44($fp)
.LVL108 = .
.L40:
	.loc 1 573 0
	lw	$2,16($fp)
	andi	$2,$2,0x7
	sw	$2,32($fp)
.LVL109 = .
	.loc 1 574 0
	lw	$2,16($fp)
.LVL110 = .
	sw	$2,40($fp)
.LVL111 = .
	.loc 1 575 0
	lw	$2,48($fp)
.LVL112 = .
	sw	$2,36($fp)
.LVL113 = .
	.loc 1 580 0
	j	.L41
	nop

.LVL114 = .
.L42:
	.loc 1 581 0
	lw	$2,%gp_rel(pfnDoRop)($28)
	lw	$4,%gp_rel(pbOledPatCur)($28)
	lw	$3,32($fp)
.LVL115 = .
	addu	$3,$4,$3
	lbu	$4,0($3)
	lw	$3,36($fp)
	lbu	$5,0($3)
	lbu	$3,44($fp)
	nor	$3,$0,$3
	andi	$3,$3,0x00ff
	move	$6,$3
	jalr	$2
	nop

.LVL116 = .
	move	$3,$2
	lw	$2,36($fp)
	sb	$3,0($2)
	.loc 1 582 0
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
.LVL117 = .
	.loc 1 583 0
	lw	$2,36($fp)
.LVL118 = .
	addiu	$2,$2,1
	sw	$2,36($fp)
.LVL119 = .
	.loc 1 584 0
	lw	$2,32($fp)
.LVL120 = .
	addiu	$2,$2,1
	sw	$2,32($fp)
.LVL121 = .
	.loc 1 585 0
	lw	$2,32($fp)
	slt	$2,$2,8
.LVL122 = .
	bne	$2,$0,.L41
	nop

	.loc 1 586 0
	sw	$0,32($fp)
.LVL123 = .
.L41:
	.loc 1 580 0
	lw	$3,40($fp)
	lw	$2,20($fp)
	slt	$2,$2,$3
	beq	$2,$0,.L42
	nop

	.loc 1 592 0
	lw	$2,24($fp)
	addiu	$3,$2,7
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$2,$2,3
	addiu	$2,$2,1
	sll	$2,$2,3
	sw	$2,24($fp)
.LVL124 = .
.L39:
	.loc 1 554 0
	lw	$3,24($fp)
	lw	$2,28($fp)
	slt	$2,$2,$3
	beq	$2,$0,.L43
	nop

	.loc 1 596 0
	move	$sp,$fp
.LCFI47 = .
.LVL125 = .
	lw	$31,60($sp)
	lw	$fp,56($sp)
.LVL126 = .
	addiu	$sp,$sp,64
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledFillRect
.LFE15:
	.size	OledFillRect, .-OledFillRect
	.align	2
	.globl	OledGetBmp
.LFB16 = .
	.loc 1 622 0
	.set	nomips16
	.set	nomicromips
	.ent	OledGetBmp
	.type	OledGetBmp, @function
OledGetBmp:
	.frame	$fp,56,$31		# vars= 48, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL127 = .
	addiu	$sp,$sp,-56
.LCFI48 = .
	sw	$fp,52($sp)
.LCFI49 = .
	move	$fp,$sp
.LCFI50 = .
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	.loc 1 638 0
	lw	$2,%gp_rel(xcoOledCur)($28)
	sw	$2,36($fp)
.LVL128 = .
	.loc 1 639 0
	lw	$3,36($fp)
	lw	$2,56($fp)
.LVL129 = .
	addu	$2,$3,$2
	sw	$2,0($fp)
.LVL130 = .
	.loc 1 640 0
	lw	$2,0($fp)
	slt	$2,$2,128
.LVL131 = .
	bne	$2,$0,.L45
	nop

	.loc 1 641 0
	li	$2,127			# 0x7f
	sw	$2,0($fp)
.LVL132 = .
.L45:
	.loc 1 644 0
	lw	$2,%gp_rel(ycoOledCur)($28)
	sw	$2,4($fp)
.LVL133 = .
	.loc 1 645 0
	lw	$3,4($fp)
.LVL134 = .
	lw	$2,60($fp)
.LVL135 = .
	addu	$2,$3,$2
	sw	$2,8($fp)
.LVL136 = .
	.loc 1 646 0
	lw	$2,8($fp)
	slt	$2,$2,32
.LVL137 = .
	bne	$2,$0,.L46
	nop

	.loc 1 647 0
	li	$2,31			# 0x1f
	sw	$2,8($fp)
.LVL138 = .
.L46:
	.loc 1 650 0
	lw	$2,4($fp)
	andi	$2,$2,0x7
	sw	$2,40($fp)
.LVL139 = .
	.loc 1 651 0
	lw	$2,4($fp)
.LVL140 = .
	addiu	$3,$2,7
.LVL141 = .
	slt	$4,$2,0
.LVL142 = .
	movn	$2,$3,$4
	sra	$2,$2,3
	sll	$3,$2,7
	lw	$2,36($fp)
	addu	$3,$3,$2
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	addu	$2,$3,$2
	sw	$2,16($fp)
.LVL143 = .
	.loc 1 652 0
	lw	$2,64($fp)
.LVL144 = .
	sw	$2,24($fp)
.LVL145 = .
	.loc 1 654 0
	j	.L47
	nop

.LVL146 = .
.L56:
	.loc 1 656 0
	lw	$2,4($fp)
	addiu	$3,$2,7
.LVL147 = .
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$2,$2,3
	move	$3,$2
	lw	$2,8($fp)
	addiu	$2,$2,-1
	addiu	$4,$2,7
	slt	$5,$2,0
	movn	$2,$4,$5
	sra	$2,$2,3
	bne	$3,$2,.L48
	nop

	.loc 1 657 0
	lw	$2,8($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0x7
	addiu	$2,$2,1
	li	$3,1			# 0x1
	sll	$2,$3,$2
	andi	$2,$2,0x00ff
	addiu	$2,$2,-1
	sb	$2,32($fp)
.LVL148 = .
	j	.L49
	nop

.LVL149 = .
.L48:
	.loc 1 660 0
	li	$2,-1			# 0xffffffffffffffff
	sb	$2,32($fp)
.LVL150 = .
.L49:
	.loc 1 663 0
	lw	$2,36($fp)
	sw	$2,28($fp)
.LVL151 = .
	.loc 1 664 0
	lw	$2,16($fp)
.LVL152 = .
	sw	$2,12($fp)
.LVL153 = .
	.loc 1 665 0
	lw	$2,24($fp)
.LVL154 = .
	sw	$2,20($fp)
.LVL155 = .
	.loc 1 670 0
	lw	$2,40($fp)
.LVL156 = .
	bne	$2,$0,.L50
	nop

	.loc 1 671 0
	j	.L51
	nop

.LVL157 = .
.L52:
	.loc 1 672 0
	lw	$2,12($fp)
	lbu	$3,0($2)
.LVL158 = .
	lbu	$2,32($fp)
	and	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,20($fp)
	sb	$3,0($2)
	.loc 1 673 0
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
.LVL159 = .
	.loc 1 674 0
	lw	$2,20($fp)
.LVL160 = .
	addiu	$2,$2,1
	sw	$2,20($fp)
.LVL161 = .
	.loc 1 675 0
	lw	$2,12($fp)
.LVL162 = .
	addiu	$2,$2,1
	sw	$2,12($fp)
.LVL163 = .
.L51:
	.loc 1 671 0
	lw	$3,28($fp)
	lw	$2,0($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L52
	nop

	j	.L53
	nop

.LVL164 = .
.L50:
	.loc 1 679 0
	j	.L54
	nop

.LVL165 = .
.L55:
	.loc 1 680 0
	lw	$2,12($fp)
	lbu	$2,0($2)
	sb	$2,44($fp)
.LVL166 = .
	.loc 1 681 0
	lw	$2,12($fp)
.LVL167 = .
	lbu	$2,128($2)
.LVL168 = .
	sb	$2,44($fp)
.LVL169 = .
	.loc 1 682 0
	lw	$2,12($fp)
.LVL170 = .
	lbu	$2,0($2)
	move	$3,$2
.LVL171 = .
	lw	$2,40($fp)
	sra	$2,$3,$2
	seb	$3,$2
	.loc 1 683 0
	lw	$2,12($fp)
	addiu	$2,$2,128
	lbu	$2,0($2)
	move	$4,$2
	li	$5,8			# 0x8
	lw	$2,40($fp)
	subu	$2,$5,$2
	sll	$2,$4,$2
	.loc 1 682 0
	seb	$2,$2
	or	$2,$3,$2
	seb	$3,$2
	lb	$2,32($fp)
	and	$2,$3,$2
	seb	$2,$2
	andi	$3,$2,0x00ff
	lw	$2,20($fp)
	sb	$3,0($2)
	.loc 1 684 0
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
.LVL172 = .
	.loc 1 685 0
	lw	$2,20($fp)
.LVL173 = .
	addiu	$2,$2,1
	sw	$2,20($fp)
.LVL174 = .
	.loc 1 686 0
	lw	$2,12($fp)
.LVL175 = .
	addiu	$2,$2,1
	sw	$2,12($fp)
.LVL176 = .
.L54:
	.loc 1 679 0
	lw	$3,28($fp)
	lw	$2,0($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L55
	nop

.LVL177 = .
.L53:
	.loc 1 692 0
	lw	$2,4($fp)
	addiu	$2,$2,8
	sw	$2,4($fp)
.LVL178 = .
	.loc 1 693 0
	lw	$2,16($fp)
.LVL179 = .
	addiu	$2,$2,128
	sw	$2,16($fp)
.LVL180 = .
	.loc 1 694 0
	lw	$2,56($fp)
.LVL181 = .
	lw	$3,24($fp)
.LVL182 = .
	addu	$2,$3,$2
	sw	$2,24($fp)
.LVL183 = .
.L47:
	.loc 1 654 0
	lw	$3,4($fp)
	lw	$2,8($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L56
	nop

	.loc 1 698 0
	move	$sp,$fp
.LCFI51 = .
.LVL184 = .
	lw	$fp,52($sp)
.LVL185 = .
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledGetBmp
.LFE16:
	.size	OledGetBmp, .-OledGetBmp
	.align	2
	.globl	OledPutBmp
.LFB17 = .
	.loc 1 721 0
	.set	nomips16
	.set	nomicromips
	.ent	OledPutBmp
	.type	OledPutBmp, @function
OledPutBmp:
	.frame	$fp,80,$31		# vars= 56, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL186 = .
	addiu	$sp,$sp,-80
.LCFI52 = .
	sw	$31,76($sp)
	sw	$fp,72($sp)
.LCFI53 = .
	move	$fp,$sp
.LCFI54 = .
	sw	$4,80($fp)
	sw	$5,84($fp)
	sw	$6,88($fp)
	.loc 1 742 0
	lw	$2,%gp_rel(xcoOledCur)($28)
	sw	$2,56($fp)
.LVL187 = .
	.loc 1 743 0
	lw	$3,56($fp)
	lw	$2,80($fp)
.LVL188 = .
	addu	$2,$3,$2
	sw	$2,16($fp)
.LVL189 = .
	.loc 1 744 0
	lw	$2,16($fp)
	slt	$2,$2,128
.LVL190 = .
	bne	$2,$0,.L58
	nop

	.loc 1 745 0
	li	$2,127			# 0x7f
	sw	$2,16($fp)
.LVL191 = .
.L58:
	.loc 1 748 0
	lw	$2,%gp_rel(ycoOledCur)($28)
	sw	$2,20($fp)
.LVL192 = .
	.loc 1 749 0
	lw	$3,20($fp)
.LVL193 = .
	lw	$2,84($fp)
.LVL194 = .
	addu	$2,$3,$2
	sw	$2,24($fp)
.LVL195 = .
	.loc 1 750 0
	lw	$2,24($fp)
	slt	$2,$2,32
.LVL196 = .
	bne	$2,$0,.L59
	nop

	.loc 1 751 0
	li	$2,31			# 0x1f
	sw	$2,24($fp)
.LVL197 = .
.L59:
	.loc 1 754 0
	lw	$2,20($fp)
	andi	$2,$2,0x7
	sw	$2,60($fp)
.LVL198 = .
	.loc 1 755 0
	li	$3,1			# 0x1
.LVL199 = .
	lw	$2,60($fp)
	sll	$2,$3,$2
.LVL200 = .
	andi	$2,$2,0x00ff
	addiu	$2,$2,-1
	sb	$2,64($fp)
.LVL201 = .
	.loc 1 756 0
	lbu	$2,64($fp)
	nor	$2,$0,$2
.LVL202 = .
	sb	$2,65($fp)
.LVL203 = .
	.loc 1 757 0
	lw	$2,20($fp)
.LVL204 = .
	addiu	$3,$2,7
	slt	$4,$2,0
.LVL205 = .
	movn	$2,$3,$4
	sra	$2,$2,3
	sll	$3,$2,7
	lw	$2,56($fp)
	addu	$3,$3,$2
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	addu	$2,$3,$2
	sw	$2,32($fp)
.LVL206 = .
	.loc 1 758 0
	lw	$2,88($fp)
.LVL207 = .
	sw	$2,40($fp)
.LVL208 = .
	.loc 1 759 0
	li	$2,1			# 0x1
.LVL209 = .
	sw	$2,52($fp)
.LVL210 = .
	.loc 1 761 0
	j	.L60
	nop

.LVL211 = .
.L71:
	.loc 1 767 0
	lw	$2,20($fp)
	addiu	$3,$2,7
.LVL212 = .
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$2,$2,3
	move	$3,$2
	lw	$2,24($fp)
	addiu	$2,$2,-1
	addiu	$4,$2,7
	slt	$5,$2,0
	movn	$2,$4,$5
	sra	$2,$2,3
	bne	$3,$2,.L61
	nop

	.loc 1 768 0
	lw	$2,24($fp)
	addiu	$2,$2,-1
	andi	$2,$2,0x7
	addiu	$2,$2,1
	li	$3,1			# 0x1
	sll	$2,$3,$2
	andi	$2,$2,0x00ff
	addiu	$2,$2,-1
	sb	$2,49($fp)
.LVL213 = .
	j	.L62
	nop

.LVL214 = .
.L61:
	.loc 1 771 0
	li	$2,-1			# 0xffffffffffffffff
	sb	$2,49($fp)
.LVL215 = .
.L62:
	.loc 1 773 0
	lw	$2,52($fp)
	beq	$2,$0,.L63
	nop

	.loc 1 774 0
	lb	$2,64($fp)
	nor	$2,$0,$2
	seb	$3,$2
	lb	$2,49($fp)
	and	$2,$3,$2
	seb	$2,$2
	sb	$2,49($fp)
.LVL216 = .
.L63:
	.loc 1 777 0
	lw	$2,56($fp)
	sw	$2,44($fp)
.LVL217 = .
	.loc 1 778 0
	lw	$2,32($fp)
.LVL218 = .
	sw	$2,28($fp)
.LVL219 = .
	.loc 1 779 0
	lw	$2,40($fp)
.LVL220 = .
	sw	$2,36($fp)
.LVL221 = .
	.loc 1 784 0
	lw	$2,60($fp)
.LVL222 = .
	bne	$2,$0,.L64
	nop

	.loc 1 785 0
	j	.L65
	nop

.LVL223 = .
.L66:
	.loc 1 786 0
	lw	$2,%gp_rel(pfnDoRop)($28)
	lw	$3,36($fp)
.LVL224 = .
	lbu	$4,0($3)
	lw	$3,28($fp)
	lbu	$5,0($3)
	lbu	$3,49($fp)
	move	$6,$3
	jalr	$2
	nop

.LVL225 = .
	move	$3,$2
	lw	$2,28($fp)
	sb	$3,0($2)
	.loc 1 787 0
	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
.LVL226 = .
	.loc 1 788 0
	lw	$2,28($fp)
.LVL227 = .
	addiu	$2,$2,1
	sw	$2,28($fp)
.LVL228 = .
	.loc 1 789 0
	lw	$2,36($fp)
.LVL229 = .
	addiu	$2,$2,1
	sw	$2,36($fp)
.LVL230 = .
.L65:
	.loc 1 785 0
	lw	$3,44($fp)
	lw	$2,16($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L66
	nop

	j	.L67
	nop

.LVL231 = .
.L64:
	.loc 1 793 0
	j	.L68
	nop

.LVL232 = .
.L70:
	.loc 1 794 0
	lw	$2,36($fp)
	lbu	$2,0($2)
	move	$3,$2
.LVL233 = .
	lw	$2,60($fp)
	sll	$2,$3,$2
	sb	$2,48($fp)
.LVL234 = .
	.loc 1 795 0
	lw	$2,52($fp)
.LVL235 = .
	bne	$2,$0,.L69
	nop

	.loc 1 796 0
	lw	$2,80($fp)
	subu	$2,$0,$2
	lw	$3,36($fp)
	addu	$2,$3,$2
	lbu	$2,0($2)
	move	$3,$2
	li	$4,8			# 0x8
	lw	$2,60($fp)
	subu	$2,$4,$2
	sra	$2,$3,$2
	seb	$3,$2
	lb	$2,65($fp)
	nor	$2,$0,$2
	seb	$2,$2
	and	$2,$3,$2
	seb	$3,$2
	lb	$2,48($fp)
	or	$2,$3,$2
	seb	$2,$2
	sb	$2,48($fp)
.LVL236 = .
.L69:
	.loc 1 798 0
	lbu	$3,48($fp)
	lbu	$2,49($fp)
	and	$2,$3,$2
	sb	$2,48($fp)
.LVL237 = .
	.loc 1 799 0
	lw	$2,%gp_rel(pfnDoRop)($28)
.LVL238 = .
	lw	$3,28($fp)
	lbu	$5,0($3)
	lbu	$4,48($fp)
	lbu	$3,49($fp)
	move	$6,$3
	jalr	$2
	nop

.LVL239 = .
	move	$3,$2
	lw	$2,28($fp)
	sb	$3,0($2)
	.loc 1 800 0
	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
.LVL240 = .
	.loc 1 801 0
	lw	$2,28($fp)
.LVL241 = .
	addiu	$2,$2,1
	sw	$2,28($fp)
.LVL242 = .
	.loc 1 802 0
	lw	$2,36($fp)
.LVL243 = .
	addiu	$2,$2,1
	sw	$2,36($fp)
.LVL244 = .
.L68:
	.loc 1 793 0
	lw	$3,44($fp)
	lw	$2,16($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L70
	nop

.LVL245 = .
.L67:
	.loc 1 808 0
	lw	$2,20($fp)
	addiu	$3,$2,7
.LVL246 = .
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$2,$2,3
	addiu	$2,$2,1
	sll	$2,$2,3
	sw	$2,20($fp)
.LVL247 = .
	.loc 1 809 0
	lw	$2,32($fp)
.LVL248 = .
	addiu	$2,$2,128
	sw	$2,32($fp)
.LVL249 = .
	.loc 1 810 0
	lw	$2,80($fp)
.LVL250 = .
	lw	$3,40($fp)
	addu	$2,$3,$2
	sw	$2,40($fp)
.LVL251 = .
	.loc 1 811 0
	sw	$0,52($fp)
.LVL252 = .
.L60:
	.loc 1 761 0
	lw	$3,20($fp)
	lw	$2,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L71
	nop

	.loc 1 815 0
	move	$sp,$fp
.LCFI55 = .
.LVL253 = .
	lw	$31,76($sp)
	lw	$fp,72($sp)
.LVL254 = .
	addiu	$sp,$sp,80
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledPutBmp
.LFE17:
	.size	OledPutBmp, .-OledPutBmp
	.align	2
	.globl	OledDrawChar
.LFB18 = .
	.loc 1 836 0
	.set	nomips16
	.set	nomicromips
	.ent	OledDrawChar
	.type	OledDrawChar, @function
OledDrawChar:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL255 = .
	addiu	$sp,$sp,-32
.LCFI56 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI57 = .
	move	$fp,$sp
.LCFI58 = .
	move	$2,$4
	sb	$2,32($fp)
	.loc 1 841 0
	lb	$2,32($fp)
	bgez	$2,.L73
	nop

	.loc 1 842 0
	j	.L72
	nop

.L73:
	.loc 1 845 0
	lb	$2,32($fp)
	slt	$2,$2,32
	beq	$2,$0,.L75
	nop

	.loc 1 846 0
	lw	$3,%gp_rel(pbOledFontUser)($28)
	lb	$2,32($fp)
	sll	$2,$2,3
	addu	$2,$3,$2
	sw	$2,16($fp)
.LVL256 = .
	j	.L76
	nop

.LVL257 = .
.L75:
	.loc 1 848 0
	lb	$2,32($fp)
	bltz	$2,.L76
	nop

	.loc 1 849 0
	lw	$3,%gp_rel(pbOledFontCur)($28)
	lb	$2,32($fp)
	addiu	$2,$2,-32
	sll	$2,$2,3
	addu	$2,$3,$2
	sw	$2,16($fp)
.LVL258 = .
.L76:
	.loc 1 852 0
	lw	$2,%gp_rel(pbOledCur)($28)
	sw	$2,20($fp)
.LVL259 = .
	.loc 1 854 0
	lw	$3,%gp_rel(dxcoOledFontCur)($28)
	lw	$2,%gp_rel(dycoOledFontCur)($28)
.LVL260 = .
	move	$4,$3
.LVL261 = .
	move	$5,$2
	lw	$6,16($fp)
	jal	OledPutBmp
	nop

.LVL262 = .
	.loc 1 856 0
	lw	$3,%gp_rel(xcoOledCur)($28)
	lw	$2,%gp_rel(dxcoOledFontCur)($28)
	addu	$2,$3,$2
	sw	$2,%gp_rel(xcoOledCur)($28)
.LVL263 = .
.L72:
	.loc 1 858 0
	move	$sp,$fp
.LCFI59 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDrawChar
.LFE18:
	.size	OledDrawChar, .-OledDrawChar
	.align	2
	.globl	OledDrawString
.LFB19 = .
	.loc 1 879 0
	.set	nomips16
	.set	nomicromips
	.ent	OledDrawString
	.type	OledDrawString, @function
OledDrawString:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL264 = .
	addiu	$sp,$sp,-24
.LCFI60 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI61 = .
	move	$fp,$sp
.LCFI62 = .
	sw	$4,24($fp)
	.loc 1 881 0
	j	.L78
	nop

.LVL265 = .
.L79:
	.loc 1 882 0
	lw	$2,24($fp)
	lb	$2,0($2)
	move	$4,$2
	jal	OledDrawChar
	nop

.LVL266 = .
	.loc 1 883 0
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
.LVL267 = .
.L78:
	.loc 1 881 0
	lw	$2,24($fp)
	lb	$2,0($2)
	bne	$2,$0,.L79
	nop

	.loc 1 885 0
	move	$sp,$fp
.LCFI63 = .
.LVL268 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
.LVL269 = .
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDrawString
.LFE19:
	.size	OledDrawString, .-OledDrawString
	.align	2
	.globl	OledRopSet
.LFB20 = .
	.loc 1 904 0
	.set	nomips16
	.set	nomicromips
	.ent	OledRopSet
	.type	OledRopSet, @function
OledRopSet:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL270 = .
	addiu	$sp,$sp,-8
.LCFI64 = .
	sw	$fp,4($sp)
.LCFI65 = .
	move	$fp,$sp
.LCFI66 = .
	move	$3,$5
	move	$2,$6
	sb	$4,8($fp)
	sb	$3,12($fp)
	sb	$2,16($fp)
	.loc 1 906 0
	lb	$2,16($fp)
	nor	$2,$0,$2
	seb	$3,$2
	lb	$2,12($fp)
	and	$2,$3,$2
	seb	$3,$2
	lbu	$4,8($fp)
	lbu	$2,16($fp)
	and	$2,$4,$2
	andi	$2,$2,0x00ff
	seb	$2,$2
	or	$2,$3,$2
	seb	$2,$2
	andi	$2,$2,0x00ff
	.loc 1 908 0
	move	$sp,$fp
.LCFI67 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledRopSet
.LFE20:
	.size	OledRopSet, .-OledRopSet
	.align	2
	.globl	OledRopOr
.LFB21 = .
	.loc 1 925 0
	.set	nomips16
	.set	nomicromips
	.ent	OledRopOr
	.type	OledRopOr, @function
OledRopOr:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL271 = .
	addiu	$sp,$sp,-8
.LCFI68 = .
	sw	$fp,4($sp)
.LCFI69 = .
	move	$fp,$sp
.LCFI70 = .
	move	$3,$5
	move	$2,$6
	sb	$4,8($fp)
	sb	$3,12($fp)
	sb	$2,16($fp)
	.loc 1 927 0
	lbu	$3,8($fp)
	lbu	$2,16($fp)
	and	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,12($fp)
	or	$2,$3,$2
	andi	$2,$2,0x00ff
	.loc 1 929 0
	move	$sp,$fp
.LCFI71 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledRopOr
.LFE21:
	.size	OledRopOr, .-OledRopOr
	.align	2
	.globl	OledRopAnd
.LFB22 = .
	.loc 1 946 0
	.set	nomips16
	.set	nomicromips
	.ent	OledRopAnd
	.type	OledRopAnd, @function
OledRopAnd:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL272 = .
	addiu	$sp,$sp,-8
.LCFI72 = .
	sw	$fp,4($sp)
.LCFI73 = .
	move	$fp,$sp
.LCFI74 = .
	move	$3,$5
	move	$2,$6
	sb	$4,8($fp)
	sb	$3,12($fp)
	sb	$2,16($fp)
	.loc 1 948 0
	lbu	$3,8($fp)
	lbu	$2,16($fp)
	and	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,12($fp)
	and	$2,$3,$2
	andi	$2,$2,0x00ff
	.loc 1 950 0
	move	$sp,$fp
.LCFI75 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledRopAnd
.LFE22:
	.size	OledRopAnd, .-OledRopAnd
	.align	2
	.globl	OledRopXor
.LFB23 = .
	.loc 1 967 0
	.set	nomips16
	.set	nomicromips
	.ent	OledRopXor
	.type	OledRopXor, @function
OledRopXor:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL273 = .
	addiu	$sp,$sp,-8
.LCFI76 = .
	sw	$fp,4($sp)
.LCFI77 = .
	move	$fp,$sp
.LCFI78 = .
	move	$3,$5
	move	$2,$6
	sb	$4,8($fp)
	sb	$3,12($fp)
	sb	$2,16($fp)
	.loc 1 969 0
	lbu	$3,8($fp)
	lbu	$2,16($fp)
	and	$2,$3,$2
	andi	$3,$2,0x00ff
	lbu	$2,12($fp)
	xor	$2,$3,$2
	andi	$2,$2,0x00ff
	.loc 1 971 0
	move	$sp,$fp
.LCFI79 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledRopXor
.LFE23:
	.size	OledRopXor, .-OledRopXor
	.align	2
	.globl	OledMoveUp
.LFB24 = .
	.loc 1 992 0
	.set	nomips16
	.set	nomicromips
	.ent	OledMoveUp
	.type	OledMoveUp, @function
OledMoveUp:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI80 = .
	sw	$fp,4($sp)
.LCFI81 = .
	move	$fp,$sp
.LCFI82 = .
	.loc 1 996 0
	lw	$2,%gp_rel(bnOledCur)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(bnOledCur)($28)
	.loc 1 1001 0
	lw	$2,%gp_rel(bnOledCur)($28)
	bgez	$2,.L88
	nop

	.loc 1 1002 0
	li	$2,7			# 0x7
	sw	$2,%gp_rel(bnOledCur)($28)
	.loc 1 1003 0
	lw	$2,%gp_rel(pbOledCur)($28)
	addiu	$2,$2,-128
	sw	$2,%gp_rel(pbOledCur)($28)
	.loc 1 1007 0
	lw	$3,%gp_rel(pbOledCur)($28)
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	sltu	$2,$3,$2
	beq	$2,$0,.L88
	nop

	.loc 1 1008 0
	lw	$2,%gp_rel(pbOledCur)($28)
	addiu	$2,$2,128
	sw	$2,%gp_rel(pbOledCur)($28)
.L88:
	.loc 1 1011 0
	move	$sp,$fp
.LCFI83 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledMoveUp
.LFE24:
	.size	OledMoveUp, .-OledMoveUp
	.align	2
	.globl	OledMoveDown
.LFB25 = .
	.loc 1 1032 0
	.set	nomips16
	.set	nomicromips
	.ent	OledMoveDown
	.type	OledMoveDown, @function
OledMoveDown:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI84 = .
	sw	$fp,4($sp)
.LCFI85 = .
	move	$fp,$sp
.LCFI86 = .
	.loc 1 1036 0
	lw	$2,%gp_rel(bnOledCur)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(bnOledCur)($28)
	.loc 1 1041 0
	lw	$2,%gp_rel(bnOledCur)($28)
	slt	$2,$2,8
	bne	$2,$0,.L90
	nop

	.loc 1 1042 0
	sw	$0,%gp_rel(bnOledCur)($28)
	.loc 1 1043 0
	lw	$2,%gp_rel(pbOledCur)($28)
	addiu	$2,$2,128
	sw	$2,%gp_rel(pbOledCur)($28)
	.loc 1 1047 0
	lw	$3,%gp_rel(pbOledCur)($28)
	lui	$2,%hi(rgbOledBmp+512)
	addiu	$2,$2,%lo(rgbOledBmp+512)
	sltu	$2,$3,$2
	bne	$2,$0,.L90
	nop

	.loc 1 1048 0
	lw	$2,%gp_rel(pbOledCur)($28)
	addiu	$2,$2,-128
	sw	$2,%gp_rel(pbOledCur)($28)
.L90:
	.loc 1 1051 0
	move	$sp,$fp
.LCFI87 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledMoveDown
.LFE25:
	.size	OledMoveDown, .-OledMoveDown
	.align	2
	.globl	OledMoveLeft
.LFB26 = .
	.loc 1 1072 0
	.set	nomips16
	.set	nomicromips
	.ent	OledMoveLeft
	.type	OledMoveLeft, @function
OledMoveLeft:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI88 = .
	sw	$fp,4($sp)
.LCFI89 = .
	move	$fp,$sp
.LCFI90 = .
	.loc 1 1076 0
	lw	$2,%gp_rel(pbOledCur)($28)
	move	$3,$2
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	subu	$2,$3,$2
	andi	$2,$2,0x7f
	bne	$2,$0,.L93
	nop

	.loc 1 1077 0
	j	.L92
	nop

.L93:
	.loc 1 1082 0
	lw	$2,%gp_rel(pbOledCur)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(pbOledCur)($28)
.L92:
	.loc 1 1084 0
	move	$sp,$fp
.LCFI91 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledMoveLeft
.LFE26:
	.size	OledMoveLeft, .-OledMoveLeft
	.align	2
	.globl	OledMoveRight
.LFB27 = .
	.loc 1 1105 0
	.set	nomips16
	.set	nomicromips
	.ent	OledMoveRight
	.type	OledMoveRight, @function
OledMoveRight:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI92 = .
	sw	$fp,4($sp)
.LCFI93 = .
	move	$fp,$sp
.LCFI94 = .
	.loc 1 1109 0
	lw	$2,%gp_rel(pbOledCur)($28)
	move	$3,$2
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	subu	$2,$3,$2
	andi	$3,$2,0x7f
	li	$2,127			# 0x7f
	bne	$3,$2,.L96
	nop

	.loc 1 1110 0
	j	.L95
	nop

.L96:
	.loc 1 1115 0
	lw	$2,%gp_rel(pbOledCur)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(pbOledCur)($28)
.L95:
	.loc 1 1117 0
	move	$sp,$fp
.LCFI95 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledMoveRight
.LFE27:
	.size	OledMoveRight, .-OledMoveRight
	.align	2
	.globl	OledClampXco
.LFB28 = .
	.loc 1 1137 0
	.set	nomips16
	.set	nomicromips
	.ent	OledClampXco
	.type	OledClampXco, @function
OledClampXco:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL274 = .
	addiu	$sp,$sp,-8
.LCFI96 = .
	sw	$fp,4($sp)
.LCFI97 = .
	move	$fp,$sp
.LCFI98 = .
	sw	$4,8($fp)
	.loc 1 1138 0
	lw	$2,8($fp)
	bgez	$2,.L99
	nop

	.loc 1 1139 0
	sw	$0,8($fp)
.LVL275 = .
.L99:
	.loc 1 1141 0
	lw	$2,8($fp)
	slt	$2,$2,128
	bne	$2,$0,.L100
	nop

	.loc 1 1142 0
	li	$2,127			# 0x7f
	sw	$2,8($fp)
.LVL276 = .
.L100:
	.loc 1 1145 0
	lw	$2,8($fp)
	.loc 1 1147 0
	move	$sp,$fp
.LCFI99 = .
.LVL277 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledClampXco
.LFE28:
	.size	OledClampXco, .-OledClampXco
	.align	2
	.globl	OledClampYco
.LFB29 = .
	.loc 1 1167 0
	.set	nomips16
	.set	nomicromips
	.ent	OledClampYco
	.type	OledClampYco, @function
OledClampYco:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL278 = .
	addiu	$sp,$sp,-8
.LCFI100 = .
	sw	$fp,4($sp)
.LCFI101 = .
	move	$fp,$sp
.LCFI102 = .
	sw	$4,8($fp)
	.loc 1 1168 0
	lw	$2,8($fp)
	bgez	$2,.L103
	nop

	.loc 1 1169 0
	sw	$0,8($fp)
.LVL279 = .
.L103:
	.loc 1 1171 0
	lw	$2,8($fp)
	slt	$2,$2,32
	bne	$2,$0,.L104
	nop

	.loc 1 1172 0
	li	$2,31			# 0x1f
	sw	$2,8($fp)
.LVL280 = .
.L104:
	.loc 1 1175 0
	lw	$2,8($fp)
	.loc 1 1177 0
	move	$sp,$fp
.LCFI103 = .
.LVL281 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledClampYco
.LFE29:
	.size	OledClampYco, .-OledClampYco
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x1f
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI8-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI12-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI16-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI20-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI24-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI28-.LFB11
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI32-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI36-.LFB13
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI40-.LFB14
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI44-.LFB15
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI48-.LFB16
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI52-.LFB17
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI56-.LFB18
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI60-.LFB19
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI64-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI68-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI72-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI76-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI77-.LCFI76
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI80-.LFB24
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI84-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI88-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI89-.LCFI88
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI91-.LCFI90
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI92-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI93-.LCFI92
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI95-.LCFI94
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI96-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI97-.LCFI96
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI99-.LCFI98
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI100-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI101-.LCFI100
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI103-.LCFI102
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE50:
	.section	.text,code
.Letext0:
	.file 2 "d:/downloads/soft/mplab ide/xc32 compiler/pic32mx/include/machine/int_types.h"
	.file 3 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/oled/oled.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0xd9d
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"src/OLED/OledGrph.c\000"
	.ascii	"D:/study/7/MIPS_PIC/Labs/Demo7_Comm_SPI_OLED\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"long unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
	.uleb128 0x3
	.ascii	"__uint8_t\000"
	.byte	0x2
	.byte	0x2f
	.4byte	0xd8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii	"unsigned char\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii	"short int\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii	"short unsigned int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x3
	.ascii	"BYTE\000"
	.byte	0x3
	.byte	0x26
	.4byte	0xc7
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledMoveTo\000"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1a9
	.uleb128 0x5
	.ascii	"xco\000"
	.byte	0x1
	.byte	0x71
	.4byte	0xb1
	.4byte	.LLST1
	.uleb128 0x5
	.ascii	"yco\000"
	.byte	0x1
	.byte	0x71
	.4byte	0xb1
	.4byte	.LLST2
	.uleb128 0x6
	.4byte	.LVL1
	.4byte	0xbb0
	.4byte	0x197
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 24
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LVL3
	.4byte	0xbe9
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 28
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledGetPos\000"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x1e7
	.uleb128 0x9
	.ascii	"pxco\000"
	.byte	0x1
	.byte	0x98
	.4byte	0x1e7
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.ascii	"pyco\000"
	.byte	0x1
	.byte	0x98
	.4byte	0x1e7
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledSetDrawColor\000"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x222
	.uleb128 0x9
	.ascii	"clr\000"
	.byte	0x1
	.byte	0xb1
	.4byte	0x137
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledGetStdPattern\000"
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.4byte	0x25d
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x25d
	.uleb128 0x9
	.ascii	"ipat\000"
	.byte	0x1
	.byte	0xca
	.4byte	0xb1
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x137
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledSetFillPattern\000"
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST6
	.byte	0x1
	.4byte	0x29c
	.uleb128 0x9
	.ascii	"pbPat\000"
	.byte	0x1
	.byte	0xe3
	.4byte	0x25d
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.ascii	"OledSetDrawMode\000"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST7
	.byte	0x1
	.4byte	0x2d2
	.uleb128 0x5
	.ascii	"mod\000"
	.byte	0x1
	.byte	0xfb
	.4byte	0xb1
	.4byte	.LLST8
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ascii	"OledGetDrawMode\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0xb1
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST9
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.ascii	"OledDrawPixel\000"
	.byte	0x1
	.2byte	0x142
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST10
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.ascii	"OledGetPixel\000"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x137
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST11
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.ascii	"OledLineTo\000"
	.byte	0x1
	.2byte	0x174
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST12
	.byte	0x1
	.4byte	0x44f
	.uleb128 0xf
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x174
	.4byte	0xb1
	.4byte	.LLST13
	.uleb128 0xf
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x174
	.4byte	0xb1
	.4byte	.LLST14
	.uleb128 0x10
	.ascii	"err\000"
	.byte	0x1
	.2byte	0x176
	.4byte	0xb1
	.4byte	.LLST15
	.uleb128 0x10
	.ascii	"del\000"
	.byte	0x1
	.2byte	0x177
	.4byte	0xb1
	.4byte	.LLST16
	.uleb128 0x10
	.ascii	"lim\000"
	.byte	0x1
	.2byte	0x178
	.4byte	0xb1
	.4byte	.LLST17
	.uleb128 0x10
	.ascii	"cpx\000"
	.byte	0x1
	.2byte	0x179
	.4byte	0xb1
	.4byte	.LLST18
	.uleb128 0x10
	.ascii	"dxco\000"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xb1
	.4byte	.LLST19
	.uleb128 0x10
	.ascii	"dyco\000"
	.byte	0x1
	.2byte	0x17b
	.4byte	0xb1
	.4byte	.LLST20
	.uleb128 0x10
	.ascii	"pfnMajor\000"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x456
	.4byte	.LLST21
	.uleb128 0x10
	.ascii	"pfnMinor\000"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x456
	.4byte	.LLST22
	.uleb128 0x6
	.4byte	.LVL23
	.4byte	0xbb0
	.4byte	0x41e
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 56
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LVL25
	.4byte	0xbe9
	.4byte	0x433
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 60
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	.LVL58
	.4byte	0x2f8
	.uleb128 0x12
	.4byte	.LVL59
	.byte	0x3
	.byte	0x8d
	.sleb128 32
	.byte	0x6
	.uleb128 0x12
	.4byte	.LVL64
	.byte	0x3
	.byte	0x8d
	.sleb128 36
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.4byte	0x456
	.uleb128 0x14
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x44f
	.uleb128 0xe
	.byte	0x1
	.ascii	"OledDrawRect\000"
	.byte	0x1
	.2byte	0x1de
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST23
	.byte	0x1
	.4byte	0x559
	.uleb128 0xf
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x1de
	.4byte	0xb1
	.4byte	.LLST24
	.uleb128 0xf
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x1de
	.4byte	0xb1
	.4byte	.LLST25
	.uleb128 0x10
	.ascii	"xco1\000"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xb1
	.4byte	.LLST26
	.uleb128 0x10
	.ascii	"yco1\000"
	.byte	0x1
	.2byte	0x1e1
	.4byte	0xb1
	.4byte	.LLST27
	.uleb128 0x6
	.4byte	.LVL69
	.4byte	0xbb0
	.4byte	0x4d7
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 32
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LVL71
	.4byte	0xbe9
	.4byte	0x4ec
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 36
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LVL77
	.4byte	0x33b
	.4byte	0x508
	.uleb128 0x7
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x8d
	.sleb128 20
	.byte	0x6
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 32
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LVL78
	.4byte	0x33b
	.4byte	0x524
	.uleb128 0x7
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x8d
	.sleb128 36
	.byte	0x6
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 32
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.4byte	.LVL79
	.4byte	0x33b
	.4byte	0x540
	.uleb128 0x7
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x8d
	.sleb128 36
	.byte	0x6
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 16
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LVL80
	.4byte	0x33b
	.uleb128 0x7
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x8d
	.sleb128 20
	.byte	0x6
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 16
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.ascii	"OledFillRect\000"
	.byte	0x1
	.2byte	0x203
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST28
	.byte	0x1
	.4byte	0x66d
	.uleb128 0xf
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x203
	.4byte	0xb1
	.4byte	.LLST29
	.uleb128 0xf
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x203
	.4byte	0xb1
	.4byte	.LLST30
	.uleb128 0x16
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x205
	.4byte	0xb1
	.4byte	.LLST31
	.uleb128 0x16
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x206
	.4byte	0xb1
	.4byte	.LLST32
	.uleb128 0x16
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x207
	.4byte	0xb1
	.4byte	.LLST33
	.uleb128 0x16
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x208
	.4byte	0xb1
	.4byte	.LLST34
	.uleb128 0x10
	.ascii	"ibPat\000"
	.byte	0x1
	.2byte	0x209
	.4byte	0xb1
	.4byte	.LLST35
	.uleb128 0x10
	.ascii	"pbCur\000"
	.byte	0x1
	.2byte	0x20a
	.4byte	0x25d
	.4byte	.LLST36
	.uleb128 0x10
	.ascii	"pbLeft\000"
	.byte	0x1
	.2byte	0x20b
	.4byte	0x25d
	.4byte	.LLST37
	.uleb128 0x16
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x20c
	.4byte	0xb1
	.4byte	.LLST38
	.uleb128 0x17
	.ascii	"bTmp\000"
	.byte	0x1
	.2byte	0x20d
	.4byte	0x137
	.uleb128 0x10
	.ascii	"mskPat\000"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x137
	.4byte	.LLST39
	.uleb128 0x6
	.4byte	.LVL83
	.4byte	0xbb0
	.4byte	0x65a
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8d
	.sleb128 64
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LVL85
	.4byte	0xbe9
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8d
	.sleb128 68
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.ascii	"OledGetBmp\000"
	.byte	0x1
	.2byte	0x26d
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LLST40
	.byte	0x1
	.4byte	0x78b
	.uleb128 0xf
	.ascii	"dxco\000"
	.byte	0x1
	.2byte	0x26d
	.4byte	0xb1
	.4byte	.LLST41
	.uleb128 0xf
	.ascii	"dyco\000"
	.byte	0x1
	.2byte	0x26d
	.4byte	0xb1
	.4byte	.LLST42
	.uleb128 0x18
	.ascii	"pbBits\000"
	.byte	0x1
	.2byte	0x26d
	.4byte	0x25d
	.byte	0x1
	.byte	0x56
	.uleb128 0x16
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x26f
	.4byte	0xb1
	.4byte	.LLST43
	.uleb128 0x16
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x270
	.4byte	0xb1
	.4byte	.LLST44
	.uleb128 0x16
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x271
	.4byte	0xb1
	.4byte	.LLST45
	.uleb128 0x16
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x272
	.4byte	0xb1
	.4byte	.LLST46
	.uleb128 0x16
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x273
	.4byte	0x25d
	.4byte	.LLST47
	.uleb128 0x16
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x274
	.4byte	0x25d
	.4byte	.LLST48
	.uleb128 0x16
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x275
	.4byte	0x25d
	.4byte	.LLST49
	.uleb128 0x16
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x276
	.4byte	0x25d
	.4byte	.LLST50
	.uleb128 0x16
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x277
	.4byte	0xb1
	.4byte	.LLST51
	.uleb128 0x10
	.ascii	"bnAlign\000"
	.byte	0x1
	.2byte	0x278
	.4byte	0xb1
	.4byte	.LLST52
	.uleb128 0x10
	.ascii	"mskEnd\000"
	.byte	0x1
	.2byte	0x279
	.4byte	0x137
	.4byte	.LLST53
	.uleb128 0x10
	.ascii	"bTmp\000"
	.byte	0x1
	.2byte	0x27a
	.4byte	0x137
	.4byte	.LLST54
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.ascii	"OledPutBmp\000"
	.byte	0x1
	.2byte	0x2d0
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LLST55
	.byte	0x1
	.4byte	0x928
	.uleb128 0xf
	.ascii	"dxco\000"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xb1
	.4byte	.LLST56
	.uleb128 0xf
	.ascii	"dyco\000"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xb1
	.4byte	.LLST57
	.uleb128 0xf
	.ascii	"pbBits\000"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x25d
	.4byte	.LLST58
	.uleb128 0x16
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x2d2
	.4byte	0xb1
	.4byte	.LLST59
	.uleb128 0x16
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x2d3
	.4byte	0xb1
	.4byte	.LLST60
	.uleb128 0x16
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x2d4
	.4byte	0xb1
	.4byte	.LLST61
	.uleb128 0x16
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x2d5
	.4byte	0xb1
	.4byte	.LLST62
	.uleb128 0x16
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x25d
	.4byte	.LLST63
	.uleb128 0x16
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x25d
	.4byte	.LLST64
	.uleb128 0x16
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x2d8
	.4byte	0x25d
	.4byte	.LLST65
	.uleb128 0x16
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x25d
	.4byte	.LLST66
	.uleb128 0x16
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x2da
	.4byte	0xb1
	.4byte	.LLST67
	.uleb128 0x17
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x2db
	.4byte	0x137
	.uleb128 0x10
	.ascii	"bBmp\000"
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x137
	.4byte	.LLST68
	.uleb128 0x10
	.ascii	"mskEnd\000"
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x137
	.4byte	.LLST69
	.uleb128 0x10
	.ascii	"mskUpper\000"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x137
	.4byte	.LLST70
	.uleb128 0x10
	.ascii	"mskLower\000"
	.byte	0x1
	.2byte	0x2df
	.4byte	0x137
	.4byte	.LLST71
	.uleb128 0x10
	.ascii	"bnAlign\000"
	.byte	0x1
	.2byte	0x2e0
	.4byte	0xb1
	.4byte	.LLST72
	.uleb128 0x10
	.ascii	"fTop\000"
	.byte	0x1
	.2byte	0x2e1
	.4byte	0xb1
	.4byte	.LLST73
	.uleb128 0x17
	.ascii	"bTmp\000"
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x137
	.uleb128 0x19
	.4byte	.LVL225
	.4byte	0x911
	.uleb128 0x7
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.byte	0x8d
	.sleb128 49
	.byte	0x94
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL239
	.uleb128 0x7
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.byte	0x8d
	.sleb128 49
	.byte	0x94
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x8d
	.sleb128 48
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.ascii	"OledDrawChar\000"
	.byte	0x1
	.2byte	0x343
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LLST74
	.byte	0x1
	.4byte	0x99d
	.uleb128 0xf
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x343
	.4byte	0x99d
	.4byte	.LLST75
	.uleb128 0x10
	.ascii	"pbFont\000"
	.byte	0x1
	.2byte	0x345
	.4byte	0x25d
	.4byte	.LLST76
	.uleb128 0x10
	.ascii	"pbBmp\000"
	.byte	0x1
	.2byte	0x346
	.4byte	0x25d
	.4byte	.LLST77
	.uleb128 0x17
	.ascii	"ib\000"
	.byte	0x1
	.2byte	0x347
	.4byte	0xb1
	.uleb128 0x8
	.4byte	.LVL262
	.4byte	0x78b
	.uleb128 0x7
	.byte	0x1
	.byte	0x56
	.byte	0x3
	.byte	0x8d
	.sleb128 16
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0xe
	.byte	0x1
	.ascii	"OledDrawString\000"
	.byte	0x1
	.2byte	0x36e
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LLST78
	.byte	0x1
	.4byte	0x9e4
	.uleb128 0xf
	.ascii	"sz\000"
	.byte	0x1
	.2byte	0x36e
	.4byte	0x9e4
	.4byte	.LLST79
	.uleb128 0x11
	.4byte	.LVL266
	.4byte	0x928
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x99d
	.uleb128 0x1b
	.byte	0x1
	.ascii	"OledRopSet\000"
	.byte	0x1
	.2byte	0x387
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LLST80
	.byte	0x1
	.4byte	0xa3d
	.uleb128 0x18
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x387
	.4byte	0x137
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x387
	.4byte	0x137
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x387
	.4byte	0x137
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.ascii	"OledRopOr\000"
	.byte	0x1
	.2byte	0x39c
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LLST81
	.byte	0x1
	.4byte	0xa8f
	.uleb128 0x18
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x39c
	.4byte	0x137
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x39c
	.4byte	0x137
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x39c
	.4byte	0x137
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.ascii	"OledRopAnd\000"
	.byte	0x1
	.2byte	0x3b1
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LLST82
	.byte	0x1
	.4byte	0xae2
	.uleb128 0x18
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x137
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x137
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x137
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.ascii	"OledRopXor\000"
	.byte	0x1
	.2byte	0x3c6
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LLST83
	.byte	0x1
	.4byte	0xb35
	.uleb128 0x18
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x137
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x137
	.byte	0x1
	.byte	0x55
	.uleb128 0x1c
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x137
	.byte	0x1
	.byte	0x56
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.ascii	"OledMoveUp\000"
	.byte	0x1
	.2byte	0x3df
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LLST84
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.ascii	"OledMoveDown\000"
	.byte	0x1
	.2byte	0x407
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LLST85
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.ascii	"OledMoveLeft\000"
	.byte	0x1
	.2byte	0x42f
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LLST86
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.ascii	"OledMoveRight\000"
	.byte	0x1
	.2byte	0x450
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LLST87
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.ascii	"OledClampXco\000"
	.byte	0x1
	.2byte	0x470
	.byte	0x1
	.4byte	0xb1
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LLST88
	.byte	0x1
	.4byte	0xbe9
	.uleb128 0xf
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x470
	.4byte	0xb1
	.4byte	.LLST89
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.ascii	"OledClampYco\000"
	.byte	0x1
	.2byte	0x48e
	.byte	0x1
	.4byte	0xb1
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LLST90
	.byte	0x1
	.4byte	0xc22
	.uleb128 0xf
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x48e
	.4byte	0xb1
	.4byte	.LLST91
	.byte	0
	.uleb128 0x1e
	.4byte	0x137
	.4byte	0xc33
	.uleb128 0x1f
	.4byte	0xc33
	.2byte	0x1ff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x20
	.ascii	"rgbOledBmp\000"
	.byte	0x1
	.byte	0x3d
	.4byte	0xc22
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
	.uleb128 0x21
	.ascii	"xcoOledCur\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"ycoOledCur\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"pbOledCur\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0x25d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.4byte	0x137
	.4byte	0xc9e
	.uleb128 0x22
	.byte	0
	.uleb128 0x21
	.ascii	"rgbFillPat\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0xc93
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"bnOledCur\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"clrOledCur\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x137
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"pbOledPatCur\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x25d
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"pbOledFontUser\000"
	.byte	0x1
	.byte	0x42
	.4byte	0x25d
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"pbOledFontCur\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x25d
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"dxcoOledFontCur\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"dycoOledFontCur\000"
	.byte	0x1
	.byte	0x45
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.4byte	0x137
	.4byte	0xd6a
	.uleb128 0x24
	.4byte	0x137
	.uleb128 0x24
	.4byte	0x137
	.uleb128 0x24
	.4byte	0x137
	.byte	0
	.uleb128 0x20
	.ascii	"pfnDoRop\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0xd81
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pfnDoRop
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd50
	.uleb128 0x20
	.ascii	"modOledCur\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0xb1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	modOledCur
	.byte	0
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,info
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI0-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI0-.Ltext0
	.4byte	.LCFI2-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL3-1-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 28
	.4byte	.LVL7-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL16-.Ltext0
	.4byte	.LVL17-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-.Ltext0
	.4byte	.LVL19-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL19-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL20-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 32
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 56
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 56
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL23-1-.Ltext0
	.4byte	.LVL24-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 56
	.4byte	.LVL24-.Ltext0
	.4byte	.LVL25-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25-1-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 56
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 56
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL23-1-.Ltext0
	.4byte	.LVL26-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 60
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL27-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 60
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 60
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL34-.Ltext0
	.4byte	.LVL35-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 20
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL44-.Ltext0
	.4byte	.LVL45-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL58-1-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 28
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL29-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 40
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 44
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 44
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 32
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL40-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 36
	.4byte	.LVL67-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LCFI42-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 32
	.4byte	.LCFI43-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL69-1-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL71-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL71-1-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL69-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL69-1-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77-1-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL77-1-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL81-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 -12
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI44-.Ltext0
	.4byte	.LCFI46-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 64
	.4byte	.LCFI46-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 64
	.4byte	.LCFI47-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 64
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL83-1-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 64
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL85-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL85-1-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 64
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 64
	.4byte	.LVL126-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL83-1-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 68
	.4byte	.LVL86-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 68
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 68
	.4byte	.LVL126-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL89-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93-.Ltext0
	.4byte	.LVL94-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 64
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	.LVL126-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 20
	.4byte	.LVL126-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL96-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL99-.Ltext0
	.4byte	.LVL100-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 68
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL103-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL125-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL97-.Ltext0
	.4byte	.LVL98-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL102-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL125-.Ltext0
	.4byte	.LVL126-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 28
	.4byte	.LVL126-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -36
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL110-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL122-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL113-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL119-.Ltext0
	.4byte	.LVL120-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL105-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL114-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL115-.Ltext0
	.4byte	.LVL117-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	.LVL117-.Ltext0
	.4byte	.LVL118-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL106-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL107-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 44
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LFB16-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LCFI50-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 56
	.4byte	.LCFI50-.Ltext0
	.4byte	.LCFI51-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 56
	.4byte	.LCFI51-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 56
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 56
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 56
	.4byte	.LVL185-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 60
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 60
	.4byte	.LVL185-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL129-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 36
	.4byte	.LVL185-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL130-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL131-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 0
	.4byte	.LVL185-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL147-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 4
	.4byte	.LVL178-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 4
	.4byte	.LVL184-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL137-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LVL185-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 12
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 12
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL143-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL181-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	.LVL185-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL161-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL175-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL175-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LVL185-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL151-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL160-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL164-.Ltext0
	.4byte	.LVL165-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL172-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL177-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL182-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL139-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL184-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	.LVL184-.Ltext0
	.4byte	.LVL185-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 40
	.4byte	.LVL185-.Ltext0
	.4byte	.LFE16-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL148-.Ltext0
	.4byte	.LVL149-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL183-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL166-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL168-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 12
	.byte	0x6
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL170-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 44
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LFB17-.Ltext0
	.4byte	.LCFI52-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI52-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 80
	.4byte	.LCFI54-.Ltext0
	.4byte	.LCFI55-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 80
	.4byte	.LCFI55-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 80
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL205-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL205-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 80
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 80
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 84
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 84
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL186-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 88
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 88
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL187-.Ltext0
	.4byte	.LVL188-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL188-.Ltext0
	.4byte	.LVL193-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 56
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 56
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL189-.Ltext0
	.4byte	.LVL190-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL190-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL192-.Ltext0
	.4byte	.LVL194-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL194-.Ltext0
	.4byte	.LVL199-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL212-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL212-.Ltext0
	.4byte	.LVL247-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL247-.Ltext0
	.4byte	.LVL248-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL248-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL253-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL195-.Ltext0
	.4byte	.LVL196-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL196-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -56
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL219-.Ltext0
	.4byte	.LVL220-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL220-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL228-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL228-.Ltext0
	.4byte	.LVL229-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL229-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL242-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL242-.Ltext0
	.4byte	.LVL243-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL243-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL206-.Ltext0
	.4byte	.LVL207-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL207-.Ltext0
	.4byte	.LVL249-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL249-.Ltext0
	.4byte	.LVL250-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL250-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 32
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL221-.Ltext0
	.4byte	.LVL222-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL222-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL208-.Ltext0
	.4byte	.LVL209-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL209-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 88
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL251-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	.LVL251-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL252-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 40
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -40
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL217-.Ltext0
	.4byte	.LVL218-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL218-.Ltext0
	.4byte	.LVL223-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 56
	.4byte	.LVL223-.Ltext0
	.4byte	.LVL224-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL224-.Ltext0
	.4byte	.LVL226-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 44
	.4byte	.LVL226-.Ltext0
	.4byte	.LVL227-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL227-.Ltext0
	.4byte	.LVL231-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 44
	.4byte	.LVL231-.Ltext0
	.4byte	.LVL232-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 56
	.4byte	.LVL232-.Ltext0
	.4byte	.LVL233-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL233-.Ltext0
	.4byte	.LVL240-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 44
	.4byte	.LVL240-.Ltext0
	.4byte	.LVL241-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL241-.Ltext0
	.4byte	.LVL245-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 44
	.4byte	.LVL245-.Ltext0
	.4byte	.LVL246-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL246-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 44
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL234-.Ltext0
	.4byte	.LVL235-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL235-.Ltext0
	.4byte	.LVL237-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 48
	.4byte	.LVL237-.Ltext0
	.4byte	.LVL238-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL238-.Ltext0
	.4byte	.LVL244-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL213-.Ltext0
	.4byte	.LVL214-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL215-.Ltext0
	.4byte	.LVL252-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 49
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL201-.Ltext0
	.4byte	.LVL202-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL202-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 64
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 64
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL203-.Ltext0
	.4byte	.LVL204-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL204-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x3
	.byte	0x8d
	.sleb128 65
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x3
	.byte	0x8e
	.sleb128 65
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -15
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL198-.Ltext0
	.4byte	.LVL200-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL200-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 60
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 60
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL210-.Ltext0
	.4byte	.LVL211-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL211-.Ltext0
	.4byte	.LVL253-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 52
	.4byte	.LVL253-.Ltext0
	.4byte	.LVL254-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 52
	.4byte	.LVL254-.Ltext0
	.4byte	.LFE17-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LFB18-.Ltext0
	.4byte	.LCFI56-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI56-.Ltext0
	.4byte	.LCFI58-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LCFI58-.Ltext0
	.4byte	.LCFI59-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 32
	.4byte	.LCFI59-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL255-.Ltext0
	.4byte	.LVL261-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL261-.Ltext0
	.4byte	.LFE18-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL256-.Ltext0
	.4byte	.LVL257-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL258-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL259-.Ltext0
	.4byte	.LVL260-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL262-1-.Ltext0
	.4byte	.LVL263-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LFB19-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LCFI62-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI62-.Ltext0
	.4byte	.LCFI63-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LCFI63-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL264-.Ltext0
	.4byte	.LVL265-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL265-.Ltext0
	.4byte	.LVL268-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL268-.Ltext0
	.4byte	.LVL269-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LVL269-.Ltext0
	.4byte	.LFE19-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LFB20-.Ltext0
	.4byte	.LCFI64-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI64-.Ltext0
	.4byte	.LCFI66-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI66-.Ltext0
	.4byte	.LCFI67-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI67-.Ltext0
	.4byte	.LFE20-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LFB21-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LCFI70-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI70-.Ltext0
	.4byte	.LCFI71-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI71-.Ltext0
	.4byte	.LFE21-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LFB22-.Ltext0
	.4byte	.LCFI72-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI72-.Ltext0
	.4byte	.LCFI74-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI74-.Ltext0
	.4byte	.LCFI75-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI75-.Ltext0
	.4byte	.LFE22-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LFB23-.Ltext0
	.4byte	.LCFI76-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI76-.Ltext0
	.4byte	.LCFI78-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI78-.Ltext0
	.4byte	.LCFI79-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI79-.Ltext0
	.4byte	.LFE23-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LFB24-.Ltext0
	.4byte	.LCFI80-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI80-.Ltext0
	.4byte	.LCFI82-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI82-.Ltext0
	.4byte	.LCFI83-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI83-.Ltext0
	.4byte	.LFE24-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LFB25-.Ltext0
	.4byte	.LCFI84-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI84-.Ltext0
	.4byte	.LCFI86-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI86-.Ltext0
	.4byte	.LCFI87-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI87-.Ltext0
	.4byte	.LFE25-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LFB26-.Ltext0
	.4byte	.LCFI88-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI88-.Ltext0
	.4byte	.LCFI90-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI90-.Ltext0
	.4byte	.LCFI91-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI91-.Ltext0
	.4byte	.LFE26-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LFB27-.Ltext0
	.4byte	.LCFI92-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI92-.Ltext0
	.4byte	.LCFI94-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI94-.Ltext0
	.4byte	.LCFI95-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI95-.Ltext0
	.4byte	.LFE27-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LFB28-.Ltext0
	.4byte	.LCFI96-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI96-.Ltext0
	.4byte	.LCFI98-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI98-.Ltext0
	.4byte	.LCFI99-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI99-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL274-.Ltext0
	.4byte	.LVL275-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL275-.Ltext0
	.4byte	.LVL277-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LVL277-.Ltext0
	.4byte	.LFE28-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LFB29-.Ltext0
	.4byte	.LCFI100-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI100-.Ltext0
	.4byte	.LCFI102-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI102-.Ltext0
	.4byte	.LCFI103-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI103-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL278-.Ltext0
	.4byte	.LVL279-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL279-.Ltext0
	.4byte	.LVL281-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LVL281-.Ltext0
	.4byte	.LFE29-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
	.section	.debug_aranges,info
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF6:
	.ascii	"pbDspLeft\000"
.LASF0:
	.ascii	"xcoLeft\000"
.LASF2:
	.ascii	"ycoTop\000"
.LASF4:
	.ascii	"xcoCur\000"
.LASF9:
	.ascii	"mskPix\000"
.LASF7:
	.ascii	"pbBmpCur\000"
.LASF1:
	.ascii	"xcoRight\000"
.LASF8:
	.ascii	"pbBmpLeft\000"
.LASF3:
	.ascii	"ycoBottom\000"
.LASF5:
	.ascii	"pbDspCur\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
