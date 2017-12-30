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

	sw	$2,24($fp)
	.loc 1 119 0
	lw	$4,28($fp)
	jal	OledClampYco
	nop

	sw	$2,28($fp)
	.loc 1 123 0
	lw	$2,24($fp)
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
	lw	$31,20($sp)
	lw	$fp,16($sp)
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

.L9:
	.loc 1 262 0
	lui	$2,%hi(OledRopOr)
	addiu	$2,$2,%lo(OledRopOr)
	sw	$2,%gp_rel(pfnDoRop)($28)
	.loc 1 263 0
	j	.L7
	nop

.L12:
	.loc 1 266 0
	lui	$2,%hi(OledRopAnd)
	addiu	$2,$2,%lo(OledRopAnd)
	sw	$2,%gp_rel(pfnDoRop)($28)
	.loc 1 267 0
	j	.L7
	nop

.L13:
	.loc 1 270 0
	lui	$2,%hi(OledRopXor)
	addiu	$2,$2,%lo(OledRopXor)
	sw	$2,%gp_rel(pfnDoRop)($28)
	.loc 1 271 0
	j	.L7
	nop

.L8:
	.loc 1 274 0
	sw	$0,%gp_rel(modOledCur)($28)
	.loc 1 275 0
	lui	$2,%hi(OledRopSet)
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

	sw	$2,56($fp)
	.loc 1 386 0
	lw	$4,60($fp)
	jal	OledClampYco
	nop

	sw	$2,60($fp)
	.loc 1 390 0
	lw	$2,%gp_rel(xcoOledCur)($28)
	lw	$3,56($fp)
	subu	$2,$3,$2
	sw	$2,40($fp)
	.loc 1 391 0
	lw	$2,%gp_rel(ycoOledCur)($28)
	lw	$3,60($fp)
	subu	$2,$3,$2
	sw	$2,44($fp)
	.loc 1 392 0
	lw	$2,40($fp)
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
	.loc 1 396 0
	lw	$2,44($fp)
	sra	$2,$2,31
	lw	$3,44($fp)
	xor	$3,$2,$3
	subu	$2,$3,$2
	sw	$2,20($fp)
	.loc 1 397 0
	lw	$2,40($fp)
	bltz	$2,.L22
	nop

	.loc 1 398 0
	lui	$2,%hi(OledMoveRight)
	addiu	$2,$2,%lo(OledMoveRight)
	sw	$2,32($fp)
	j	.L23
	nop

.L22:
	.loc 1 401 0
	lui	$2,%hi(OledMoveLeft)
	addiu	$2,$2,%lo(OledMoveLeft)
	sw	$2,32($fp)
.L23:
	.loc 1 404 0
	lw	$2,44($fp)
	bltz	$2,.L24
	nop

	.loc 1 405 0
	lui	$2,%hi(OledMoveDown)
	addiu	$2,$2,%lo(OledMoveDown)
	sw	$2,36($fp)
	j	.L26
	nop

.L24:
	.loc 1 408 0
	lui	$2,%hi(OledMoveUp)
	addiu	$2,$2,%lo(OledMoveUp)
	sw	$2,36($fp)
	j	.L26
	nop

.L21:
	.loc 1 414 0
	lw	$2,44($fp)
	sra	$2,$2,31
	lw	$3,44($fp)
	xor	$3,$2,$3
	subu	$2,$3,$2
	sw	$2,24($fp)
	.loc 1 415 0
	lw	$2,40($fp)
	sra	$2,$2,31
	lw	$3,40($fp)
	xor	$3,$2,$3
	subu	$2,$3,$2
	sw	$2,20($fp)
	.loc 1 416 0
	lw	$2,44($fp)
	bltz	$2,.L27
	nop

	.loc 1 417 0
	lui	$2,%hi(OledMoveDown)
	addiu	$2,$2,%lo(OledMoveDown)
	sw	$2,32($fp)
	j	.L28
	nop

.L27:
	.loc 1 420 0
	lui	$2,%hi(OledMoveUp)
	addiu	$2,$2,%lo(OledMoveUp)
	sw	$2,32($fp)
.L28:
	.loc 1 423 0
	lw	$2,40($fp)
	bltz	$2,.L29
	nop

	.loc 1 424 0
	lui	$2,%hi(OledMoveRight)
	addiu	$2,$2,%lo(OledMoveRight)
	sw	$2,36($fp)
	j	.L26
	nop

.L29:
	.loc 1 427 0
	lui	$2,%hi(OledMoveLeft)
	addiu	$2,$2,%lo(OledMoveLeft)
	sw	$2,36($fp)
.L26:
	.loc 1 439 0
	lw	$2,24($fp)
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,16($fp)
	.loc 1 440 0
	lw	$2,24($fp)
	sw	$2,28($fp)
	.loc 1 441 0
	j	.L30
	nop

.L32:
	.loc 1 442 0
	jal	OledDrawPixel
	nop

	.loc 1 443 0
	lw	$2,32($fp)
	jalr	$2
	nop

	.loc 1 444 0
	lw	$3,16($fp)
	lw	$2,20($fp)
	addu	$2,$3,$2
	sw	$2,16($fp)
	.loc 1 445 0
	lw	$3,16($fp)
	lw	$2,24($fp)
	slt	$2,$2,$3
	beq	$2,$0,.L31
	nop

	.loc 1 446 0
	lw	$3,16($fp)
	lw	$2,24($fp)
	subu	$2,$3,$2
	sw	$2,16($fp)
	.loc 1 447 0
	lw	$2,36($fp)
	jalr	$2
	nop

.L31:
	.loc 1 449 0
	lw	$2,28($fp)
	addiu	$2,$2,-1
	sw	$2,28($fp)
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
	lw	$31,52($sp)
	lw	$fp,48($sp)
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

	sw	$2,32($fp)
	.loc 1 486 0
	lw	$4,36($fp)
	jal	OledClampYco
	nop

	sw	$2,36($fp)
	.loc 1 488 0
	lw	$2,%gp_rel(xcoOledCur)($28)
	sw	$2,16($fp)
	.loc 1 489 0
	lw	$2,%gp_rel(ycoOledCur)($28)
	sw	$2,20($fp)
	.loc 1 490 0
	lw	$4,32($fp)
	lw	$5,20($fp)
	jal	OledLineTo
	nop

	.loc 1 491 0
	lw	$4,32($fp)
	lw	$5,36($fp)
	jal	OledLineTo
	nop

	.loc 1 492 0
	lw	$4,16($fp)
	lw	$5,36($fp)
	jal	OledLineTo
	nop

	.loc 1 493 0
	lw	$4,16($fp)
	lw	$5,20($fp)
	jal	OledLineTo
	nop

	.loc 1 494 0
	move	$sp,$fp
.LCFI43 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
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

	sw	$2,64($fp)
	.loc 1 531 0
	lw	$4,68($fp)
	jal	OledClampYco
	nop

	sw	$2,68($fp)
	.loc 1 535 0
	lw	$3,%gp_rel(xcoOledCur)($28)
	lw	$2,64($fp)
	slt	$2,$3,$2
	beq	$2,$0,.L35
	nop

	.loc 1 536 0
	lw	$2,%gp_rel(xcoOledCur)($28)
	sw	$2,16($fp)
	.loc 1 537 0
	lw	$2,64($fp)
	sw	$2,20($fp)
	j	.L36
	nop

.L35:
	.loc 1 540 0
	lw	$2,64($fp)
	sw	$2,16($fp)
	.loc 1 541 0
	lw	$2,%gp_rel(xcoOledCur)($28)
	sw	$2,20($fp)
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
	.loc 1 546 0
	lw	$2,68($fp)
	sw	$2,28($fp)
	.loc 1 554 0
	j	.L39
	nop

.L37:
	.loc 1 549 0
	lw	$2,68($fp)
	sw	$2,24($fp)
	.loc 1 550 0
	lw	$2,%gp_rel(ycoOledCur)($28)
	sw	$2,28($fp)
	.loc 1 554 0
	j	.L39
	nop

.L43:
	.loc 1 558 0
	lw	$2,24($fp)
	addiu	$3,$2,7
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
	.loc 1 563 0
	lw	$2,24($fp)
	andi	$2,$2,0x7
	li	$3,1			# 0x1
	sll	$2,$3,$2
	andi	$2,$2,0x00ff
	addiu	$2,$2,-1
	sb	$2,44($fp)
	.loc 1 570 0
	lw	$2,24($fp)
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
.L40:
	.loc 1 573 0
	lw	$2,16($fp)
	andi	$2,$2,0x7
	sw	$2,32($fp)
	.loc 1 574 0
	lw	$2,16($fp)
	sw	$2,40($fp)
	.loc 1 575 0
	lw	$2,48($fp)
	sw	$2,36($fp)
	.loc 1 580 0
	j	.L41
	nop

.L42:
	.loc 1 581 0
	lw	$2,%gp_rel(pfnDoRop)($28)
	lw	$4,%gp_rel(pbOledPatCur)($28)
	lw	$3,32($fp)
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

	move	$3,$2
	lw	$2,36($fp)
	sb	$3,0($2)
	.loc 1 582 0
	lw	$2,40($fp)
	addiu	$2,$2,1
	sw	$2,40($fp)
	.loc 1 583 0
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
	.loc 1 584 0
	lw	$2,32($fp)
	addiu	$2,$2,1
	sw	$2,32($fp)
	.loc 1 585 0
	lw	$2,32($fp)
	slt	$2,$2,8
	bne	$2,$0,.L41
	nop

	.loc 1 586 0
	sw	$0,32($fp)
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
	lw	$31,60($sp)
	lw	$fp,56($sp)
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
	.loc 1 639 0
	lw	$3,36($fp)
	lw	$2,56($fp)
	addu	$2,$3,$2
	sw	$2,0($fp)
	.loc 1 640 0
	lw	$2,0($fp)
	slt	$2,$2,128
	bne	$2,$0,.L45
	nop

	.loc 1 641 0
	li	$2,127			# 0x7f
	sw	$2,0($fp)
.L45:
	.loc 1 644 0
	lw	$2,%gp_rel(ycoOledCur)($28)
	sw	$2,4($fp)
	.loc 1 645 0
	lw	$3,4($fp)
	lw	$2,60($fp)
	addu	$2,$3,$2
	sw	$2,8($fp)
	.loc 1 646 0
	lw	$2,8($fp)
	slt	$2,$2,32
	bne	$2,$0,.L46
	nop

	.loc 1 647 0
	li	$2,31			# 0x1f
	sw	$2,8($fp)
.L46:
	.loc 1 650 0
	lw	$2,4($fp)
	andi	$2,$2,0x7
	sw	$2,40($fp)
	.loc 1 651 0
	lw	$2,4($fp)
	addiu	$3,$2,7
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$2,$2,3
	sll	$3,$2,7
	lw	$2,36($fp)
	addu	$3,$3,$2
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	addu	$2,$3,$2
	sw	$2,16($fp)
	.loc 1 652 0
	lw	$2,64($fp)
	sw	$2,24($fp)
	.loc 1 654 0
	j	.L47
	nop

.L56:
	.loc 1 656 0
	lw	$2,4($fp)
	addiu	$3,$2,7
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
	j	.L49
	nop

.L48:
	.loc 1 660 0
	li	$2,-1			# 0xffffffffffffffff
	sb	$2,32($fp)
.L49:
	.loc 1 663 0
	lw	$2,36($fp)
	sw	$2,28($fp)
	.loc 1 664 0
	lw	$2,16($fp)
	sw	$2,12($fp)
	.loc 1 665 0
	lw	$2,24($fp)
	sw	$2,20($fp)
	.loc 1 670 0
	lw	$2,40($fp)
	bne	$2,$0,.L50
	nop

	.loc 1 671 0
	j	.L51
	nop

.L52:
	.loc 1 672 0
	lw	$2,12($fp)
	lbu	$3,0($2)
	lbu	$2,32($fp)
	and	$2,$3,$2
	andi	$3,$2,0x00ff
	lw	$2,20($fp)
	sb	$3,0($2)
	.loc 1 673 0
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	.loc 1 674 0
	lw	$2,20($fp)
	addiu	$2,$2,1
	sw	$2,20($fp)
	.loc 1 675 0
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
.L51:
	.loc 1 671 0
	lw	$3,28($fp)
	lw	$2,0($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L52
	nop

	j	.L53
	nop

.L50:
	.loc 1 679 0
	j	.L54
	nop

.L55:
	.loc 1 680 0
	lw	$2,12($fp)
	lbu	$2,0($2)
	sb	$2,44($fp)
	.loc 1 681 0
	lw	$2,12($fp)
	lbu	$2,128($2)
	sb	$2,44($fp)
	.loc 1 682 0
	lw	$2,12($fp)
	lbu	$2,0($2)
	move	$3,$2
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
	.loc 1 685 0
	lw	$2,20($fp)
	addiu	$2,$2,1
	sw	$2,20($fp)
	.loc 1 686 0
	lw	$2,12($fp)
	addiu	$2,$2,1
	sw	$2,12($fp)
.L54:
	.loc 1 679 0
	lw	$3,28($fp)
	lw	$2,0($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L55
	nop

.L53:
	.loc 1 692 0
	lw	$2,4($fp)
	addiu	$2,$2,8
	sw	$2,4($fp)
	.loc 1 693 0
	lw	$2,16($fp)
	addiu	$2,$2,128
	sw	$2,16($fp)
	.loc 1 694 0
	lw	$2,56($fp)
	lw	$3,24($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
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
	lw	$fp,52($sp)
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
	.loc 1 743 0
	lw	$3,56($fp)
	lw	$2,80($fp)
	addu	$2,$3,$2
	sw	$2,16($fp)
	.loc 1 744 0
	lw	$2,16($fp)
	slt	$2,$2,128
	bne	$2,$0,.L58
	nop

	.loc 1 745 0
	li	$2,127			# 0x7f
	sw	$2,16($fp)
.L58:
	.loc 1 748 0
	lw	$2,%gp_rel(ycoOledCur)($28)
	sw	$2,20($fp)
	.loc 1 749 0
	lw	$3,20($fp)
	lw	$2,84($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	.loc 1 750 0
	lw	$2,24($fp)
	slt	$2,$2,32
	bne	$2,$0,.L59
	nop

	.loc 1 751 0
	li	$2,31			# 0x1f
	sw	$2,24($fp)
.L59:
	.loc 1 754 0
	lw	$2,20($fp)
	andi	$2,$2,0x7
	sw	$2,60($fp)
	.loc 1 755 0
	li	$3,1			# 0x1
	lw	$2,60($fp)
	sll	$2,$3,$2
	andi	$2,$2,0x00ff
	addiu	$2,$2,-1
	sb	$2,64($fp)
	.loc 1 756 0
	lbu	$2,64($fp)
	nor	$2,$0,$2
	sb	$2,65($fp)
	.loc 1 757 0
	lw	$2,20($fp)
	addiu	$3,$2,7
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$2,$2,3
	sll	$3,$2,7
	lw	$2,56($fp)
	addu	$3,$3,$2
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	addu	$2,$3,$2
	sw	$2,32($fp)
	.loc 1 758 0
	lw	$2,88($fp)
	sw	$2,40($fp)
	.loc 1 759 0
	li	$2,1			# 0x1
	sw	$2,52($fp)
	.loc 1 761 0
	j	.L60
	nop

.L71:
	.loc 1 767 0
	lw	$2,20($fp)
	addiu	$3,$2,7
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
	j	.L62
	nop

.L61:
	.loc 1 771 0
	li	$2,-1			# 0xffffffffffffffff
	sb	$2,49($fp)
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
.L63:
	.loc 1 777 0
	lw	$2,56($fp)
	sw	$2,44($fp)
	.loc 1 778 0
	lw	$2,32($fp)
	sw	$2,28($fp)
	.loc 1 779 0
	lw	$2,40($fp)
	sw	$2,36($fp)
	.loc 1 784 0
	lw	$2,60($fp)
	bne	$2,$0,.L64
	nop

	.loc 1 785 0
	j	.L65
	nop

.L66:
	.loc 1 786 0
	lw	$2,%gp_rel(pfnDoRop)($28)
	lw	$3,36($fp)
	lbu	$4,0($3)
	lw	$3,28($fp)
	lbu	$5,0($3)
	lbu	$3,49($fp)
	move	$6,$3
	jalr	$2
	nop

	move	$3,$2
	lw	$2,28($fp)
	sb	$3,0($2)
	.loc 1 787 0
	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
	.loc 1 788 0
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	.loc 1 789 0
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
.L65:
	.loc 1 785 0
	lw	$3,44($fp)
	lw	$2,16($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L66
	nop

	j	.L67
	nop

.L64:
	.loc 1 793 0
	j	.L68
	nop

.L70:
	.loc 1 794 0
	lw	$2,36($fp)
	lbu	$2,0($2)
	move	$3,$2
	lw	$2,60($fp)
	sll	$2,$3,$2
	sb	$2,48($fp)
	.loc 1 795 0
	lw	$2,52($fp)
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
.L69:
	.loc 1 798 0
	lbu	$3,48($fp)
	lbu	$2,49($fp)
	and	$2,$3,$2
	sb	$2,48($fp)
	.loc 1 799 0
	lw	$2,%gp_rel(pfnDoRop)($28)
	lw	$3,28($fp)
	lbu	$5,0($3)
	lbu	$4,48($fp)
	lbu	$3,49($fp)
	move	$6,$3
	jalr	$2
	nop

	move	$3,$2
	lw	$2,28($fp)
	sb	$3,0($2)
	.loc 1 800 0
	lw	$2,44($fp)
	addiu	$2,$2,1
	sw	$2,44($fp)
	.loc 1 801 0
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
	.loc 1 802 0
	lw	$2,36($fp)
	addiu	$2,$2,1
	sw	$2,36($fp)
.L68:
	.loc 1 793 0
	lw	$3,44($fp)
	lw	$2,16($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L70
	nop

.L67:
	.loc 1 808 0
	lw	$2,20($fp)
	addiu	$3,$2,7
	slt	$4,$2,0
	movn	$2,$3,$4
	sra	$2,$2,3
	addiu	$2,$2,1
	sll	$2,$2,3
	sw	$2,20($fp)
	.loc 1 809 0
	lw	$2,32($fp)
	addiu	$2,$2,128
	sw	$2,32($fp)
	.loc 1 810 0
	lw	$2,80($fp)
	lw	$3,40($fp)
	addu	$2,$3,$2
	sw	$2,40($fp)
	.loc 1 811 0
	sw	$0,52($fp)
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
	lw	$31,76($sp)
	lw	$fp,72($sp)
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
	j	.L76
	nop

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
.L76:
	.loc 1 852 0
	lw	$2,%gp_rel(pbOledCur)($28)
	sw	$2,20($fp)
	.loc 1 854 0
	lw	$3,%gp_rel(dxcoOledFontCur)($28)
	lw	$2,%gp_rel(dycoOledFontCur)($28)
	move	$4,$3
	move	$5,$2
	lw	$6,16($fp)
	jal	OledPutBmp
	nop

	.loc 1 856 0
	lw	$3,%gp_rel(xcoOledCur)($28)
	lw	$2,%gp_rel(dxcoOledFontCur)($28)
	addu	$2,$3,$2
	sw	$2,%gp_rel(xcoOledCur)($28)
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

.L79:
	.loc 1 882 0
	lw	$2,24($fp)
	lb	$2,0($2)
	move	$4,$2
	jal	OledDrawChar
	nop

	.loc 1 883 0
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
.L78:
	.loc 1 881 0
	lw	$2,24($fp)
	lb	$2,0($2)
	bne	$2,$0,.L79
	nop

	.loc 1 885 0
	move	$sp,$fp
.LCFI63 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
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
.L99:
	.loc 1 1141 0
	lw	$2,8($fp)
	slt	$2,$2,128
	bne	$2,$0,.L100
	nop

	.loc 1 1142 0
	li	$2,127			# 0x7f
	sw	$2,8($fp)
.L100:
	.loc 1 1145 0
	lw	$2,8($fp)
	.loc 1 1147 0
	move	$sp,$fp
.LCFI99 = .
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
.L103:
	.loc 1 1171 0
	lw	$2,8($fp)
	slt	$2,$2,32
	bne	$2,$0,.L104
	nop

	.loc 1 1172 0
	li	$2,31			# 0x1f
	sw	$2,8($fp)
.L104:
	.loc 1 1175 0
	lw	$2,8($fp)
	.loc 1 1177 0
	move	$sp,$fp
.LCFI103 = .
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
	.4byte	0xbd6
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
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x17f
	.uleb128 0x5
	.ascii	"xco\000"
	.byte	0x1
	.byte	0x71
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x5
	.ascii	"yco\000"
	.byte	0x1
	.byte	0x71
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.ascii	"OledGetPos\000"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1bd
	.uleb128 0x5
	.ascii	"pxco\000"
	.byte	0x1
	.byte	0x98
	.4byte	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5
	.ascii	"pyco\000"
	.byte	0x1
	.byte	0x98
	.4byte	0x1bd
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb1
	.uleb128 0x6
	.byte	0x1
	.ascii	"OledSetDrawColor\000"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1f7
	.uleb128 0x5
	.ascii	"clr\000"
	.byte	0x1
	.byte	0xb1
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii	"OledGetStdPattern\000"
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.4byte	0x231
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x231
	.uleb128 0x5
	.ascii	"ipat\000"
	.byte	0x1
	.byte	0xca
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x137
	.uleb128 0x6
	.byte	0x1
	.ascii	"OledSetFillPattern\000"
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x26f
	.uleb128 0x5
	.ascii	"pbPat\000"
	.byte	0x1
	.byte	0xe3
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.ascii	"OledSetDrawMode\000"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x2a2
	.uleb128 0x5
	.ascii	"mod\000"
	.byte	0x1
	.byte	0xfb
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledGetDrawMode\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0xb1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.ascii	"OledDrawPixel\000"
	.byte	0x1
	.2byte	0x142
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledGetPixel\000"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x137
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledLineTo\000"
	.byte	0x1
	.2byte	0x174
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x3c8
	.uleb128 0xc
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x174
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0xc
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x174
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0xd
	.ascii	"err\000"
	.byte	0x1
	.2byte	0x176
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xd
	.ascii	"del\000"
	.byte	0x1
	.2byte	0x177
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0xd
	.ascii	"lim\000"
	.byte	0x1
	.2byte	0x178
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xd
	.ascii	"cpx\000"
	.byte	0x1
	.2byte	0x179
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0xd
	.ascii	"dxco\000"
	.byte	0x1
	.2byte	0x17a
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0xd
	.ascii	"dyco\000"
	.byte	0x1
	.2byte	0x17b
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0xd
	.ascii	"pfnMajor\000"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x3cf
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xd
	.ascii	"pfnMinor\000"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x3cf
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.byte	0
	.uleb128 0xe
	.4byte	0x3cf
	.uleb128 0xf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x3c8
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledDrawRect\000"
	.byte	0x1
	.2byte	0x1de
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x436
	.uleb128 0xc
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x1de
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xc
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x1de
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0xd
	.ascii	"xco1\000"
	.byte	0x1
	.2byte	0x1e0
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xd
	.ascii	"yco1\000"
	.byte	0x1
	.2byte	0x1e1
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledFillRect\000"
	.byte	0x1
	.2byte	0x203
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x517
	.uleb128 0xc
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x203
	.4byte	0xb1
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0xc
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x203
	.4byte	0xb1
	.byte	0x3
	.byte	0x91
	.sleb128 68
	.uleb128 0x10
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x205
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x206
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x207
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x10
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x208
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0xd
	.ascii	"ibPat\000"
	.byte	0x1
	.2byte	0x209
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xd
	.ascii	"pbCur\000"
	.byte	0x1
	.2byte	0x20a
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0xd
	.ascii	"pbLeft\000"
	.byte	0x1
	.2byte	0x20b
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x10
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x20c
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x11
	.ascii	"bTmp\000"
	.byte	0x1
	.2byte	0x20d
	.4byte	0x137
	.uleb128 0xd
	.ascii	"mskPat\000"
	.byte	0x1
	.2byte	0x20e
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.ascii	"OledGetBmp\000"
	.byte	0x1
	.2byte	0x26d
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x627
	.uleb128 0xc
	.ascii	"dxco\000"
	.byte	0x1
	.2byte	0x26d
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0xc
	.ascii	"dyco\000"
	.byte	0x1
	.2byte	0x26d
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0xc
	.ascii	"pbBits\000"
	.byte	0x1
	.2byte	0x26d
	.4byte	0x231
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x10
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x26f
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x10
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x270
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x271
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x272
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x273
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x10
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x274
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x275
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x276
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x10
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x277
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0xd
	.ascii	"bnAlign\000"
	.byte	0x1
	.2byte	0x278
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0xd
	.ascii	"mskEnd\000"
	.byte	0x1
	.2byte	0x279
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xd
	.ascii	"bTmp\000"
	.byte	0x1
	.2byte	0x27a
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledPutBmp\000"
	.byte	0x1
	.2byte	0x2d0
	.byte	0x1
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x78d
	.uleb128 0xc
	.ascii	"dxco\000"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xb1
	.byte	0x3
	.byte	0x91
	.sleb128 80
	.uleb128 0xc
	.ascii	"dyco\000"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0xb1
	.byte	0x3
	.byte	0x91
	.sleb128 84
	.uleb128 0xc
	.ascii	"pbBits\000"
	.byte	0x1
	.2byte	0x2d0
	.4byte	0x231
	.byte	0x3
	.byte	0x91
	.sleb128 88
	.uleb128 0x10
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x2d2
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x10
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x2d3
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x2d4
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x2d5
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x10
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x10
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x2d7
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x10
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x2d8
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x10
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x10
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x2da
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x11
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x2db
	.4byte	0x137
	.uleb128 0xd
	.ascii	"bBmp\000"
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0xd
	.ascii	"mskEnd\000"
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 49
	.uleb128 0xd
	.ascii	"mskUpper\000"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x137
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0xd
	.ascii	"mskLower\000"
	.byte	0x1
	.2byte	0x2df
	.4byte	0x137
	.byte	0x3
	.byte	0x91
	.sleb128 65
	.uleb128 0xd
	.ascii	"bnAlign\000"
	.byte	0x1
	.2byte	0x2e0
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0xd
	.ascii	"fTop\000"
	.byte	0x1
	.2byte	0x2e1
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x11
	.ascii	"bTmp\000"
	.byte	0x1
	.2byte	0x2e2
	.4byte	0x137
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledDrawChar\000"
	.byte	0x1
	.2byte	0x343
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x7ec
	.uleb128 0xc
	.ascii	"ch\000"
	.byte	0x1
	.2byte	0x343
	.4byte	0x7ec
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xd
	.ascii	"pbFont\000"
	.byte	0x1
	.2byte	0x345
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xd
	.ascii	"pbBmp\000"
	.byte	0x1
	.2byte	0x346
	.4byte	0x231
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.ascii	"ib\000"
	.byte	0x1
	.2byte	0x347
	.4byte	0xb1
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledDrawString\000"
	.byte	0x1
	.2byte	0x36e
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x827
	.uleb128 0xc
	.ascii	"sz\000"
	.byte	0x1
	.2byte	0x36e
	.4byte	0x827
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7ec
	.uleb128 0x13
	.byte	0x1
	.ascii	"OledRopSet\000"
	.byte	0x1
	.2byte	0x387
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB20
	.4byte	.LFE20
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x881
	.uleb128 0xc
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x387
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x387
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x387
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"OledRopOr\000"
	.byte	0x1
	.2byte	0x39c
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x8d4
	.uleb128 0xc
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x39c
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x39c
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x39c
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"OledRopAnd\000"
	.byte	0x1
	.2byte	0x3b1
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x928
	.uleb128 0xc
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x3b1
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"OledRopXor\000"
	.byte	0x1
	.2byte	0x3c6
	.byte	0x1
	.4byte	0x137
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x97c
	.uleb128 0xc
	.ascii	"bPix\000"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.ascii	"bDsp\000"
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x14
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x3c6
	.4byte	0x137
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.ascii	"OledMoveUp\000"
	.byte	0x1
	.2byte	0x3df
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.ascii	"OledMoveDown\000"
	.byte	0x1
	.2byte	0x407
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.ascii	"OledMoveLeft\000"
	.byte	0x1
	.2byte	0x42f
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.ascii	"OledMoveRight\000"
	.byte	0x1
	.2byte	0x450
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.ascii	"OledClampXco\000"
	.byte	0x1
	.2byte	0x470
	.byte	0x1
	.4byte	0xb1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xa25
	.uleb128 0xc
	.ascii	"xco\000"
	.byte	0x1
	.2byte	0x470
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"OledClampYco\000"
	.byte	0x1
	.2byte	0x48e
	.byte	0x1
	.4byte	0xb1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xa5b
	.uleb128 0xc
	.ascii	"yco\000"
	.byte	0x1
	.2byte	0x48e
	.4byte	0xb1
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x16
	.4byte	0x137
	.4byte	0xa6c
	.uleb128 0x17
	.4byte	0xa6c
	.2byte	0x1ff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x18
	.ascii	"rgbOledBmp\000"
	.byte	0x1
	.byte	0x3d
	.4byte	0xa5b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
	.uleb128 0x19
	.ascii	"xcoOledCur\000"
	.byte	0x1
	.byte	0x3a
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.ascii	"ycoOledCur\000"
	.byte	0x1
	.byte	0x3b
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.ascii	"pbOledCur\000"
	.byte	0x1
	.byte	0x3c
	.4byte	0x231
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.4byte	0x137
	.4byte	0xad7
	.uleb128 0x1a
	.byte	0
	.uleb128 0x19
	.ascii	"rgbFillPat\000"
	.byte	0x1
	.byte	0x3e
	.4byte	0xacc
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.ascii	"bnOledCur\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.ascii	"clrOledCur\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x137
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.ascii	"pbOledPatCur\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x231
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.ascii	"pbOledFontUser\000"
	.byte	0x1
	.byte	0x42
	.4byte	0x231
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.ascii	"pbOledFontCur\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x231
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.ascii	"dxcoOledFontCur\000"
	.byte	0x1
	.byte	0x44
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.ascii	"dycoOledFontCur\000"
	.byte	0x1
	.byte	0x45
	.4byte	0xb1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.byte	0x1
	.4byte	0x137
	.4byte	0xba3
	.uleb128 0x1c
	.4byte	0x137
	.uleb128 0x1c
	.4byte	0x137
	.uleb128 0x1c
	.4byte	0x137
	.byte	0
	.uleb128 0x18
	.ascii	"pfnDoRop\000"
	.byte	0x1
	.byte	0x4b
	.4byte	0xbba
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pfnDoRop
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb89
	.uleb128 0x18
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
	.uleb128 0xa
	.uleb128 0x2116
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
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
