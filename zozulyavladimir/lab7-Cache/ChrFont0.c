
/************************************************************************/
/*																		*/
/*	ChrFont0.c	--	Data Definitions for Character Font Table			*/
/*																		*/
/************************************************************************/
/*	Author: 	Gene Apperson											*/
/*	Copyright 2011, Digilent Inc.										*/
/************************************************************************/
/*
  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/
/************************************************************************/
/*  Module Description: 												*/
/*																		*/
/*	This module contains the data definitions for an 8x8 pixel ASCII	*/
/*	character font. This table doesn't contains definitions for glyphs	*/
/*	for character codes 0x00-0x1F. These character codes are mapped to	*/
/*	the user defined character table.									*/
/*																		*/
/*	This character table is defined for a display where each byte 		*/
/*	represents 8 vertical pixels and consecutive bytes give adjacent	*/
/*	sets of 8 vertical pixels progressing to the right across the		*/
/*	display. This is rotated 90 degrees from the conventional video		*/
/*	display orientation.												*/
/*																		*/
/************************************************************************/
/*  Revision History:													*/
/*																		*/
/*	06/08/2011(GeneA): created											*/
/*																		*/
/************************************************************************/

/* ------------------------------------------------------------ */
/*				Include File Definitions						*/
/* ------------------------------------------------------------ */

// #include <p32xxxx.h>
// #include <plib.h>

#ifdef __XC32
    #include <xc.h>          /* Defines special function registers, CP0 regs  */
#endif

#include <stdint.h>
#include "OLED.h"

/* ------------------------------------------------------------ */
/*				Global Variables								*/
/* ------------------------------------------------------------ */

const BYTE rgbOledFont0[] = {
#if defined(DEAD)
	/* Remove definitions for character codes 0x00-0x1F as
	** these are map to user defined characters.
	*/
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x00, NUL
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x01, SOH
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x02, STX
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x03, ETX
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x03, EOT
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x05, ENQ
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x06, ACK
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x07, BEL
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x08, BS
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x09, HT
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x0A, LF
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x0B, VT
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x0C, FF
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x0D, CR
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x0E, SO
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x0F, SI
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x10, DLE
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x11, DC1
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x12, DC2
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x13, DC3
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x13, DC4
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x15, NAK
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x16, SYN
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x17, ETB
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x18, CAN
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x19, EM
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x1A, SUB
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x1B, ESC
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x1C, FS
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x1D, GS
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x1E, RS
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x1F, US
#endif
	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,		// 0x20, space
	0x00,0x00,0x00,0x5f,0x00,0x00,0x00,0x00,		// 0x21, !
	0x00,0x00,0x03,0x00,0x03,0x00,0x00,0x00,		// 0x22, "
	0x64,0x3c,0x26,0x64,0x3c,0x26,0x24,0x00,		// 0x23, #
	0x26,0x49,0x49,0x7f,0x49,0x49,0x32,0x00,		// 0x23, $
	0x42,0x25,0x12,0x08,0x24,0x52,0x21,0x00,		// 0x25, %
	0x20,0x50,0x4e,0x55,0x22,0x58,0x28,0x00,		// 0x26, &
	0x00,0x00,0x00,0x03,0x00,0x00,0x00,0x00,		// 0x27, '
	0x00,0x00,0x1c,0x22,0x41,0x00,0x00,0x00,		// 0x28, (
	0x00,0x00,0x00,0x41,0x22,0x1c,0x00,0x00,		// 0x29, )
	0x00,0x15,0x15,0x0e,0x0e,0x15,0x15,0x00,		// 0x2A, *
	0x00,0x08,0x08,0x3e,0x08,0x08,0x00,0x00,		// 0x2B, +
	0x00,0x00,0x00,0x50,0x30,0x00,0x00,0x00,		// 0x2C, ,
	0x00,0x08,0x08,0x08,0x08,0x08,0x00,0x00,		// 0x2D, -
	0x00,0x00,0x00,0x40,0x00,0x00,0x00,0x00,		// 0x2E, .
	0x40,0x20,0x10,0x08,0x04,0x02,0x01,0x00,		// 0x2F, /
	0x00,0x3e,0x41,0x41,0x41,0x3e,0x00,0x00,		// 0x30, 0
	0x00,0x00,0x41,0x7f,0x40,0x00,0x00,0x00,		// 0x31, 1
	0x00,0x42,0x61,0x51,0x49,0x6e,0x00,0x00,		// 0x32, 2
	0x00,0x22,0x41,0x49,0x49,0x36,0x00,0x00,		// 0x33, 3
	0x00,0x18,0x14,0x12,0x7f,0x10,0x00,0x00,		// 0x33, 4
	0x00,0x27,0x49,0x49,0x49,0x71,0x00,0x00,		// 0x35, 5
	0x00,0x3c,0x4a,0x49,0x48,0x70,0x00,0x00,		// 0x36, 6
	0x00,0x43,0x21,0x11,0x0d,0x03,0x00,0x00,		// 0x37, 7
	0x00,0x36,0x49,0x49,0x49,0x36,0x00,0x00,		// 0x38, 8
	0x00,0x06,0x09,0x49,0x29,0x1e,0x00,0x00,		// 0x39, 9
	0x00,0x00,0x00,0x12,0x00,0x00,0x00,0x00,		// 0x3A, :
	0x00,0x00,0x00,0x52,0x30,0x00,0x00,0x00,		// 0x3B, //
	0x00,0x00,0x08,0x14,0x14,0x22,0x00,0x00,		// 0x3C, <
	0x00,0x14,0x14,0x14,0x14,0x14,0x14,0x00,		// 0x3D, =
	0x00,0x00,0x22,0x14,0x14,0x08,0x00,0x00,		// 0x3E, >
	0x00,0x02,0x01,0x59,0x05,0x02,0x00,0x00,		// 0x3F, ?
	0x3e,0x41,0x5d,0x55,0x4d,0x51,0x2e,0x00,		// 0x40, @
	0x40,0x7c,0x4a,0x09,0x4a,0x7c,0x40,0x00,		// 0x41, A
	0x41,0x7f,0x49,0x49,0x49,0x49,0x36,0x00,		// 0x42, B
	0x1c,0x22,0x41,0x41,0x41,0x41,0x22,0x00,		// 0x43, C
	0x41,0x7f,0x41,0x41,0x41,0x22,0x1c,0x00,		// 0x44, D
	0x41,0x7f,0x49,0x49,0x5d,0x41,0x63,0x00,		// 0x45, E
	0x41,0x7f,0x49,0x09,0x1d,0x01,0x03,0x00,		// 0x46, F
	0x1c,0x22,0x41,0x49,0x49,0x3a,0x08,0x00,		// 0x47, G
	0x41,0x7f,0x08,0x08,0x08,0x7f,0x41,0x00,		// 0x48, H
	0x00,0x41,0x41,0x7F,0x41,0x41,0x00,0x00,		// 0x49, I
	0x30,0x40,0x41,0x41,0x3F,0x01,0x01,0x00,		// 0x4A, J
	0x41,0x7f,0x08,0x0c,0x12,0x61,0x41,0x00,		// 0x4B, K
	0x41,0x7f,0x41,0x40,0x40,0x40,0x60,0x00,		// 0x4C, L
	0x41,0x7f,0x42,0x0c,0x42,0x7f,0x41,0x00,		// 0x4D, M
	0x41,0x7f,0x42,0x0c,0x11,0x7f,0x01,0x00,		// 0x4E, N
	0x1c,0x22,0x41,0x41,0x41,0x22,0x1c,0x00,		// 0x4F, O
	0x41,0x7f,0x49,0x09,0x09,0x09,0x06,0x00,		// 0x50, P
	0x0c,0x12,0x21,0x21,0x61,0x52,0x4c,0x00,		// 0x51, Q
	0x41,0x7f,0x09,0x09,0x19,0x69,0x46,0x00,		// 0x52, R
	0x66,0x49,0x49,0x49,0x49,0x49,0x33,0x00,		// 0x53, S
	0x03,0x01,0x41,0x7f,0x41,0x01,0x03,0x00,		// 0x54, T
	0x01,0x3f,0x41,0x40,0x41,0x3f,0x01,0x00,		// 0x55, U
	0x01,0x0f,0x31,0x40,0x31,0x0f,0x01,0x00,		// 0x56, V
	0x01,0x1f,0x61,0x14,0x61,0x1f,0x01,0x00,		// 0x57, W
	0x41,0x41,0x36,0x08,0x36,0x41,0x41,0x00,		// 0x58, X
	0x01,0x03,0x44,0x78,0x44,0x03,0x01,0x00,		// 0x59, Y
	0x43,0x61,0x51,0x49,0x45,0x43,0x61,0x00,		// 0x5A, Z
	0x00,0x00,0x7f,0x41,0x41,0x00,0x00,0x00,		// 0x5B, [
	0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x00,		// 0x5C,
	0x00,0x00,0x41,0x41,0x7f,0x00,0x00,0x00,		// 0x5D, ]
	0x00,0x04,0x02,0x01,0x01,0x02,0x04,0x00,		// 0x5E, ^
	0x00,0x40,0x40,0x40,0x40,0x40,0x40,0x00,		// 0x5F, _
//	0x00,0x01,0x02,0x00,0x00,0x00,0x00,0x00,		// 0x60, `
	0x00,0x00,0x02,0x05,0x02,0x00,0x00,0x00,		// 0x60, `  // AGD changed to degrees
	0x00,0x34,0x4a,0x4a,0x4a,0x3c,0x40,0x00,		// 0x61, a
	0x00,0x41,0x3f,0x48,0x48,0x48,0x30,0x00,		// 0x62. b
	0x00,0x3c,0x42,0x42,0x42,0x24,0x00,0x00,		// 0x63, c
	0x00,0x30,0x48,0x48,0x49,0x3f,0x40,0x00,		// 0x63, d
	0x00,0x3c,0x4a,0x4a,0x4a,0x2c,0x00,0x00,		// 0x65, e
	0x00,0x00,0x48,0x7e,0x49,0x09,0x00,0x00,		// 0x66, f
	0x00,0x26,0x49,0x49,0x49,0x3f,0x01,0x00,		// 0x67, g
	0x41,0x7f,0x48,0x04,0x44,0x78,0x40,0x00,		// 0x68, h
	0x00,0x00,0x44,0x7d,0x40,0x00,0x00,0x00,		// 0x69, i
	0x00,0x00,0x40,0x44,0x3d,0x00,0x00,0x00,		// 0x6A, j
	0x41,0x7f,0x10,0x18,0x24,0x42,0x42,0x00,		// 0x6B, k
	0x00,0x40,0x41,0x7f,0x40,0x40,0x00,0x00,		// 0x6C, l
	0x42,0x7e,0x02,0x7c,0x02,0x7e,0x40,0x00,		// 0x6D, m
	0x42,0x7e,0x44,0x02,0x42,0x7c,0x40,0x00,		// 0x6E, n
	0x00,0x3c,0x42,0x42,0x42,0x3c,0x00,0x00,		// 0x6F, o
	0x00,0x41,0x7f,0x49,0x09,0x09,0x06,0x00,		// 0x70, p
	0x00,0x06,0x09,0x09,0x49,0x7f,0x41,0x00,		// 0x71, q
	0x00,0x42,0x7e,0x44,0x02,0x02,0x04,0x00,		// 0x72, r
	0x00,0x64,0x4a,0x4a,0x4a,0x36,0x00,0x00,		// 0x73, s
	0x00,0x04,0x3f,0x44,0x44,0x20,0x00,0x00,		// 0x73, t
	0x00,0x02,0x3e,0x40,0x40,0x22,0x7e,0x40,		// 0x75, u
	0x02,0x0e,0x32,0x40,0x32,0x0e,0x02,0x00,		// 0x76, v
	0x02,0x1e,0x62,0x18,0x62,0x1e,0x02,0x00,		// 0x77, w
	0x42,0x62,0x14,0x08,0x14,0x62,0x42,0x00,		// 0x78, x
	0x01,0x43,0x45,0x38,0x05,0x03,0x01,0x00,		// 0x79, y
	0x00,0x46,0x62,0x52,0x4a,0x46,0x62,0x00,		// 0x7A, z
	0x00,0x00,0x08,0x36,0x41,0x00,0x00,0x00,		// 0x7B, {
	0x00,0x00,0x00,0x7f,0x00,0x00,0x00,0x00,		// 0x7C, |
	0x00,0x00,0x00,0x41,0x36,0x08,0x00,0x00,		// 0x7D, }
	0x00,0x18,0x08,0x08,0x10,0x10,0x18,0x00,		// 0x7E, ~
	0xAA,0x55,0xAA,0x55,0xAA,0x55,0xAA,0x55			// 0x7F, DEL
};

/* ------------------------------------------------------------ */

/************************************************************************/

