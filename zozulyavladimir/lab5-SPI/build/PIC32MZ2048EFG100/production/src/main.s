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

	.comm	buff,20,4
	.globl	k
	.section	.sbss,bss
	.align	2
	.type	k, @object
	.size	k, 4
k:
	.space	4
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Game over\000"
	.align	2
.LC1:
	.ascii	"Your score:\000"
	.align	2
.LC2:
	.ascii	"Press restart\000"
	.section	.text,code
	.align	2
	.globl	main
.LFB73 = .
	.file 1 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/main.c"
	.loc 1 25 0
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
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
	.loc 1 26 0
	li	$2,1			# 0x1
	sb	$2,%gp_rel(start_game)($28)
	.loc 1 28 0
	jal	InitGPIO
	nop

	.loc 1 29 0
	jal	oled_init
	nop

	.loc 1 30 0
	jal	initTimer2AndIC3
	nop

.L2:
	.loc 1 32 0
	lbu	$2,%gp_rel(start_game)($28)
	bne	$2,$0,.L2
	nop

	.loc 1 34 0
	jal	setup
	nop

	.loc 1 35 0
	jal	initWiFIREadc
	nop

	.loc 1 37 0
	j	.L3
	nop

.L4:
.LBB2 = .
	.loc 1 38 0
	jal	draw
	nop

	.loc 1 39 0
	jal	input
	nop

	.loc 1 40 0
	jal	logic
	nop

.L3:
.LBE2 = .
	.loc 1 37 0
	lbu	$2,%gp_rel(gameOver)($28)
	bne	$2,$0,.L4
	nop

	.loc 1 43 0
	jal	OledClear
	nop

	.loc 1 44 0
	move	$4,$0
	move	$5,$0
	jal	OledSetCursor
	nop

	.loc 1 45 0
	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	jal	OledPutString
	nop

	.loc 1 46 0
	move	$4,$0
	li	$5,1			# 0x1
	jal	OledSetCursor
	nop

	.loc 1 47 0
	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	jal	OledPutString
	nop

	.loc 1 48 0
	move	$4,$0
	li	$5,2			# 0x2
	jal	OledSetCursor
	nop

	.loc 1 49 0
	lw	$2,%gp_rel(score)($28)
	lui	$3,%hi(buff)
	addiu	$4,$3,%lo(buff)
	move	$5,$2
	li	$6,10			# 0xa
	jal	itoa
	nop

	.loc 1 51 0
	j	.L5
	nop

.L6:
.LBB3 = .
	.loc 1 52 0
	lw	$3,%gp_rel(k)($28)
	lui	$2,%hi(buff)
	addiu	$2,$2,%lo(buff)
	addu	$2,$3,$2
	lb	$2,0($2)
	move	$4,$2
	jal	OledDrawGlyph
	nop

	.loc 1 53 0
	jal	OledAdvanceCursor
	nop

	.loc 1 54 0
	lw	$2,%gp_rel(k)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(k)($28)
.L5:
.LBE3 = .
	.loc 1 51 0
	lw	$3,%gp_rel(k)($28)
	lui	$2,%hi(buff)
	addiu	$2,$2,%lo(buff)
	addu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,.L6
	nop

	.loc 1 56 0
	jal	OledUpdate
	nop

	.loc 1 57 0
	move	$4,$0
	li	$5,3			# 0x3
	jal	OledSetCursor
	nop

	.loc 1 58 0
	lui	$2,%hi(.LC2)
	addiu	$4,$2,%lo(.LC2)
	jal	OledPutString
	nop

.L7:
	.loc 1 60 0
	j	.L7
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	main
.LFE73:
	.size	main, .-main
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
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI0-.LFB73
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
	.align	2
.LEFDE0:
	.section	.text,code
.Letext0:
	.file 2 "d:/downloads/soft/mplab ide/xc32 compiler/pic32mx/include/machine/int_types.h"
	.file 3 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/oled/oled.h"
	.file 4 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/user.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x43b
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"src/main.c\000"
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
	.4byte	0xcf
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
	.uleb128 0x3
	.ascii	"__int32_t\000"
	.byte	0x2
	.byte	0x32
	.4byte	0xa8
	.uleb128 0x3
	.ascii	"__uint32_t\000"
	.byte	0x2
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x3
	.ascii	"BYTE\000"
	.byte	0x3
	.byte	0x26
	.4byte	0xbe
	.uleb128 0x4
	.byte	0x1
	.ascii	"main\000"
	.byte	0x1
	.byte	0x18
	.byte	0x1
	.4byte	0x103
	.4byte	.LFB73
	.4byte	.LFE73
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x2b8
	.uleb128 0x5
	.byte	0x1
	.ascii	"InitGPIO\000"
	.byte	0x1
	.byte	0x1c
	.4byte	0xa8
	.byte	0x1
	.4byte	0x1a6
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.ascii	"oled_init\000"
	.byte	0x1
	.byte	0x1d
	.4byte	0xa8
	.byte	0x1
	.4byte	0x1bf
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.ascii	"setup\000"
	.byte	0x1
	.byte	0x22
	.4byte	0xa8
	.byte	0x1
	.4byte	0x1d4
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.ascii	"initWiFIREadc\000"
	.byte	0x1
	.byte	0x23
	.4byte	0xa8
	.byte	0x1
	.4byte	0x1f1
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.ascii	"OledSetCursor\000"
	.byte	0x1
	.byte	0x2c
	.4byte	0xa8
	.byte	0x1
	.4byte	0x20e
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.ascii	"OledPutString\000"
	.byte	0x1
	.byte	0x2d
	.4byte	0xa8
	.byte	0x1
	.4byte	0x22b
	.uleb128 0x6
	.byte	0
	.uleb128 0x7
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	0x273
	.uleb128 0x5
	.byte	0x1
	.ascii	"draw\000"
	.byte	0x1
	.byte	0x26
	.4byte	0xa8
	.byte	0x1
	.4byte	0x24c
	.uleb128 0x6
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.ascii	"input\000"
	.byte	0x1
	.byte	0x27
	.4byte	0xa8
	.byte	0x1
	.4byte	0x261
	.uleb128 0x6
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii	"logic\000"
	.byte	0x1
	.byte	0x28
	.4byte	0xa8
	.byte	0x1
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x5
	.byte	0x1
	.ascii	"OledDrawGlyph\000"
	.byte	0x1
	.byte	0x34
	.4byte	0xa8
	.byte	0x1
	.4byte	0x299
	.uleb128 0x6
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.ascii	"OledAdvanceCursor\000"
	.byte	0x1
	.byte	0x35
	.4byte	0xa8
	.byte	0x1
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x165
	.4byte	0x2c9
	.uleb128 0xb
	.4byte	0x159
	.2byte	0x1ff
	.byte	0
	.uleb128 0xc
	.ascii	"rgbOledBmp\000"
	.byte	0x3
	.byte	0x68
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
	.uleb128 0xc
	.ascii	"gameOver\000"
	.byte	0x4
	.byte	0x15
	.4byte	0x2f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	gameOver
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii	"_Bool\000"
	.uleb128 0xc
	.ascii	"width\000"
	.byte	0x4
	.byte	0x16
	.4byte	0x316
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	width
	.uleb128 0xd
	.4byte	0x103
	.uleb128 0xc
	.ascii	"height\000"
	.byte	0x4
	.byte	0x17
	.4byte	0x316
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	height
	.uleb128 0xc
	.ascii	"x\000"
	.byte	0x4
	.byte	0x18
	.4byte	0x103
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	x
	.uleb128 0xc
	.ascii	"y\000"
	.byte	0x4
	.byte	0x18
	.4byte	0x103
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	y
	.uleb128 0xc
	.ascii	"fruitX\000"
	.byte	0x4
	.byte	0x18
	.4byte	0x103
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fruitX
	.uleb128 0xc
	.ascii	"fruitY\000"
	.byte	0x4
	.byte	0x18
	.4byte	0x103
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fruitY
	.uleb128 0xc
	.ascii	"score\000"
	.byte	0x4
	.byte	0x1e
	.4byte	0x103
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	score
	.uleb128 0xc
	.ascii	"nTail\000"
	.byte	0x4
	.byte	0x18
	.4byte	0x103
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	nTail
	.uleb128 0xa
	.4byte	0x103
	.4byte	0x3b2
	.uleb128 0xe
	.4byte	0x159
	.byte	0x63
	.byte	0
	.uleb128 0xc
	.ascii	"tailX\000"
	.byte	0x4
	.byte	0x19
	.4byte	0x3a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tailX
	.uleb128 0xc
	.ascii	"tailY\000"
	.byte	0x4
	.byte	0x19
	.4byte	0x3a2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	tailY
	.uleb128 0xc
	.ascii	"start_game\000"
	.byte	0x4
	.byte	0x1b
	.4byte	0x2f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	start_game
	.uleb128 0xc
	.ascii	"rand_seed\000"
	.byte	0x4
	.byte	0x1c
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rand_seed
	.uleb128 0xa
	.4byte	0x151
	.4byte	0x41b
	.uleb128 0xe
	.4byte	0x159
	.byte	0x13
	.byte	0
	.uleb128 0xc
	.ascii	"buff\000"
	.byte	0x1
	.byte	0x10
	.4byte	0x40b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	buff
	.uleb128 0xc
	.ascii	"k\000"
	.byte	0x1
	.byte	0x11
	.4byte	0x114
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	k
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
