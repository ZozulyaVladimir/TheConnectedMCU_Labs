	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:

	.comm	rgbOledBmp,512,4

	.comm	gameOver,1,1
	.globl	width
	.section	.rodata,code
	.align	2
	.type	width, @object
	.size	width, 4
width:
	.word	128
	.globl	height
	.align	2
	.type	height, @object
	.size	height, 4
height:
	.word	32

	.comm	x,4,4

	.comm	y,4,4

	.comm	fruitX,4,4

	.comm	fruitY,4,4

	.comm	score,4,4

	.comm	nTail,4,4

	.comm	tailX,400,4

	.comm	tailY,400,4

	.comm	start_game,1,1

	.comm	rand_seed,4,4

	.comm	dir,4,4
	.section	.text,code
	.align	2
	.globl	DelayMs
.LFB4 = .
	.file 1 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/user.c"
	.loc 1 20 0
	.set	nomips16
	.set	nomicromips
	.ent	DelayMs
	.type	DelayMs, @function
DelayMs:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL0 = .
	addiu	$sp,$sp,-16
.LCFI0 = .
	sw	$fp,12($sp)
.LCFI1 = .
	move	$fp,$sp
.LCFI2 = .
	sw	$4,16($fp)
	.loc 1 21 0
	lw	$3,16($fp)
	move	$2,$3
	sll	$2,$2,2
	sll	$4,$2,4
.LVL1 = .
	addu	$2,$2,$4
	subu	$2,$2,$3
	sll	$2,$2,2
	addu	$2,$2,$3
	sll	$3,$2,5
.LVL2 = .
	subu	$3,$3,$2
	sll	$2,$3,2
	move	$3,$2
	move	$2,$3
	sw	$2,0($fp)
	.loc 1 22 0
	nop
.L2:
	lw	$2,0($fp)
	addiu	$3,$2,-1
	sw	$3,0($fp)
	bne	$2,$0,.L2
	nop

	.loc 1 23 0
	move	$sp,$fp
.LCFI3 = .
.LVL3 = .
	lw	$fp,12($sp)
.LVL4 = .
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	DelayMs
.LFE4:
	.size	DelayMs, .-DelayMs
	.align	2
	.globl	InitGPIO
.LFB5 = .
	.loc 1 25 0
	.set	nomips16
	.set	nomicromips
	.ent	InitGPIO
	.type	InitGPIO, @function
InitGPIO:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI4 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	.loc 1 27 0
	lui	$3,%hi(ANSELG)
	lhu	$2,%lo(ANSELG)($3)
	ins	$2,$0,6,1
	sh	$2,%lo(ANSELG)($3)
	.loc 1 28 0
	lui	$3,%hi(ANSELB)
	lhu	$2,%lo(ANSELB)($3)
	ins	$2,$0,11,1
	sh	$2,%lo(ANSELB)($3)
	.loc 1 29 0
	lui	$3,%hi(ANSELG)
	lhu	$2,%lo(ANSELG)($3)
	ins	$2,$0,15,1
	sh	$2,%lo(ANSELG)($3)
	.loc 1 31 0
	lui	$3,%hi(TRISG)
	lhu	$2,%lo(TRISG)($3)
	ins	$2,$0,6,1
	sh	$2,%lo(TRISG)($3)
	.loc 1 32 0
	lui	$3,%hi(TRISB)
	lhu	$2,%lo(TRISB)($3)
	ins	$2,$0,11,1
	sh	$2,%lo(TRISB)($3)
	.loc 1 33 0
	lui	$3,%hi(TRISG)
	lhu	$2,%lo(TRISG)($3)
	ins	$2,$0,15,1
	sh	$2,%lo(TRISG)($3)
	.loc 1 34 0
	lui	$3,%hi(TRISD)
	lhu	$2,%lo(TRISD)($3)
	ins	$2,$0,4,1
	sh	$2,%lo(TRISD)($3)
	.loc 1 36 0
	lui	$3,%hi(TRISD)
	lhu	$2,%lo(TRISD)($3)
	li	$4,1			# 0x1
	ins	$2,$4,2,1
	sh	$2,%lo(TRISD)($3)
	.loc 1 38 0
	lui	$3,%hi(LATG)
	lhu	$2,%lo(LATG)($3)
	ins	$2,$0,6,1
	sh	$2,%lo(LATG)($3)
	.loc 1 39 0
	lui	$3,%hi(LATD)
	lhu	$2,%lo(LATD)($3)
	ins	$2,$0,4,1
	sh	$2,%lo(LATD)($3)
	.loc 1 40 0
	lui	$3,%hi(LATB)
	lhu	$2,%lo(LATB)($3)
	ins	$2,$0,11,1
	sh	$2,%lo(LATB)($3)
	.loc 1 41 0
	lui	$3,%hi(LATG)
	lhu	$2,%lo(LATG)($3)
	ins	$2,$0,15,1
	sh	$2,%lo(LATG)($3)
	.loc 1 43 0
	jal	led_test
	nop

.LVL5 = .
	.loc 1 45 0
	lui	$3,%hi(ANSELG)
	lhu	$2,%lo(ANSELG)($3)
	li	$4,1			# 0x1
	ins	$2,$4,7,1
	sh	$2,%lo(ANSELG)($3)
	.loc 1 46 0
	lui	$3,%hi(ANSELG)
	lhu	$2,%lo(ANSELG)($3)
	li	$4,1			# 0x1
	ins	$2,$4,8,1
	sh	$2,%lo(ANSELG)($3)
	.loc 1 47 0
	move	$sp,$fp
.LCFI7 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	InitGPIO
.LFE5:
	.size	InitGPIO, .-InitGPIO
	.align	2
	.globl	setup
.LFB6 = .
	.loc 1 49 0
	.set	nomips16
	.set	nomicromips
	.ent	setup
	.type	setup, @function
setup:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI8 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI9 = .
	move	$fp,$sp
.LCFI10 = .
	.loc 1 50 0
	lw	$2,%gp_rel(rand_seed)($28)
	move	$4,$2
	jal	srand
	nop

.LVL6 = .
	.loc 1 52 0
	li	$2,1			# 0x1
	sb	$2,%gp_rel(gameOver)($28)
	.loc 1 53 0
	sw	$0,%gp_rel(dir)($28)
	.loc 1 54 0
	li	$2,128			# 0x80
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,%gp_rel(x)($28)
	.loc 1 55 0
	li	$2,32			# 0x20
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sw	$2,%gp_rel(y)($28)
	.loc 1 56 0
	jal	rand
	nop

.LVL7 = .
	move	$3,$2
	li	$2,128			# 0x80
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sll	$2,$2,1
	sw	$2,%gp_rel(fruitX)($28)
	.loc 1 57 0
	jal	rand
	nop

.LVL8 = .
	move	$3,$2
	li	$2,32			# 0x20
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sll	$2,$2,1
	sw	$2,%gp_rel(fruitY)($28)
	.loc 1 58 0
	move	$sp,$fp
.LCFI11 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	setup
.LFE6:
	.size	setup, .-setup
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Welcome!\000"
	.align	2
.LC1:
	.ascii	"Press joystick\000"
	.section	.text,code
	.align	2
	.globl	oled_init
.LFB7 = .
	.loc 1 60 0
	.set	nomips16
	.set	nomicromips
	.ent	oled_init
	.type	oled_init, @function
oled_init:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI12 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI13 = .
	move	$fp,$sp
.LCFI14 = .
	.loc 1 61 0
	jal	OledHostInit
	nop

.LVL9 = .
	.loc 1 62 0
	jal	OledDspInit
	nop

.LVL10 = .
	.loc 1 63 0
	jal	OledDvrInit
	nop

.LVL11 = .
	.loc 1 65 0
	move	$4,$0
	jal	OledSetDrawColor
	nop

.LVL12 = .
	.loc 1 66 0
	move	$4,$0
	jal	OledSetDrawMode
	nop

.LVL13 = .
	.loc 1 67 0
	li	$4,1			# 0x1
	jal	OledGetStdPattern
	nop

.LVL14 = .
	move	$4,$2
	jal	OledSetFillPattern
	nop

.LVL15 = .
	.loc 1 69 0
	move	$4,$0
	move	$5,$0
	jal	OledSetCursor
	nop

.LVL16 = .
	.loc 1 70 0
	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	jal	OledPutString
	nop

.LVL17 = .
	.loc 1 71 0
	move	$4,$0
	li	$5,1			# 0x1
	jal	OledSetCursor
	nop

.LVL18 = .
	.loc 1 72 0
	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	jal	OledPutString
	nop

.LVL19 = .
	.loc 1 73 0
	move	$sp,$fp
.LCFI15 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	oled_init
.LFE7:
	.size	oled_init, .-oled_init
	.align	2
	.globl	draw
.LFB8 = .
	.loc 1 75 0
	.set	nomips16
	.set	nomicromips
	.ent	draw
	.type	draw, @function
draw:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI16 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI17 = .
	move	$fp,$sp
.LCFI18 = .
	.loc 1 77 0
	sw	$0,16($fp)
.LVL20 = .
	j	.L7
	nop

.LVL21 = .
.L16:
	.loc 1 78 0
	sw	$0,20($fp)
.LVL22 = .
	j	.L8
	nop

.LVL23 = .
.L15:
.LBB2 = .
	.loc 1 79 0
	lw	$4,16($fp)
	lw	$5,20($fp)
	jal	OledMoveTo
	nop

.LVL24 = .
	.loc 1 80 0
	lw	$3,%gp_rel(x)($28)
	lw	$2,16($fp)
	bne	$3,$2,.L9
	nop

	lw	$3,%gp_rel(y)($28)
	lw	$2,20($fp)
	bne	$3,$2,.L9
	nop

.LBB3 = .
	.loc 1 81 0
	li	$4,1			# 0x1
	jal	OledSetDrawColor
	nop

.LVL25 = .
	.loc 1 82 0
	lw	$2,16($fp)
	addiu	$3,$2,1
	lw	$2,20($fp)
	addiu	$2,$2,1
	move	$4,$3
	move	$5,$2
	jal	OledDrawRect
	nop

.LVL26 = .
.LBE3 = .
	.loc 1 80 0
	j	.L10
	nop

.L9:
	.loc 1 84 0
	lw	$3,%gp_rel(fruitX)($28)
	lw	$2,16($fp)
	bne	$3,$2,.L11
	nop

	lw	$3,%gp_rel(fruitY)($28)
	lw	$2,20($fp)
	bne	$3,$2,.L11
	nop

.LBB4 = .
	.loc 1 85 0
	li	$4,1			# 0x1
	jal	OledSetDrawColor
	nop

.LVL27 = .
	.loc 1 86 0
	lw	$2,16($fp)
	addiu	$3,$2,1
	lw	$2,20($fp)
	addiu	$2,$2,1
	move	$4,$3
	move	$5,$2
	jal	OledDrawRect
	nop

.LVL28 = .
.LBE4 = .
	.loc 1 84 0
	j	.L10
	nop

.L11:
.LBB5 = .
	.loc 1 89 0
	sb	$0,28($fp)
.LVL29 = .
	.loc 1 90 0
	sw	$0,24($fp)
.LVL30 = .
	j	.L12
	nop

.LVL31 = .
.L14:
	.loc 1 91 0
	lui	$2,%hi(tailX)
	lw	$3,24($fp)
.LVL32 = .
	sll	$3,$3,2
	addiu	$2,$2,%lo(tailX)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,16($fp)
	bne	$3,$2,.L13
	nop

	lui	$2,%hi(tailY)
	lw	$3,24($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(tailY)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,20($fp)
	bne	$3,$2,.L13
	nop

.LBB6 = .
	.loc 1 92 0
	li	$2,1			# 0x1
	sb	$2,28($fp)
.LVL33 = .
	.loc 1 93 0
	li	$4,1			# 0x1
	jal	OledSetDrawColor
	nop

.LVL34 = .
	.loc 1 94 0
	lw	$2,16($fp)
	addiu	$3,$2,1
	lw	$2,20($fp)
	addiu	$2,$2,1
	move	$4,$3
	move	$5,$2
	jal	OledDrawRect
	nop

.LVL35 = .
.L13:
.LBE6 = .
	.loc 1 90 0
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
.LVL36 = .
.L12:
	lw	$2,%gp_rel(nTail)($28)
	lw	$3,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L14
	nop

	.loc 1 97 0
	lbu	$2,28($fp)
	xori	$2,$2,0x1
	andi	$2,$2,0x00ff
	beq	$2,$0,.L10
	nop

.LBB7 = .
	.loc 1 98 0
	move	$4,$0
	jal	OledSetDrawColor
	nop

.LVL37 = .
	.loc 1 99 0
	lw	$2,16($fp)
	addiu	$3,$2,1
	lw	$2,20($fp)
	addiu	$2,$2,1
	move	$4,$3
	move	$5,$2
	jal	OledDrawRect
	nop

.LVL38 = .
.L10:
.LBE7 = .
.LBE5 = .
.LBE2 = .
	.loc 1 78 0
	lw	$2,20($fp)
	addiu	$2,$2,2
	sw	$2,20($fp)
.LVL39 = .
.L8:
	li	$2,32			# 0x20
	lw	$3,20($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L15
	nop

	.loc 1 103 0
	jal	OledUpdate
	nop

.LVL40 = .
	.loc 1 77 0
	lw	$2,16($fp)
	addiu	$2,$2,2
	sw	$2,16($fp)
.LVL41 = .
.L7:
	li	$2,128			# 0x80
	lw	$3,16($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L16
	nop

	.loc 1 105 0
	move	$sp,$fp
.LCFI19 = .
.LVL42 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	draw
.LFE8:
	.size	draw, .-draw
	.align	2
	.globl	input
.LFB9 = .
	.loc 1 107 0
	.set	nomips16
	.set	nomicromips
	.ent	input
	.type	input, @function
input:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI20 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI21 = .
	move	$fp,$sp
.LCFI22 = .
	.loc 1 108 0
	li	$4,10			# 0xa
	jal	convertWiFIREadc
	nop

.LVL43 = .
	slt	$2,$2,3277
	bne	$2,$0,.L18
	nop

	lw	$3,%gp_rel(dir)($28)
	li	$2,4			# 0x4
	beq	$3,$2,.L18
	nop

	.loc 1 109 0
	li	$2,2			# 0x2
	sw	$2,%gp_rel(dir)($28)
	j	.L17
	nop

.L18:
	.loc 1 111 0
	li	$4,10			# 0xa
	jal	convertWiFIREadc
	nop

.LVL44 = .
	slt	$2,$2,819
	beq	$2,$0,.L20
	nop

	lw	$3,%gp_rel(dir)($28)
	li	$2,2			# 0x2
	beq	$3,$2,.L20
	nop

	.loc 1 112 0
	li	$2,4			# 0x4
	sw	$2,%gp_rel(dir)($28)
	j	.L17
	nop

.L20:
	.loc 1 114 0
	li	$4,13			# 0xd
	jal	convertWiFIREadc
	nop

.LVL45 = .
	slt	$2,$2,3277
	bne	$2,$0,.L21
	nop

	lw	$3,%gp_rel(dir)($28)
	li	$2,3			# 0x3
	beq	$3,$2,.L21
	nop

	.loc 1 115 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(dir)($28)
	j	.L17
	nop

.L21:
	.loc 1 117 0
	li	$4,13			# 0xd
	jal	convertWiFIREadc
	nop

.LVL46 = .
	slt	$2,$2,819
	beq	$2,$0,.L17
	nop

	lw	$3,%gp_rel(dir)($28)
	li	$2,1			# 0x1
	beq	$3,$2,.L17
	nop

	.loc 1 118 0
	li	$2,3			# 0x3
	sw	$2,%gp_rel(dir)($28)
.L17:
	.loc 1 121 0
	move	$sp,$fp
.LCFI23 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	input
.LFE9:
	.size	input, .-input
	.align	2
	.globl	logic
.LFB10 = .
	.loc 1 123 0
	.set	nomips16
	.set	nomicromips
	.ent	logic
	.type	logic, @function
logic:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI24 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI25 = .
	move	$fp,$sp
.LCFI26 = .
	.loc 1 124 0
	lui	$2,%hi(tailX)
	lw	$2,%lo(tailX)($2)
	sw	$2,16($fp)
.LVL47 = .
	.loc 1 125 0
	lui	$2,%hi(tailY)
.LVL48 = .
	lw	$2,%lo(tailY)($2)
	sw	$2,20($fp)
.LVL49 = .
	.loc 1 129 0
	lw	$3,%gp_rel(x)($28)
	lui	$2,%hi(tailX)
.LVL50 = .
	sw	$3,%lo(tailX)($2)
.LVL51 = .
	.loc 1 130 0
	lw	$3,%gp_rel(y)($28)
	lui	$2,%hi(tailY)
	sw	$3,%lo(tailY)($2)
.LVL52 = .
	.loc 1 132 0
	li	$2,1			# 0x1
	sw	$2,24($fp)
.LVL53 = .
	j	.L23
	nop

.LVL54 = .
.L24:
	.loc 1 134 0
	lui	$2,%hi(tailX)
	lw	$3,24($fp)
.LVL55 = .
	sll	$3,$3,2
	addiu	$2,$2,%lo(tailX)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,32($fp)
.LVL56 = .
	.loc 1 135 0
	lui	$2,%hi(tailY)
.LVL57 = .
	lw	$3,24($fp)
.LVL58 = .
	sll	$3,$3,2
.LVL59 = .
	addiu	$2,$2,%lo(tailY)
	addu	$2,$3,$2
	lw	$2,0($2)
	sw	$2,36($fp)
.LVL60 = .
	.loc 1 137 0
	lui	$2,%hi(tailX)
.LVL61 = .
	lw	$3,24($fp)
.LVL62 = .
	sll	$3,$3,2
.LVL63 = .
	addiu	$2,$2,%lo(tailX)
.LVL64 = .
	addu	$2,$3,$2
.LVL65 = .
	lw	$3,16($fp)
.LVL66 = .
	sw	$3,0($2)
.LVL67 = .
	.loc 1 138 0
	lui	$2,%hi(tailY)
	lw	$3,24($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(tailY)
	addu	$2,$3,$2
	lw	$3,20($fp)
	sw	$3,0($2)
	.loc 1 140 0
	lw	$2,32($fp)
	sw	$2,16($fp)
.LVL68 = .
	.loc 1 141 0
	lw	$2,36($fp)
	sw	$2,20($fp)
.LVL69 = .
	.loc 1 132 0
	lw	$2,24($fp)
	addiu	$2,$2,1
	sw	$2,24($fp)
.LVL70 = .
.L23:
	lw	$2,%gp_rel(nTail)($28)
	lw	$3,24($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L24
	nop

	.loc 1 145 0
	lw	$2,%gp_rel(dir)($28)
	li	$3,2			# 0x2
	beq	$2,$3,.L26
	nop

	sltu	$3,$2,3
	beq	$3,$0,.L27
	nop

	li	$3,1			# 0x1
	beq	$2,$3,.L28
	nop

	j	.L25
	nop

.L27:
	li	$3,3			# 0x3
	beq	$2,$3,.L29
	nop

	li	$3,4			# 0x4
	beq	$2,$3,.L30
	nop

	j	.L25
	nop

.L26:
	.loc 1 147 0
	lw	$2,%gp_rel(x)($28)
	slt	$2,$2,2
	beq	$2,$0,.L31
	nop

	li	$2,128			# 0x80
	addiu	$2,$2,-2
	j	.L32
	nop

.L31:
	lw	$2,%gp_rel(x)($28)
	addiu	$2,$2,-2
.L32:
	sw	$2,%gp_rel(x)($28)
	.loc 1 148 0
	j	.L25
	nop

.L30:
	.loc 1 150 0
	li	$2,128			# 0x80
	addiu	$3,$2,-4
	lw	$2,%gp_rel(x)($28)
	slt	$2,$3,$2
	bne	$2,$0,.L33
	nop

	lw	$2,%gp_rel(x)($28)
	addiu	$2,$2,2
	j	.L34
	nop

.L33:
	move	$2,$0
.L34:
	sw	$2,%gp_rel(x)($28)
	.loc 1 151 0
	j	.L25
	nop

.L28:
	.loc 1 153 0
	lw	$2,%gp_rel(y)($28)
	slt	$2,$2,2
	beq	$2,$0,.L35
	nop

	li	$2,32			# 0x20
	addiu	$2,$2,-2
	j	.L36
	nop

.L35:
	lw	$2,%gp_rel(y)($28)
	addiu	$2,$2,-2
.L36:
	sw	$2,%gp_rel(y)($28)
	.loc 1 154 0
	j	.L25
	nop

.L29:
	.loc 1 156 0
	li	$2,32			# 0x20
	addiu	$3,$2,-4
	lw	$2,%gp_rel(y)($28)
	slt	$2,$3,$2
	bne	$2,$0,.L37
	nop

	lw	$2,%gp_rel(y)($28)
	addiu	$2,$2,2
	j	.L38
	nop

.L37:
	move	$2,$0
.L38:
	sw	$2,%gp_rel(y)($28)
	.loc 1 157 0
	nop
.L25:
	.loc 1 160 0
	sw	$0,28($fp)
.LVL71 = .
	j	.L39
	nop

.LVL72 = .
.L41:
	.loc 1 161 0
	lui	$2,%hi(tailX)
	lw	$3,28($fp)
.LVL73 = .
	sll	$3,$3,2
	addiu	$2,$2,%lo(tailX)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,%gp_rel(x)($28)
	bne	$3,$2,.L40
	nop

	lui	$2,%hi(tailY)
	lw	$3,28($fp)
	sll	$3,$3,2
	addiu	$2,$2,%lo(tailY)
	addu	$2,$3,$2
	lw	$3,0($2)
	lw	$2,%gp_rel(y)($28)
	bne	$3,$2,.L40
	nop

	.loc 1 162 0
	sb	$0,%gp_rel(gameOver)($28)
.L40:
	.loc 1 160 0
	lw	$2,28($fp)
	addiu	$2,$2,1
	sw	$2,28($fp)
.LVL74 = .
.L39:
	lw	$2,%gp_rel(nTail)($28)
	lw	$3,28($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L41
	nop

	.loc 1 165 0
	lw	$3,%gp_rel(fruitX)($28)
	lw	$2,%gp_rel(x)($28)
	bne	$3,$2,.L22
	nop

	lw	$3,%gp_rel(fruitY)($28)
	lw	$2,%gp_rel(y)($28)
	bne	$3,$2,.L22
	nop

	.loc 1 166 0
	jal	rand
	nop

.LVL75 = .
	move	$3,$2
	li	$2,128			# 0x80
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sll	$2,$2,1
	sw	$2,%gp_rel(fruitX)($28)
	.loc 1 167 0
	jal	rand
	nop

.LVL76 = .
	move	$3,$2
	li	$2,32			# 0x20
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	srl	$3,$2,31
	addu	$2,$3,$2
	sra	$2,$2,1
	sll	$2,$2,1
	sw	$2,%gp_rel(fruitY)($28)
	.loc 1 168 0
	lw	$2,%gp_rel(nTail)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(nTail)($28)
	.loc 1 169 0
	lw	$2,%gp_rel(score)($28)
	addiu	$2,$2,11
	sw	$2,%gp_rel(score)($28)
.L22:
	.loc 1 171 0
	move	$sp,$fp
.LCFI27 = .
.LVL77 = .
	lw	$31,44($sp)
	lw	$fp,40($sp)
.LVL78 = .
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	logic
.LFE10:
	.size	logic, .-logic
	.align	2
	.globl	set_leds
.LFB11 = .
	.loc 1 174 0
	.set	nomips16
	.set	nomicromips
	.ent	set_leds
	.type	set_leds, @function
set_leds:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL79 = .
	addiu	$sp,$sp,-8
.LCFI28 = .
	sw	$fp,4($sp)
.LCFI29 = .
	move	$fp,$sp
.LCFI30 = .
	sw	$4,8($fp)
	.loc 1 175 0
	lw	$2,8($fp)
	andi	$2,$2,0x1
	sltu	$2,$0,$2
	andi	$4,$2,0x00ff
.LVL80 = .
	lui	$3,%hi(LATG)
	lhu	$2,%lo(LATG)($3)
	ins	$2,$4,6,1
	sh	$2,%lo(LATG)($3)
	.loc 1 176 0
	lw	$2,8($fp)
	andi	$2,$2,0x2
	sltu	$2,$0,$2
	andi	$4,$2,0x00ff
	lui	$3,%hi(LATD)
	lhu	$2,%lo(LATD)($3)
	ins	$2,$4,4,1
	sh	$2,%lo(LATD)($3)
	.loc 1 177 0
	lw	$2,8($fp)
	andi	$2,$2,0x4
	sltu	$2,$0,$2
	andi	$4,$2,0x00ff
	lui	$3,%hi(LATB)
	lhu	$2,%lo(LATB)($3)
	ins	$2,$4,11,1
	sh	$2,%lo(LATB)($3)
	.loc 1 178 0
	lw	$2,8($fp)
	andi	$2,$2,0x8
	sltu	$2,$0,$2
	andi	$4,$2,0x00ff
	lui	$3,%hi(LATG)
	lhu	$2,%lo(LATG)($3)
	ins	$2,$4,15,1
	sh	$2,%lo(LATG)($3)
	.loc 1 179 0
	move	$sp,$fp
.LCFI31 = .
.LVL81 = .
	lw	$fp,4($sp)
.LVL82 = .
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	set_leds
.LFE11:
	.size	set_leds, .-set_leds
	.align	2
	.globl	led_test
.LFB12 = .
	.loc 1 181 0
	.set	nomips16
	.set	nomicromips
	.ent	led_test
	.type	led_test, @function
led_test:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI32 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI33 = .
	move	$fp,$sp
.LCFI34 = .
	.loc 1 183 0
	move	$4,$0
	jal	set_leds
	nop

.LVL83 = .
	.loc 1 184 0
	sw	$0,16($fp)
.LVL84 = .
	j	.L45
	nop

.L46:
	.loc 1 185 0
	li	$4,15			# 0xf
	jal	set_leds
	nop

.LVL85 = .
	.loc 1 186 0
	li	$4,50			# 0x32
	jal	DelayMs
	nop

.LVL86 = .
	.loc 1 187 0
	move	$4,$0
	jal	set_leds
	nop

.LVL87 = .
	.loc 1 188 0
	li	$4,50			# 0x32
	jal	DelayMs
	nop

.LVL88 = .
	.loc 1 184 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.LVL89 = .
.L45:
	lw	$2,16($fp)
	slt	$2,$2,4
	bne	$2,$0,.L46
	nop

	.loc 1 190 0
	move	$sp,$fp
.LCFI35 = .
.LVL90 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
.LVL91 = .
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	led_test
.LFE12:
	.size	led_test, .-led_test
	.align	2
	.globl	initTimer2AndIC3
.LFB13 = .
	.loc 1 192 0
	.set	nomips16
	.set	nomicromips
	.ent	initTimer2AndIC3
	.type	initTimer2AndIC3, @function
initTimer2AndIC3:
	.frame	$fp,8,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI36 = .
	sw	$31,4($sp)
	sw	$fp,0($sp)
.LCFI37 = .
	move	$fp,$sp
.LCFI38 = .
	.loc 1 193 0
	lui	$2,%hi(T2CON)
	sw	$0,%lo(T2CON)($2)
	.loc 1 194 0
	lui	$3,%hi(T2CON)
	lhu	$2,%lo(T2CON)($3)
	li	$4,7			# 0x7
	ins	$2,$4,4,3
	sh	$2,%lo(T2CON)($3)
	.loc 1 195 0
	lui	$3,%hi(T2CON)
	lhu	$2,%lo(T2CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,3,1
	sh	$2,%lo(T2CON)($3)
	.loc 1 197 0
	lui	$2,%hi(TMR2)
	sw	$0,%lo(TMR2)($2)
	.loc 1 199 0
	lui	$2,%hi(PR2)
	li	$3,39062			# 0x9896
	sw	$3,%lo(PR2)($2)
	.loc 1 200 0
	lui	$3,%hi(T2CON)
	lhu	$2,%lo(T2CON)($3)
	ins	$2,$0,13,1
	sh	$2,%lo(T2CON)($3)
	.loc 1 201 0
	lui	$3,%hi(T2CON)
	lhu	$2,%lo(T2CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sh	$2,%lo(T2CON)($3)
	.loc 1 203 0
	lui	$2,%hi(IC3R)
	sw	$0,%lo(IC3R)($2)
	.loc 1 205 0
	lui	$3,%hi(IC3CON)
	lhu	$2,%lo(IC3CON)($3)
	ins	$2,$0,8,1
	sh	$2,%lo(IC3CON)($3)
	.loc 1 206 0
	lui	$3,%hi(IC3CON)
	lhu	$2,%lo(IC3CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,7,1
	sh	$2,%lo(IC3CON)($3)
	.loc 1 207 0
	lui	$3,%hi(IC3CON)
	lhu	$2,%lo(IC3CON)($3)
	li	$4,2			# 0x2
	ins	$2,$4,0,3
	sh	$2,%lo(IC3CON)($3)
	.loc 1 208 0
	lui	$3,%hi(IC3CON)
	lhu	$2,%lo(IC3CON)($3)
	ins	$2,$0,5,2
	sh	$2,%lo(IC3CON)($3)
	.loc 1 209 0
	lui	$3,%hi(IC3CON)
	lhu	$2,%lo(IC3CON)($3)
	ins	$2,$0,13,1
	sh	$2,%lo(IC3CON)($3)
	.loc 1 211 0
	lui	$3,%hi(IC3CON)
	lhu	$2,%lo(IC3CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sh	$2,%lo(IC3CON)($3)
	.loc 1 213 0
	lui	$3,%hi(IPC4)
	lw	$2,%lo(IPC4)($3)
	li	$4,2			# 0x2
	ins	$2,$4,2,3
	sw	$2,%lo(IPC4)($3)
	.loc 1 214 0
	lui	$3,%hi(IPC4)
	lw	$2,%lo(IPC4)($3)
	li	$4,1			# 0x1
	ins	$2,$4,0,2
	sw	$2,%lo(IPC4)($3)
	.loc 1 215 0
	lui	$3,%hi(IFS0)
	lw	$2,%lo(IFS0)($3)
	ins	$2,$0,16,1
	sw	$2,%lo(IFS0)($3)
	.loc 1 216 0
	lui	$3,%hi(IEC0)
	lw	$2,%lo(IEC0)($3)
	li	$4,1			# 0x1
	ins	$2,$4,16,1
	sw	$2,%lo(IEC0)($3)
	.loc 1 218 0
	lui	$3,%hi(IPC2)
	lw	$2,%lo(IPC2)($3)
	li	$4,2			# 0x2
	ins	$2,$4,10,3
	sw	$2,%lo(IPC2)($3)
	.loc 1 219 0
	lui	$3,%hi(IPC2)
	lw	$2,%lo(IPC2)($3)
	li	$4,1			# 0x1
	ins	$2,$4,8,2
	sw	$2,%lo(IPC2)($3)
	.loc 1 220 0
	lui	$3,%hi(IFS0)
	lw	$2,%lo(IFS0)($3)
	ins	$2,$0,9,1
	sw	$2,%lo(IFS0)($3)
	.loc 1 221 0
	lui	$3,%hi(IEC0)
	lw	$2,%lo(IEC0)($3)
	li	$4,1			# 0x1
	ins	$2,$4,9,1
	sw	$2,%lo(IEC0)($3)
	.loc 1 223 0
	lui	$2,%hi(INTCONSET)
	li	$3,4096			# 0x1000
	sw	$3,%lo(INTCONSET)($2)
	.loc 1 225 0
	ei	$2
	.loc 1 226 0
	move	$sp,$fp
.LCFI39 = .
	lw	$31,4($sp)
	lw	$fp,0($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	initTimer2AndIC3
.LFE13:
	.size	initTimer2AndIC3, .-initTimer2AndIC3
	.align	2
	.globl	Capture3
.LFB14 = .
	.loc 1 228 0
	.set	nomips16
	.set	nomicromips
	.ent	Capture3
	.type	Capture3, @function
Capture3:
	.frame	$fp,24,$31		# vars= 8, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# Begin mchp_output_function_prologue: SRS_CONTEXT_SAVE
	.set	noat
# End mchp_output_function_prologue
	rdpgpr	$sp,$sp
	mfc0	$26,$14
	mfc0	$27,$12
	addiu	$sp,$sp,-24
.LCFI40 = .
	sw	$26,20($sp)
.LCFI41 = .
	mfc0	$26,$12,2
	sw	$27,16($sp)
	sw	$26,12($sp)
.LCFI42 = .
	ins	$27,$0,1,15
	ori	$27,$27,0x800
	mtc0	$27,$12
	move	$fp,$sp
.LCFI43 = .
	.loc 1 230 0
	lui	$2,%hi(IC3CON)
	lw	$2,%lo(IC3CON)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L49
	nop

	.loc 1 231 0
	lui	$3,%hi(T2CON)
	lhu	$2,%lo(T2CON)($3)
	ins	$2,$0,15,1
	sh	$2,%lo(T2CON)($3)
	.loc 1 232 0
	sb	$0,%gp_rel(start_game)($28)
	.loc 1 233 0
	lui	$3,%hi(IEC0)
	lw	$2,%lo(IEC0)($3)
	ins	$2,$0,16,1
	sw	$2,%lo(IEC0)($3)
	.loc 1 234 0
	lui	$2,%hi(IC3BUF)
	lw	$2,%lo(IC3BUF)($2)
	sw	$2,%gp_rel(rand_seed)($28)
	.loc 1 235 0
	lui	$3,%hi(IC3CON)
	lhu	$2,%lo(IC3CON)($3)
	ins	$2,$0,15,1
	sh	$2,%lo(IC3CON)($3)
	j	.L50
	nop

.L49:
.LBB8 = .
	.loc 1 238 0
	lui	$2,%hi(IC3BUF)
	lw	$2,%lo(IC3BUF)($2)
	sw	$2,0($fp)
.LVL92 = .
.L50:
.LBE8 = .
	.loc 1 241 0
	lui	$3,%hi(IFS0)
	lw	$2,%lo(IFS0)($3)
	ins	$2,$0,16,1
	sw	$2,%lo(IFS0)($3)
	.loc 1 242 0
	move	$sp,$fp
.LCFI44 = .
	di
	ehb
	lw	$27,12($sp)
	lw	$26,20($sp)
	mtc0	$27,$12,2
	lw	$27,16($sp)
	mtc0	$26,$14
	addiu	$sp,$sp,24
	wrpgpr	$sp,$sp
	mtc0	$27,$12
	eret
	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
	.set	at
# End mchp_output_function_epilogue
	.end	Capture3
.LFE14:
	.size	Capture3, .-Capture3
	.align	2
	.globl	OledClear
.LFB15 = .
	.loc 1 244 0
	.set	nomips16
	.set	nomicromips
	.ent	OledClear
	.type	OledClear, @function
OledClear:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI45 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI46 = .
	move	$fp,$sp
.LCFI47 = .
	.loc 1 246 0
	move	$4,$0
	move	$5,$0
	jal	OledMoveTo
	nop

.LVL93 = .
	.loc 1 247 0
	move	$4,$0
	jal	OledGetStdPattern
	nop

.LVL94 = .
	move	$4,$2
	jal	OledSetFillPattern
	nop

.LVL95 = .
	.loc 1 248 0
	li	$4,127			# 0x7f
	li	$5,31			# 0x1f
	jal	OledFillRect
	nop

.LVL96 = .
	.loc 1 249 0
	jal	OledUpdate
	nop

.LVL97 = .
	.loc 1 251 0
	move	$sp,$fp
.LCFI48 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledClear
.LFE15:
	.size	OledClear, .-OledClear
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
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
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
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
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
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
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
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
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
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
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
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
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
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
	.uleb128 0x8
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
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0x9a
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0x9b
	.uleb128 0x2
	.byte	0x9a
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
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
	.4byte	.LCFI45-.LFB15
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE22:
	.section	.text,code
.Letext0:
	.file 2 "d:/downloads/soft/mplab ide/xc32 compiler/pic32mx/include/proc/p32mz2048efg100.h"
	.file 3 "d:/downloads/soft/mplab ide/xc32 compiler/pic32mx/include/machine/int_types.h"
	.file 4 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/oled/oled.h"
	.file 5 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/user.h"
	.file 6 "d:/downloads/soft/mplab ide/xc32 compiler/pic32mx/include/stdlib.h"
	.file 7 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/adc.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x221e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"src/user.c\000"
	.ascii	"D:/study/7/MIPS_PIC/Labs/Demo7_Comm_SPI_OLED\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x677
	.4byte	0x315
	.uleb128 0x4
	.ascii	"CTIF\000"
	.byte	0x2
	.2byte	0x678
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CS0IF\000"
	.byte	0x2
	.2byte	0x679
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CS1IF\000"
	.byte	0x2
	.2byte	0x67a
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT0IF\000"
	.byte	0x2
	.2byte	0x67b
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T1IF\000"
	.byte	0x2
	.2byte	0x67c
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1EIF\000"
	.byte	0x2
	.2byte	0x67d
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1IF\000"
	.byte	0x2
	.2byte	0x67e
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC1IF\000"
	.byte	0x2
	.2byte	0x67f
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT1IF\000"
	.byte	0x2
	.2byte	0x680
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T2IF\000"
	.byte	0x2
	.2byte	0x681
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2EIF\000"
	.byte	0x2
	.2byte	0x682
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2IF\000"
	.byte	0x2
	.2byte	0x683
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC2IF\000"
	.byte	0x2
	.2byte	0x684
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT2IF\000"
	.byte	0x2
	.2byte	0x685
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T3IF\000"
	.byte	0x2
	.2byte	0x686
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC3EIF\000"
	.byte	0x2
	.2byte	0x687
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC3IF\000"
	.byte	0x2
	.2byte	0x688
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC3IF\000"
	.byte	0x2
	.2byte	0x689
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT3IF\000"
	.byte	0x2
	.2byte	0x68a
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T4IF\000"
	.byte	0x2
	.2byte	0x68b
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC4EIF\000"
	.byte	0x2
	.2byte	0x68c
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC4IF\000"
	.byte	0x2
	.2byte	0x68d
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC4IF\000"
	.byte	0x2
	.2byte	0x68e
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT4IF\000"
	.byte	0x2
	.2byte	0x68f
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T5IF\000"
	.byte	0x2
	.2byte	0x690
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC5EIF\000"
	.byte	0x2
	.2byte	0x691
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC5IF\000"
	.byte	0x2
	.2byte	0x692
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC5IF\000"
	.byte	0x2
	.2byte	0x693
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T6IF\000"
	.byte	0x2
	.2byte	0x694
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC6EIF\000"
	.byte	0x2
	.2byte	0x695
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC6IF\000"
	.byte	0x2
	.2byte	0x696
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC6IF\000"
	.byte	0x2
	.2byte	0x697
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x699
	.4byte	0x32f
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x69a
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x676
	.4byte	0x343
	.uleb128 0x6
	.4byte	0x87
	.uleb128 0x6
	.4byte	0x315
	.byte	0
	.uleb128 0x7
	.ascii	"__IFS0bits_t\000"
	.byte	0x2
	.2byte	0x69c
	.4byte	0x32f
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x799
	.4byte	0x5e6
	.uleb128 0x4
	.ascii	"CTIE\000"
	.byte	0x2
	.2byte	0x79a
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CS0IE\000"
	.byte	0x2
	.2byte	0x79b
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CS1IE\000"
	.byte	0x2
	.2byte	0x79c
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT0IE\000"
	.byte	0x2
	.2byte	0x79d
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T1IE\000"
	.byte	0x2
	.2byte	0x79e
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1EIE\000"
	.byte	0x2
	.2byte	0x79f
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1IE\000"
	.byte	0x2
	.2byte	0x7a0
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC1IE\000"
	.byte	0x2
	.2byte	0x7a1
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT1IE\000"
	.byte	0x2
	.2byte	0x7a2
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T2IE\000"
	.byte	0x2
	.2byte	0x7a3
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2EIE\000"
	.byte	0x2
	.2byte	0x7a4
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2IE\000"
	.byte	0x2
	.2byte	0x7a5
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC2IE\000"
	.byte	0x2
	.2byte	0x7a6
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT2IE\000"
	.byte	0x2
	.2byte	0x7a7
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T3IE\000"
	.byte	0x2
	.2byte	0x7a8
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC3EIE\000"
	.byte	0x2
	.2byte	0x7a9
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC3IE\000"
	.byte	0x2
	.2byte	0x7aa
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC3IE\000"
	.byte	0x2
	.2byte	0x7ab
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT3IE\000"
	.byte	0x2
	.2byte	0x7ac
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T4IE\000"
	.byte	0x2
	.2byte	0x7ad
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC4EIE\000"
	.byte	0x2
	.2byte	0x7ae
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC4IE\000"
	.byte	0x2
	.2byte	0x7af
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC4IE\000"
	.byte	0x2
	.2byte	0x7b0
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT4IE\000"
	.byte	0x2
	.2byte	0x7b1
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T5IE\000"
	.byte	0x2
	.2byte	0x7b2
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC5EIE\000"
	.byte	0x2
	.2byte	0x7b3
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC5IE\000"
	.byte	0x2
	.2byte	0x7b4
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC5IE\000"
	.byte	0x2
	.2byte	0x7b5
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T6IE\000"
	.byte	0x2
	.2byte	0x7b6
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC6EIE\000"
	.byte	0x2
	.2byte	0x7b7
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC6IE\000"
	.byte	0x2
	.2byte	0x7b8
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC6IE\000"
	.byte	0x2
	.2byte	0x7b9
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x7bb
	.4byte	0x600
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x7bc
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x798
	.4byte	0x614
	.uleb128 0x6
	.4byte	0x358
	.uleb128 0x6
	.4byte	0x5e6
	.byte	0
	.uleb128 0x7
	.ascii	"__IEC0bits_t\000"
	.byte	0x2
	.2byte	0x7be
	.4byte	0x600
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x8eb
	.4byte	0x6d5
	.uleb128 0x4
	.ascii	"INT1IS\000"
	.byte	0x2
	.2byte	0x8ec
	.4byte	0x77
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT1IP\000"
	.byte	0x2
	.2byte	0x8ed
	.4byte	0x77
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T2IS\000"
	.byte	0x2
	.2byte	0x8ef
	.4byte	0x77
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T2IP\000"
	.byte	0x2
	.2byte	0x8f0
	.4byte	0x77
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2EIS\000"
	.byte	0x2
	.2byte	0x8f2
	.4byte	0x77
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2EIP\000"
	.byte	0x2
	.2byte	0x8f3
	.4byte	0x77
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2IS\000"
	.byte	0x2
	.2byte	0x8f5
	.4byte	0x77
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2IP\000"
	.byte	0x2
	.2byte	0x8f6
	.4byte	0x77
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x8f8
	.4byte	0x6ef
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x8f9
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x8ea
	.4byte	0x703
	.uleb128 0x6
	.4byte	0x629
	.uleb128 0x6
	.4byte	0x6d5
	.byte	0
	.uleb128 0x7
	.ascii	"__IPC2bits_t\000"
	.byte	0x2
	.2byte	0x8fb
	.4byte	0x6ef
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x91b
	.4byte	0x7c2
	.uleb128 0x4
	.ascii	"IC3IS\000"
	.byte	0x2
	.2byte	0x91c
	.4byte	0x77
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC3IP\000"
	.byte	0x2
	.2byte	0x91d
	.4byte	0x77
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC3IS\000"
	.byte	0x2
	.2byte	0x91f
	.4byte	0x77
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC3IP\000"
	.byte	0x2
	.2byte	0x920
	.4byte	0x77
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT3IS\000"
	.byte	0x2
	.2byte	0x922
	.4byte	0x77
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT3IP\000"
	.byte	0x2
	.2byte	0x923
	.4byte	0x77
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T4IS\000"
	.byte	0x2
	.2byte	0x925
	.4byte	0x77
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T4IP\000"
	.byte	0x2
	.2byte	0x926
	.4byte	0x77
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x928
	.4byte	0x7dc
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x929
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x91a
	.4byte	0x7f0
	.uleb128 0x6
	.4byte	0x718
	.uleb128 0x6
	.4byte	0x7c2
	.byte	0
	.uleb128 0x7
	.ascii	"__IPC4bits_t\000"
	.byte	0x2
	.2byte	0x92b
	.4byte	0x7dc
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2205
	.4byte	0x87f
	.uleb128 0x4
	.ascii	"TCS\000"
	.byte	0x2
	.2byte	0x2207
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T32\000"
	.byte	0x2
	.2byte	0x2209
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TCKPS\000"
	.byte	0x2
	.2byte	0x220a
	.4byte	0x77
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TGATE\000"
	.byte	0x2
	.2byte	0x220b
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SIDL\000"
	.byte	0x2
	.2byte	0x220d
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x220f
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2211
	.4byte	0x8c8
	.uleb128 0x4
	.ascii	"TCKPS0\000"
	.byte	0x2
	.2byte	0x2213
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TCKPS1\000"
	.byte	0x2
	.2byte	0x2214
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TCKPS2\000"
	.byte	0x2
	.2byte	0x2215
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2217
	.4byte	0x8f8
	.uleb128 0x4
	.ascii	"TSIDL\000"
	.byte	0x2
	.2byte	0x2219
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TON\000"
	.byte	0x2
	.2byte	0x221b
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x221d
	.4byte	0x912
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x221e
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x2204
	.4byte	0x930
	.uleb128 0x6
	.4byte	0x805
	.uleb128 0x6
	.4byte	0x87f
	.uleb128 0x6
	.4byte	0x8c8
	.uleb128 0x6
	.4byte	0x8f8
	.byte	0
	.uleb128 0x7
	.ascii	"__T2CONbits_t\000"
	.byte	0x2
	.2byte	0x2220
	.4byte	0x912
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x23b5
	.4byte	0x9f9
	.uleb128 0x4
	.ascii	"ICM\000"
	.byte	0x2
	.2byte	0x23b6
	.4byte	0x77
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ICBNE\000"
	.byte	0x2
	.2byte	0x23b7
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ICOV\000"
	.byte	0x2
	.2byte	0x23b8
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ICI\000"
	.byte	0x2
	.2byte	0x23b9
	.4byte	0x77
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ICTMR\000"
	.byte	0x2
	.2byte	0x23ba
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"C32\000"
	.byte	0x2
	.2byte	0x23bb
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FEDGE\000"
	.byte	0x2
	.2byte	0x23bc
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SIDL\000"
	.byte	0x2
	.2byte	0x23be
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x23c0
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x23c2
	.4byte	0xa62
	.uleb128 0x4
	.ascii	"ICM0\000"
	.byte	0x2
	.2byte	0x23c3
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ICM1\000"
	.byte	0x2
	.2byte	0x23c4
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ICM2\000"
	.byte	0x2
	.2byte	0x23c5
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ICI0\000"
	.byte	0x2
	.2byte	0x23c7
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ICI1\000"
	.byte	0x2
	.2byte	0x23c8
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x23ca
	.4byte	0xa81
	.uleb128 0x4
	.ascii	"ICSIDL\000"
	.byte	0x2
	.2byte	0x23cc
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x23ce
	.4byte	0xa9b
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x23cf
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x23b4
	.4byte	0xab9
	.uleb128 0x6
	.4byte	0x946
	.uleb128 0x6
	.4byte	0x9f9
	.uleb128 0x6
	.4byte	0xa62
	.uleb128 0x6
	.4byte	0xa81
	.byte	0
	.uleb128 0x7
	.ascii	"__IC3CONbits_t\000"
	.byte	0x2
	.2byte	0x23d1
	.4byte	0xa9b
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2d2a
	.4byte	0xc20
	.uleb128 0x4
	.ascii	"ANSB0\000"
	.byte	0x2
	.2byte	0x2d2b
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB1\000"
	.byte	0x2
	.2byte	0x2d2c
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB2\000"
	.byte	0x2
	.2byte	0x2d2d
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB3\000"
	.byte	0x2
	.2byte	0x2d2e
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB4\000"
	.byte	0x2
	.2byte	0x2d2f
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB5\000"
	.byte	0x2
	.2byte	0x2d30
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB6\000"
	.byte	0x2
	.2byte	0x2d31
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB7\000"
	.byte	0x2
	.2byte	0x2d32
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB8\000"
	.byte	0x2
	.2byte	0x2d33
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB9\000"
	.byte	0x2
	.2byte	0x2d34
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB10\000"
	.byte	0x2
	.2byte	0x2d35
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB11\000"
	.byte	0x2
	.2byte	0x2d36
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB12\000"
	.byte	0x2
	.2byte	0x2d37
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB13\000"
	.byte	0x2
	.2byte	0x2d38
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB14\000"
	.byte	0x2
	.2byte	0x2d39
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSB15\000"
	.byte	0x2
	.2byte	0x2d3a
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2d3c
	.4byte	0xc3a
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2d3d
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x2d29
	.4byte	0xc4e
	.uleb128 0x6
	.4byte	0xad0
	.uleb128 0x6
	.4byte	0xc20
	.byte	0
	.uleb128 0x7
	.ascii	"__ANSELBbits_t\000"
	.byte	0x2
	.2byte	0x2d3f
	.4byte	0xc3a
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2d47
	.4byte	0xdc5
	.uleb128 0x4
	.ascii	"TRISB0\000"
	.byte	0x2
	.2byte	0x2d48
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB1\000"
	.byte	0x2
	.2byte	0x2d49
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB2\000"
	.byte	0x2
	.2byte	0x2d4a
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB3\000"
	.byte	0x2
	.2byte	0x2d4b
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB4\000"
	.byte	0x2
	.2byte	0x2d4c
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB5\000"
	.byte	0x2
	.2byte	0x2d4d
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB6\000"
	.byte	0x2
	.2byte	0x2d4e
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB7\000"
	.byte	0x2
	.2byte	0x2d4f
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB8\000"
	.byte	0x2
	.2byte	0x2d50
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB9\000"
	.byte	0x2
	.2byte	0x2d51
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB10\000"
	.byte	0x2
	.2byte	0x2d52
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB11\000"
	.byte	0x2
	.2byte	0x2d53
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB12\000"
	.byte	0x2
	.2byte	0x2d54
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB13\000"
	.byte	0x2
	.2byte	0x2d55
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB14\000"
	.byte	0x2
	.2byte	0x2d56
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISB15\000"
	.byte	0x2
	.2byte	0x2d57
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2d59
	.4byte	0xddf
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2d5a
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x2d46
	.4byte	0xdf3
	.uleb128 0x6
	.4byte	0xc65
	.uleb128 0x6
	.4byte	0xdc5
	.byte	0
	.uleb128 0x7
	.ascii	"__TRISBbits_t\000"
	.byte	0x2
	.2byte	0x2d5c
	.4byte	0xddf
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2d81
	.4byte	0xf59
	.uleb128 0x4
	.ascii	"LATB0\000"
	.byte	0x2
	.2byte	0x2d82
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB1\000"
	.byte	0x2
	.2byte	0x2d83
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB2\000"
	.byte	0x2
	.2byte	0x2d84
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB3\000"
	.byte	0x2
	.2byte	0x2d85
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB4\000"
	.byte	0x2
	.2byte	0x2d86
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB5\000"
	.byte	0x2
	.2byte	0x2d87
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB6\000"
	.byte	0x2
	.2byte	0x2d88
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB7\000"
	.byte	0x2
	.2byte	0x2d89
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB8\000"
	.byte	0x2
	.2byte	0x2d8a
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB9\000"
	.byte	0x2
	.2byte	0x2d8b
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB10\000"
	.byte	0x2
	.2byte	0x2d8c
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB11\000"
	.byte	0x2
	.2byte	0x2d8d
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB12\000"
	.byte	0x2
	.2byte	0x2d8e
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB13\000"
	.byte	0x2
	.2byte	0x2d8f
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB14\000"
	.byte	0x2
	.2byte	0x2d90
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATB15\000"
	.byte	0x2
	.2byte	0x2d91
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2d93
	.4byte	0xf73
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2d94
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x2d80
	.4byte	0xf87
	.uleb128 0x6
	.4byte	0xe09
	.uleb128 0x6
	.4byte	0xf59
	.byte	0
	.uleb128 0x7
	.ascii	"__LATBbits_t\000"
	.byte	0x2
	.2byte	0x2d96
	.4byte	0xf73
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2fa3
	.4byte	0x10bd
	.uleb128 0x4
	.ascii	"TRISD0\000"
	.byte	0x2
	.2byte	0x2fa4
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD1\000"
	.byte	0x2
	.2byte	0x2fa5
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD2\000"
	.byte	0x2
	.2byte	0x2fa6
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD3\000"
	.byte	0x2
	.2byte	0x2fa7
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD4\000"
	.byte	0x2
	.2byte	0x2fa8
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD5\000"
	.byte	0x2
	.2byte	0x2fa9
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD9\000"
	.byte	0x2
	.2byte	0x2fab
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD10\000"
	.byte	0x2
	.2byte	0x2fac
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD11\000"
	.byte	0x2
	.2byte	0x2fad
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD12\000"
	.byte	0x2
	.2byte	0x2fae
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD13\000"
	.byte	0x2
	.2byte	0x2faf
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD14\000"
	.byte	0x2
	.2byte	0x2fb0
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISD15\000"
	.byte	0x2
	.2byte	0x2fb1
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2fb3
	.4byte	0x10d7
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2fb4
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x2fa2
	.4byte	0x10eb
	.uleb128 0x6
	.4byte	0xf9c
	.uleb128 0x6
	.4byte	0x10bd
	.byte	0
	.uleb128 0x7
	.ascii	"__TRISDbits_t\000"
	.byte	0x2
	.2byte	0x2fb6
	.4byte	0x10d7
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2fd9
	.4byte	0x1215
	.uleb128 0x4
	.ascii	"LATD0\000"
	.byte	0x2
	.2byte	0x2fda
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD1\000"
	.byte	0x2
	.2byte	0x2fdb
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD2\000"
	.byte	0x2
	.2byte	0x2fdc
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD3\000"
	.byte	0x2
	.2byte	0x2fdd
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD4\000"
	.byte	0x2
	.2byte	0x2fde
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD5\000"
	.byte	0x2
	.2byte	0x2fdf
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD9\000"
	.byte	0x2
	.2byte	0x2fe1
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD10\000"
	.byte	0x2
	.2byte	0x2fe2
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD11\000"
	.byte	0x2
	.2byte	0x2fe3
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD12\000"
	.byte	0x2
	.2byte	0x2fe4
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD13\000"
	.byte	0x2
	.2byte	0x2fe5
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD14\000"
	.byte	0x2
	.2byte	0x2fe6
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATD15\000"
	.byte	0x2
	.2byte	0x2fe7
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x2fe9
	.4byte	0x122f
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x2fea
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x2fd8
	.4byte	0x1243
	.uleb128 0x6
	.4byte	0x1101
	.uleb128 0x6
	.4byte	0x1215
	.byte	0
	.uleb128 0x7
	.ascii	"__LATDbits_t\000"
	.byte	0x2
	.2byte	0x2fec
	.4byte	0x122f
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x32ec
	.4byte	0x12c7
	.uleb128 0x4
	.ascii	"ANSG6\000"
	.byte	0x2
	.2byte	0x32ee
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSG7\000"
	.byte	0x2
	.2byte	0x32ef
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSG8\000"
	.byte	0x2
	.2byte	0x32f0
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSG9\000"
	.byte	0x2
	.2byte	0x32f1
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ANSG15\000"
	.byte	0x2
	.2byte	0x32f3
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x32f5
	.4byte	0x12e1
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x32f6
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x32eb
	.4byte	0x12f5
	.uleb128 0x6
	.4byte	0x1258
	.uleb128 0x6
	.4byte	0x12c7
	.byte	0
	.uleb128 0x7
	.ascii	"__ANSELGbits_t\000"
	.byte	0x2
	.2byte	0x32f8
	.4byte	0x12e1
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x3300
	.4byte	0x13ec
	.uleb128 0x4
	.ascii	"TRISG0\000"
	.byte	0x2
	.2byte	0x3301
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISG1\000"
	.byte	0x2
	.2byte	0x3302
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISG6\000"
	.byte	0x2
	.2byte	0x3304
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISG7\000"
	.byte	0x2
	.2byte	0x3305
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISG8\000"
	.byte	0x2
	.2byte	0x3306
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISG9\000"
	.byte	0x2
	.2byte	0x3307
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISG12\000"
	.byte	0x2
	.2byte	0x3309
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISG13\000"
	.byte	0x2
	.2byte	0x330a
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISG14\000"
	.byte	0x2
	.2byte	0x330b
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TRISG15\000"
	.byte	0x2
	.2byte	0x330c
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x330e
	.4byte	0x1406
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x330f
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x32ff
	.4byte	0x141a
	.uleb128 0x6
	.4byte	0x130c
	.uleb128 0x6
	.4byte	0x13ec
	.byte	0
	.uleb128 0x7
	.ascii	"__TRISGbits_t\000"
	.byte	0x2
	.2byte	0x3311
	.4byte	0x1406
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x3332
	.4byte	0x1506
	.uleb128 0x4
	.ascii	"LATG0\000"
	.byte	0x2
	.2byte	0x3333
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG1\000"
	.byte	0x2
	.2byte	0x3334
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG6\000"
	.byte	0x2
	.2byte	0x3336
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG7\000"
	.byte	0x2
	.2byte	0x3337
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG8\000"
	.byte	0x2
	.2byte	0x3338
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG9\000"
	.byte	0x2
	.2byte	0x3339
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG12\000"
	.byte	0x2
	.2byte	0x333b
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG13\000"
	.byte	0x2
	.2byte	0x333c
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG14\000"
	.byte	0x2
	.2byte	0x333d
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"LATG15\000"
	.byte	0x2
	.2byte	0x333e
	.4byte	0x77
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x3340
	.4byte	0x1520
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x3341
	.4byte	0x77
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x3331
	.4byte	0x1534
	.uleb128 0x6
	.4byte	0x1430
	.uleb128 0x6
	.4byte	0x1506
	.byte	0
	.uleb128 0x7
	.ascii	"__LATGbits_t\000"
	.byte	0x2
	.2byte	0x3343
	.4byte	0x1520
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
	.uleb128 0x8
	.ascii	"__uint8_t\000"
	.byte	0x3
	.byte	0x2f
	.4byte	0x1591
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
	.uleb128 0x8
	.ascii	"__int32_t\000"
	.byte	0x3
	.byte	0x32
	.4byte	0x156a
	.uleb128 0x8
	.ascii	"__uint32_t\000"
	.byte	0x3
	.byte	0x33
	.4byte	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x8
	.ascii	"BYTE\000"
	.byte	0x4
	.byte	0x26
	.4byte	0x1580
	.uleb128 0x9
	.ascii	"eDirection\000"
	.byte	0x4
	.byte	0x5
	.byte	0x1a
	.4byte	0x1655
	.uleb128 0xa
	.ascii	"STOP\000"
	.sleb128 0
	.uleb128 0xa
	.ascii	"UP\000"
	.sleb128 1
	.uleb128 0xa
	.ascii	"LEFT\000"
	.sleb128 2
	.uleb128 0xa
	.ascii	"DOWN\000"
	.sleb128 3
	.uleb128 0xa
	.ascii	"RIGHT\000"
	.sleb128 4
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"DelayMs\000"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x1691
	.uleb128 0xc
	.ascii	"t\000"
	.byte	0x1
	.byte	0x14
	.4byte	0x156a
	.4byte	.LLST1
	.uleb128 0xd
	.ascii	"count\000"
	.byte	0x1
	.byte	0x15
	.4byte	0x1691
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.4byte	0x155e
	.uleb128 0xb
	.byte	0x1
	.ascii	"InitGPIO\000"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST2
	.byte	0x1
	.4byte	0x16bf
	.uleb128 0xf
	.4byte	.LVL5
	.4byte	0x1bbb
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"setup\000"
	.byte	0x1
	.byte	0x31
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST3
	.byte	0x1
	.4byte	0x16f6
	.uleb128 0xf
	.4byte	.LVL6
	.4byte	0x20dd
	.uleb128 0xf
	.4byte	.LVL7
	.4byte	0x20f3
	.uleb128 0xf
	.4byte	.LVL8
	.4byte	0x20f3
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"oled_init\000"
	.byte	0x1
	.byte	0x3c
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x1865
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x3d
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1728
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x3e
	.4byte	0x156a
	.byte	0x1
	.4byte	0x173b
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x41
	.4byte	0x156a
	.byte	0x1
	.4byte	0x174e
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x42
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1761
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x43
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1774
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x43
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1787
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x45
	.4byte	0x156a
	.byte	0x1
	.4byte	0x179a
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF7
	.byte	0x1
	.byte	0x46
	.4byte	0x156a
	.byte	0x1
	.4byte	0x17ad
	.uleb128 0x12
	.byte	0
	.uleb128 0xf
	.4byte	.LVL9
	.4byte	0x2102
	.uleb128 0xf
	.4byte	.LVL10
	.4byte	0x2115
	.uleb128 0xf
	.4byte	.LVL11
	.4byte	0x2128
	.uleb128 0x13
	.4byte	.LVL12
	.4byte	0x213f
	.4byte	0x17db
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL13
	.4byte	0x2152
	.4byte	0x17ee
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL14
	.4byte	0x2165
	.4byte	0x1801
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0xf
	.4byte	.LVL15
	.4byte	0x2178
	.uleb128 0x13
	.4byte	.LVL16
	.4byte	0x218b
	.4byte	0x1822
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL17
	.4byte	0x219e
	.4byte	0x1839
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x13
	.4byte	.LVL18
	.4byte	0x218b
	.4byte	0x1851
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL19
	.4byte	0x219e
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"draw\000"
	.byte	0x1
	.byte	0x4b
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST5
	.byte	0x1
	.4byte	0x1a90
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0x15c5
	.4byte	.LLST6
	.uleb128 0x16
	.ascii	"j\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0x15c5
	.4byte	.LLST7
	.uleb128 0x16
	.ascii	"k\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0x15c5
	.4byte	.LLST8
	.uleb128 0x17
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x1a86
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF8
	.byte	0x1
	.byte	0x4f
	.4byte	0x156a
	.byte	0x1
	.4byte	0x18c6
	.uleb128 0x12
	.byte	0
	.uleb128 0x17
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x1929
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x41
	.4byte	0x156a
	.byte	0x1
	.4byte	0x18e6
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF9
	.byte	0x1
	.byte	0x52
	.4byte	0x156a
	.byte	0x1
	.4byte	0x18f9
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.4byte	.LVL25
	.4byte	0x213f
	.4byte	0x190c
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL26
	.4byte	0x21b1
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x8d
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x8d
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0x198c
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x41
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1949
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF9
	.byte	0x1
	.byte	0x52
	.4byte	0x156a
	.byte	0x1
	.4byte	0x195c
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.4byte	.LVL27
	.4byte	0x213f
	.4byte	0x196f
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL28
	.4byte	0x21b1
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x8d
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x8d
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x1a6d
	.uleb128 0x16
	.ascii	"print\000"
	.byte	0x1
	.byte	0x59
	.4byte	0x1a90
	.4byte	.LLST9
	.uleb128 0x17
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0x1a0d
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x41
	.4byte	0x156a
	.byte	0x1
	.4byte	0x19ca
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF9
	.byte	0x1
	.byte	0x52
	.4byte	0x156a
	.byte	0x1
	.4byte	0x19dd
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.4byte	.LVL34
	.4byte	0x213f
	.4byte	0x19f0
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.4byte	.LVL35
	.4byte	0x21b1
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x8d
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x8d
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x41
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1a29
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF9
	.byte	0x1
	.byte	0x52
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1a3c
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.4byte	.LVL37
	.4byte	0x213f
	.4byte	0x1a4f
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL38
	.4byte	0x21b1
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.byte	0x8d
	.sleb128 20
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.byte	0x8d
	.sleb128 16
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LVL24
	.4byte	0x21c4
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x8d
	.sleb128 20
	.byte	0x6
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x8d
	.sleb128 16
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LVL40
	.4byte	0x21d7
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii	"_Bool\000"
	.uleb128 0x10
	.byte	0x1
	.ascii	"input\000"
	.byte	0x1
	.byte	0x6b
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST10
	.byte	0x1
	.4byte	0x1afd
	.uleb128 0x13
	.4byte	.LVL43
	.4byte	0x21ed
	.4byte	0x1ac7
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL44
	.4byte	0x21ed
	.4byte	0x1ada
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x13
	.4byte	.LVL45
	.4byte	0x21ed
	.4byte	0x1aed
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x15
	.4byte	.LVL46
	.4byte	0x21ed
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"logic\000"
	.byte	0x1
	.byte	0x7b
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST11
	.byte	0x1
	.4byte	0x1b8b
	.uleb128 0x16
	.ascii	"prevX\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x15c5
	.4byte	.LLST12
	.uleb128 0x16
	.ascii	"prevY\000"
	.byte	0x1
	.byte	0x7d
	.4byte	0x15c5
	.4byte	.LLST13
	.uleb128 0x16
	.ascii	"prev2X\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x15c5
	.4byte	.LLST14
	.uleb128 0x16
	.ascii	"prev2Y\000"
	.byte	0x1
	.byte	0x7e
	.4byte	0x15c5
	.4byte	.LLST15
	.uleb128 0x16
	.ascii	"i\000"
	.byte	0x1
	.byte	0x7f
	.4byte	0x15c5
	.4byte	.LLST16
	.uleb128 0x16
	.ascii	"j\000"
	.byte	0x1
	.byte	0x7f
	.4byte	0x15c5
	.4byte	.LLST17
	.uleb128 0xf
	.4byte	.LVL75
	.4byte	0x20f3
	.uleb128 0xf
	.4byte	.LVL76
	.4byte	0x20f3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"set_leds\000"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST18
	.byte	0x1
	.4byte	0x1bbb
	.uleb128 0xc
	.ascii	"leds\000"
	.byte	0x1
	.byte	0xad
	.4byte	0x15c5
	.4byte	.LLST19
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"led_test\000"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LLST20
	.byte	0x1
	.4byte	0x1c45
	.uleb128 0x16
	.ascii	"s\000"
	.byte	0x1
	.byte	0xb6
	.4byte	0x156a
	.4byte	.LLST21
	.uleb128 0x13
	.4byte	.LVL83
	.4byte	0x1b8b
	.4byte	0x1bfa
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL85
	.4byte	0x1b8b
	.4byte	0x1c0d
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.4byte	.LVL86
	.4byte	0x1655
	.4byte	0x1c21
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x13
	.4byte	.LVL87
	.4byte	0x1b8b
	.4byte	0x1c34
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL88
	.4byte	0x1655
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.ascii	"initTimer2AndIC3\000"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LLST22
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.ascii	"Capture3\000"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LLST23
	.byte	0x1
	.4byte	0x1ca2
	.uleb128 0x18
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x1a
	.ascii	"temp_buf\000"
	.byte	0x1
	.byte	0xee
	.4byte	0x156a
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii	"OledClear\000"
	.byte	0x1
	.byte	0xf4
	.byte	0x1
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LLST24
	.byte	0x1
	.4byte	0x1d65
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF8
	.byte	0x1
	.byte	0x4f
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1cd5
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x43
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1ce8
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x43
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1cfb
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF10
	.byte	0x1
	.byte	0xf8
	.4byte	0x156a
	.byte	0x1
	.4byte	0x1d0e
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.4byte	.LVL93
	.4byte	0x21c4
	.4byte	0x1d26
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x13
	.4byte	.LVL94
	.4byte	0x2165
	.4byte	0x1d39
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0xf
	.4byte	.LVL95
	.4byte	0x2178
	.uleb128 0x13
	.4byte	.LVL96
	.4byte	0x2212
	.4byte	0x1d5b
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x4f
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x7f
	.byte	0
	.uleb128 0xf
	.4byte	.LVL97
	.4byte	0x21d7
	.byte	0
	.uleb128 0x1b
	.ascii	"IC3R\000"
	.byte	0x2
	.2byte	0x43a
	.4byte	0x1d74
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x77
	.uleb128 0x1b
	.ascii	"INTCONSET\000"
	.byte	0x2
	.2byte	0x64e
	.4byte	0x1d74
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"IFS0bits\000"
	.byte	0x2
	.2byte	0x69d
	.ascii	"IFS0\000"
	.4byte	0x1da5
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x343
	.uleb128 0x1c
	.ascii	"IEC0bits\000"
	.byte	0x2
	.2byte	0x7bf
	.ascii	"IEC0\000"
	.4byte	0x1dc2
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x614
	.uleb128 0x1c
	.ascii	"IPC2bits\000"
	.byte	0x2
	.2byte	0x8fc
	.ascii	"IPC2\000"
	.4byte	0x1ddf
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x703
	.uleb128 0x1c
	.ascii	"IPC4bits\000"
	.byte	0x2
	.2byte	0x92c
	.ascii	"IPC4\000"
	.4byte	0x1dfc
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x7f0
	.uleb128 0x1b
	.ascii	"T2CON\000"
	.byte	0x2
	.2byte	0x2203
	.4byte	0x1d74
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"T2CONbits\000"
	.byte	0x2
	.2byte	0x2221
	.ascii	"T2CON\000"
	.4byte	0x1e2b
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x930
	.uleb128 0x1b
	.ascii	"TMR2\000"
	.byte	0x2
	.2byte	0x2226
	.4byte	0x1d74
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.ascii	"PR2\000"
	.byte	0x2
	.2byte	0x222b
	.4byte	0x1d74
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"IC3CONbits\000"
	.byte	0x2
	.2byte	0x23d2
	.ascii	"IC3CON\000"
	.4byte	0x1e69
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xab9
	.uleb128 0x1b
	.ascii	"IC3BUF\000"
	.byte	0x2
	.2byte	0x23d7
	.4byte	0x1d74
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"ANSELBbits\000"
	.byte	0x2
	.2byte	0x2d40
	.ascii	"ANSELB\000"
	.4byte	0x1e9b
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xc4e
	.uleb128 0x1c
	.ascii	"TRISBbits\000"
	.byte	0x2
	.2byte	0x2d5d
	.ascii	"TRISB\000"
	.4byte	0x1eba
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xdf3
	.uleb128 0x1c
	.ascii	"LATBbits\000"
	.byte	0x2
	.2byte	0x2d97
	.ascii	"LATB\000"
	.4byte	0x1ed7
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0xf87
	.uleb128 0x1c
	.ascii	"TRISDbits\000"
	.byte	0x2
	.2byte	0x2fb7
	.ascii	"TRISD\000"
	.4byte	0x1ef6
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x10eb
	.uleb128 0x1c
	.ascii	"LATDbits\000"
	.byte	0x2
	.2byte	0x2fed
	.ascii	"LATD\000"
	.4byte	0x1f13
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x1243
	.uleb128 0x1c
	.ascii	"ANSELGbits\000"
	.byte	0x2
	.2byte	0x32f9
	.ascii	"ANSELG\000"
	.4byte	0x1f34
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x12f5
	.uleb128 0x1c
	.ascii	"TRISGbits\000"
	.byte	0x2
	.2byte	0x3312
	.ascii	"TRISG\000"
	.4byte	0x1f53
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x141a
	.uleb128 0x1c
	.ascii	"LATGbits\000"
	.byte	0x2
	.2byte	0x3344
	.ascii	"LATG\000"
	.4byte	0x1f70
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.4byte	0x1534
	.uleb128 0x1d
	.4byte	0x1613
	.4byte	0x1f86
	.uleb128 0x1e
	.4byte	0x1f86
	.2byte	0x1ff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x1f
	.ascii	"rgbOledBmp\000"
	.byte	0x4
	.byte	0x68
	.4byte	0x1f75
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
	.uleb128 0x1f
	.ascii	"gameOver\000"
	.byte	0x5
	.byte	0x15
	.4byte	0x1a90
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gameOver
	.uleb128 0x1f
	.ascii	"width\000"
	.byte	0x5
	.byte	0x16
	.4byte	0x1fd6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	width
	.uleb128 0x20
	.4byte	0x15c5
	.uleb128 0x1f
	.ascii	"height\000"
	.byte	0x5
	.byte	0x17
	.4byte	0x1fd6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	height
	.uleb128 0x1f
	.ascii	"x\000"
	.byte	0x5
	.byte	0x18
	.4byte	0x15c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	x
	.uleb128 0x1f
	.ascii	"y\000"
	.byte	0x5
	.byte	0x18
	.4byte	0x15c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	y
	.uleb128 0x1f
	.ascii	"fruitX\000"
	.byte	0x5
	.byte	0x18
	.4byte	0x15c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fruitX
	.uleb128 0x1f
	.ascii	"fruitY\000"
	.byte	0x5
	.byte	0x18
	.4byte	0x15c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fruitY
	.uleb128 0x1f
	.ascii	"score\000"
	.byte	0x5
	.byte	0x1e
	.4byte	0x15c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	score
	.uleb128 0x1f
	.ascii	"nTail\000"
	.byte	0x5
	.byte	0x18
	.4byte	0x15c5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	nTail
	.uleb128 0x1d
	.4byte	0x15c5
	.4byte	0x2072
	.uleb128 0x21
	.4byte	0x1f86
	.byte	0x63
	.byte	0
	.uleb128 0x1f
	.ascii	"tailX\000"
	.byte	0x5
	.byte	0x19
	.4byte	0x2062
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tailX
	.uleb128 0x1f
	.ascii	"tailY\000"
	.byte	0x5
	.byte	0x19
	.4byte	0x2062
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tailY
	.uleb128 0x1f
	.ascii	"start_game\000"
	.byte	0x5
	.byte	0x1b
	.4byte	0x1a90
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	start_game
	.uleb128 0x1f
	.ascii	"rand_seed\000"
	.byte	0x5
	.byte	0x1c
	.4byte	0x15d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rand_seed
	.uleb128 0x1f
	.ascii	"dir\000"
	.byte	0x1
	.byte	0xf
	.4byte	0x161f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	dir
	.uleb128 0x22
	.byte	0x1
	.ascii	"srand\000"
	.byte	0x6
	.byte	0x5a
	.byte	0x1
	.byte	0x1
	.4byte	0x20f3
	.uleb128 0x23
	.4byte	0x77
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.ascii	"rand\000"
	.byte	0x6
	.byte	0x59
	.byte	0x1
	.4byte	0x156a
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0x3d
	.4byte	0x156a
	.byte	0x1
	.4byte	0x2115
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF1
	.byte	0x1
	.byte	0x3e
	.4byte	0x156a
	.byte	0x1
	.4byte	0x2128
	.uleb128 0x12
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii	"OledDvrInit\000"
	.byte	0x4
	.byte	0x84
	.byte	0x1
	.4byte	0x213f
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF2
	.byte	0x1
	.byte	0x41
	.4byte	0x156a
	.byte	0x1
	.4byte	0x2152
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF3
	.byte	0x1
	.byte	0x42
	.4byte	0x156a
	.byte	0x1
	.4byte	0x2165
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF5
	.byte	0x1
	.byte	0x43
	.4byte	0x156a
	.byte	0x1
	.4byte	0x2178
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF4
	.byte	0x1
	.byte	0x43
	.4byte	0x156a
	.byte	0x1
	.4byte	0x218b
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF6
	.byte	0x1
	.byte	0x45
	.4byte	0x156a
	.byte	0x1
	.4byte	0x219e
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF7
	.byte	0x1
	.byte	0x46
	.4byte	0x156a
	.byte	0x1
	.4byte	0x21b1
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF9
	.byte	0x1
	.byte	0x52
	.4byte	0x156a
	.byte	0x1
	.4byte	0x21c4
	.uleb128 0x12
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF8
	.byte	0x1
	.byte	0x4f
	.4byte	0x156a
	.byte	0x1
	.4byte	0x21d7
	.uleb128 0x12
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.ascii	"OledUpdate\000"
	.byte	0x4
	.byte	0x8a
	.byte	0x1
	.4byte	0x21ed
	.uleb128 0x12
	.byte	0
	.uleb128 0x26
	.byte	0x1
	.ascii	"convertWiFIREadc\000"
	.byte	0x7
	.byte	0xc
	.byte	0x1
	.4byte	0x156a
	.byte	0x1
	.4byte	0x2212
	.uleb128 0x23
	.4byte	0x1580
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.4byte	.LASF10
	.byte	0x1
	.byte	0xf8
	.4byte	0x156a
	.byte	0x1
	.uleb128 0x12
	.byte	0
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
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
	.sleb128 16
	.4byte	.LCFI2-.Ltext0
	.4byte	.LCFI3-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	.LCFI3-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI8-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI8-.Ltext0
	.4byte	.LCFI10-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI10-.Ltext0
	.4byte	.LCFI11-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LCFI11-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI12-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI12-.Ltext0
	.4byte	.LCFI14-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI14-.Ltext0
	.4byte	.LCFI15-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LCFI15-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI16-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI16-.Ltext0
	.4byte	.LCFI18-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	.LCFI18-.Ltext0
	.4byte	.LCFI19-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 40
	.4byte	.LCFI19-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 40
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL21-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL42-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL42-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL22-.Ltext0
	.4byte	.LVL23-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL24-1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24-1-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL31-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL32-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL29-.Ltext0
	.4byte	.LVL33-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL33-.Ltext0
	.4byte	.LVL34-1-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL34-1-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI20-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI20-.Ltext0
	.4byte	.LCFI22-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI22-.Ltext0
	.4byte	.LCFI23-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LCFI23-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LCFI26-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 48
	.4byte	.LCFI26-.Ltext0
	.4byte	.LCFI27-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 48
	.4byte	.LCFI27-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 48
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tailX
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -32
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL49-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x5
	.byte	0x3
	.4byte	tailY
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL69-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 20
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -28
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	tailX
	.byte	0x22
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	tailX
	.byte	0x22
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	tailX
	.byte	0x22
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	tailX
	.byte	0x22
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	tailX
	.byte	0x22
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	tailX
	.byte	0x22
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.4byte	.LVL65-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	tailY
	.byte	0x22
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	tailY
	.byte	0x22
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x3
	.4byte	tailY
	.byte	0x22
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.4byte	tailX
	.byte	0x1c
	.byte	0x3
	.4byte	tailY
	.byte	0x22
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 36
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -24
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL73-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL73-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 28
	.4byte	.LVL77-.Ltext0
	.4byte	.LVL78-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 28
	.4byte	.LVL78-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -20
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI28-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI28-.Ltext0
	.4byte	.LCFI30-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI30-.Ltext0
	.4byte	.LCFI31-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI31-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL79-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LVL82-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LFB12-.Ltext0
	.4byte	.LCFI32-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI32-.Ltext0
	.4byte	.LCFI34-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	.LCFI34-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 32
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 32
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	.LVL91-.Ltext0
	.4byte	.LFE12-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LFB13-.Ltext0
	.4byte	.LCFI36-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI36-.Ltext0
	.4byte	.LCFI38-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	.LCFI38-.Ltext0
	.4byte	.LCFI39-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 8
	.4byte	.LCFI39-.Ltext0
	.4byte	.LFE13-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 8
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LFB14-.Ltext0
	.4byte	.LCFI40-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI40-.Ltext0
	.4byte	.LCFI43-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI43-.Ltext0
	.4byte	.LCFI44-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LCFI44-.Ltext0
	.4byte	.LFE14-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LFB15-.Ltext0
	.4byte	.LCFI45-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI45-.Ltext0
	.4byte	.LCFI47-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
	.4byte	.LCFI47-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 24
	.4byte	.LCFI48-.Ltext0
	.4byte	.LFE15-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 24
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
.LASF10:
	.ascii	"OledFillRect\000"
.LASF6:
	.ascii	"OledSetCursor\000"
.LASF7:
	.ascii	"OledPutString\000"
.LASF0:
	.ascii	"OledHostInit\000"
.LASF5:
	.ascii	"OledGetStdPattern\000"
.LASF8:
	.ascii	"OledMoveTo\000"
.LASF9:
	.ascii	"OledDrawRect\000"
.LASF2:
	.ascii	"OledSetDrawColor\000"
.LASF3:
	.ascii	"OledSetDrawMode\000"
.LASF4:
	.ascii	"OledSetFillPattern\000"
.LASF1:
	.ascii	"OledDspInit\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
	.globl	__vector_dispatch_16
	.section	.vector_16,code,keep
	.set	nomips16
	.set noreorder
	.align	2
	.ent	__vector_dispatch_16
__vector_dispatch_16:
	j	Capture3
	nop
	.set reorder
	.end	__vector_dispatch_16
	.size	__vector_dispatch_16, .-__vector_dispatch_16
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
