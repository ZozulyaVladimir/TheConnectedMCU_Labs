	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:

	.comm	rgbOledBmp,512,4
	.align	2
	.globl	OledPutBuffer
.LFB4 = .
	.file 1 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/oled/spi.c"
	.loc 1 88 0
	.set	nomips16
	.set	nomicromips
	.ent	OledPutBuffer
	.type	OledPutBuffer, @function
OledPutBuffer:
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
	sw	$5,20($fp)
	.loc 1 93 0
	sw	$0,0($fp)
.LVL1 = .
	j	.L2
	nop

.LVL2 = .
.L5:
	.loc 1 96 0
	nop
.L3:
	lui	$2,%hi(SPI2STAT)
	lw	$2,%lo(SPI2STAT)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L3
	nop

	.loc 1 99 0
	lw	$2,20($fp)
	addiu	$3,$2,1
.LVL3 = .
	sw	$3,20($fp)
.LVL4 = .
	lbu	$2,0($2)
	move	$3,$2
.LVL5 = .
	lui	$2,%hi(SPI2BUF)
	sw	$3,%lo(SPI2BUF)($2)
	.loc 1 102 0
	nop
.L4:
	lui	$2,%hi(SPI2STAT)
	lw	$2,%lo(SPI2STAT)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L4
	nop

	.loc 1 103 0
	lui	$2,%hi(SPI2BUF)
	lw	$2,%lo(SPI2BUF)($2)
	sb	$2,4($fp)
.LVL6 = .
	.loc 1 93 0
	lw	$2,0($fp)
.LVL7 = .
	addiu	$2,$2,1
	sw	$2,0($fp)
.LVL8 = .
.L2:
	lw	$3,0($fp)
	lw	$2,16($fp)
	slt	$2,$3,$2
	bne	$2,$0,.L5
	nop

	.loc 1 105 0
	move	$sp,$fp
.LCFI3 = .
.LVL9 = .
	lw	$fp,12($sp)
.LVL10 = .
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledPutBuffer
.LFE4:
	.size	OledPutBuffer, .-OledPutBuffer
	.align	2
	.globl	Spi2PutByte
.LFB5 = .
	.loc 1 123 0
	.set	nomips16
	.set	nomicromips
	.ent	Spi2PutByte
	.type	Spi2PutByte, @function
Spi2PutByte:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
.LVL11 = .
	addiu	$sp,$sp,-16
.LCFI4 = .
	sw	$fp,12($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	move	$2,$4
	sb	$2,16($fp)
	.loc 1 127 0
	nop
.L7:
	lui	$2,%hi(SPI2STAT)
	lw	$2,%lo(SPI2STAT)($2)
	andi	$2,$2,0x8
	beq	$2,$0,.L7
	nop

	.loc 1 130 0
	lbu	$3,16($fp)
	lui	$2,%hi(SPI2BUF)
	sw	$3,%lo(SPI2BUF)($2)
	.loc 1 133 0
	nop
.L8:
	lui	$2,%hi(SPI2STAT)
	lw	$2,%lo(SPI2STAT)($2)
	andi	$2,$2,0x1
	beq	$2,$0,.L8
	nop

	.loc 1 136 0
	lui	$2,%hi(SPI2BUF)
	lw	$2,%lo(SPI2BUF)($2)
	sb	$2,0($fp)
.LVL12 = .
	.loc 1 137 0
	lbu	$2,0($fp)
.LVL13 = .
	.loc 1 138 0
	move	$sp,$fp
.LCFI7 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
.LVL14 = .
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	Spi2PutByte
.LFE5:
	.size	Spi2PutByte, .-Spi2PutByte
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
	.uleb128 0x10
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
	.section	.text,code
.Letext0:
	.file 2 "d:/downloads/soft/mplab ide/xc32 compiler/pic32mx/include/proc/p32mz2048efg100.h"
	.file 3 "d:/downloads/soft/mplab ide/xc32 compiler/pic32mx/include/machine/int_types.h"
	.file 4 "d:/study/7/mips_pic/labs/demo7_comm_spi_oled/src/oled/oled.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x392
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"src/OLED/SPI.c\000"
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
	.2byte	0x1abd
	.4byte	0x17f
	.uleb128 0x4
	.ascii	"SPIRBF\000"
	.byte	0x2
	.2byte	0x1abe
	.4byte	0x7b
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPITBF\000"
	.byte	0x2
	.2byte	0x1abf
	.4byte	0x7b
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPITBE\000"
	.byte	0x2
	.2byte	0x1ac1
	.4byte	0x7b
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIRBE\000"
	.byte	0x2
	.2byte	0x1ac3
	.4byte	0x7b
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIROV\000"
	.byte	0x2
	.2byte	0x1ac4
	.4byte	0x7b
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SRMT\000"
	.byte	0x2
	.2byte	0x1ac5
	.4byte	0x7b
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPITUR\000"
	.byte	0x2
	.2byte	0x1ac6
	.4byte	0x7b
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIBUSY\000"
	.byte	0x2
	.2byte	0x1ac8
	.4byte	0x7b
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMERR\000"
	.byte	0x2
	.2byte	0x1ac9
	.4byte	0x7b
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TXBUFELM\000"
	.byte	0x2
	.2byte	0x1acb
	.4byte	0x7b
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RXBUFELM\000"
	.byte	0x2
	.2byte	0x1acd
	.4byte	0x7b
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1acf
	.4byte	0x199
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x1ad0
	.4byte	0x7b
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
	.2byte	0x1abc
	.4byte	0x1ad
	.uleb128 0x6
	.4byte	0x8b
	.uleb128 0x6
	.4byte	0x17f
	.byte	0
	.uleb128 0x7
	.ascii	"__SPI2STATbits_t\000"
	.byte	0x2
	.2byte	0x1ad2
	.4byte	0x199
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
	.4byte	0x20e
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
	.uleb128 0x8
	.ascii	"BYTE\000"
	.byte	0x4
	.byte	0x26
	.4byte	0x1fd
	.uleb128 0x9
	.byte	0x1
	.ascii	"OledPutBuffer\000"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST0
	.byte	0x1
	.4byte	0x2d9
	.uleb128 0xa
	.ascii	"cb\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x1e7
	.byte	0x1
	.byte	0x54
	.uleb128 0xb
	.ascii	"rgbTx\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x2d9
	.4byte	.LLST1
	.uleb128 0xc
	.ascii	"ib\000"
	.byte	0x1
	.byte	0x59
	.4byte	0x1e7
	.4byte	.LLST2
	.uleb128 0xc
	.ascii	"bTmp\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0x26d
	.4byte	.LLST3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x26d
	.uleb128 0xe
	.byte	0x1
	.ascii	"Spi2PutByte\000"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.4byte	0x26d
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST4
	.byte	0x1
	.4byte	0x323
	.uleb128 0xa
	.ascii	"bVal\000"
	.byte	0x1
	.byte	0x7a
	.4byte	0x26d
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.ascii	"bRx\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x26d
	.4byte	.LLST5
	.byte	0
	.uleb128 0xf
	.ascii	"SPI2STATbits\000"
	.byte	0x2
	.2byte	0x1ad3
	.ascii	"SPI2STAT\000"
	.4byte	0x343
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	0x1ad
	.uleb128 0x11
	.ascii	"SPI2BUF\000"
	.byte	0x2
	.2byte	0x1ad8
	.4byte	0x35a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.4byte	0x7b
	.uleb128 0x12
	.4byte	0x26d
	.4byte	0x370
	.uleb128 0x13
	.4byte	0x370
	.2byte	0x1ff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x14
	.ascii	"rgbOledBmp\000"
	.byte	0x4
	.byte	0x68
	.4byte	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.4byte	.LVL2-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL4-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 20
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 20
	.4byte	.LVL10-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x91
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LVL2-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LVL9-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6-.Ltext0
	.4byte	.LVL7-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI4-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LCFI4-.Ltext0
	.4byte	.LCFI6-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	.LCFI6-.Ltext0
	.4byte	.LCFI7-.Ltext0
	.2byte	0x2
	.byte	0x8e
	.sleb128 16
	.4byte	.LCFI7-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 16
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-.Ltext0
	.4byte	.LVL14-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 0
	.4byte	.LVL14-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x8d
	.sleb128 -16
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
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
