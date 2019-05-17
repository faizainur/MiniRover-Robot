;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _reverse_PARM_3
	.globl _reverse_PARM_2
	.globl _swap_PARM_2
	.globl _DELAY_us
	.globl _abs
	.globl _EN
	.globl _RW
	.globl _RS
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ET2
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _T2EX
	.globl _T2
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _A
	.globl _ACC
	.globl _PSW
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2MOD
	.globl _T2CON
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _itoa_PARM_3
	.globl _itoa_PARM_2
	.globl _LCDDisplayNumber_PARM_3
	.globl _LCDDisplayNumber_PARM_2
	.globl _LCDPrintString_PARM_2
	.globl _LCDInit
	.globl _LCDCmdWrite
	.globl _LCDDataWrite
	.globl _LCDPrintString
	.globl _LCDDisplayNumber
	.globl _swap
	.globl _reverse
	.globl _itoa
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_ACC	=	0x00e0
_A	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_T2	=	0x0090
_T2EX	=	0x0091
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_ET2	=	0x00ad
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RS	=	0x00a0
_RW	=	0x00a1
_EN	=	0x00a2
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_LCDPrintString_PARM_2:
	.ds 3
_LCDDisplayNumber_PARM_2:
	.ds 2
_LCDDisplayNumber_PARM_3:
	.ds 1
_LCDDisplayNumber_buffer_65536_83:
	.ds 33
_itoa_PARM_2:
	.ds 3
_itoa_PARM_3:
	.ds 2
_itoa_value_65536_91:
	.ds 2
_itoa_r_131073_94:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_swap_PARM_2:
	.ds 3
	.area	OSEG    (OVR,DATA)
_reverse_PARM_2:
	.ds 2
_reverse_PARM_3:
	.ds 2
_reverse___1310720001_131072_88:
	.ds 3
_reverse___1310720002_131072_88:
	.ds 3
_reverse_t_262144_90:
	.ds 1
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDInit'
;------------------------------------------------------------
;	src/libs/lcd.c:4: void LCDInit(){
;	-----------------------------------------
;	 function LCDInit
;	-----------------------------------------
_LCDInit:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/libs/lcd.c:6: LCDCmdWrite(RETURN_HOME);
	mov	dpl,#0x02
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:7: LCDCmdWrite(CMD_LCD_FOUR_BIT_MODE);             // Set data bus in 4-bit mode
	mov	dpl,#0x28
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:8: LCDCmdWrite(DISPLAY_ON_CURSOR_BLINK_1);
	mov	dpl,#0x0e
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:9: LCDCmdWrite(CLEAR_SCREEN);
	mov	dpl,#0x01
;	src/libs/lcd.c:11: }
	ljmp	_LCDCmdWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDCmdWrite'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;------------------------------------------------------------
;	src/libs/lcd.c:13: int LCDCmdWrite(char cmd){
;	-----------------------------------------
;	 function LCDCmdWrite
;	-----------------------------------------
_LCDCmdWrite:
	mov	r7,dpl
;	src/libs/lcd.c:15: LcdDatabus_P2 = (cmd & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P2,a
;	src/libs/lcd.c:16: RS = LOW;
;	assignBit
	clr	_RS
;	src/libs/lcd.c:17: RW = LOW;
;	assignBit
	clr	_RW
;	src/libs/lcd.c:18: EN = HIGH;
;	assignBit
	setb	_EN
;	src/libs/lcd.c:19: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
;	src/libs/lcd.c:20: EN = LOW;
;	assignBit
	clr	_EN
;	src/libs/lcd.c:22: DELAY_us(10000);
	mov	dptr,#0x2710
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:24: LcdDatabus_P2 = ((cmd<<4) & 0xF0);
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	a,#0xf0
	anl	a,r7
	mov	_P2,a
;	src/libs/lcd.c:25: RS = LOW;
;	assignBit
	clr	_RS
;	src/libs/lcd.c:26: RW = LOW;
;	assignBit
	clr	_RW
;	src/libs/lcd.c:27: EN = HIGH;
;	assignBit
	setb	_EN
;	src/libs/lcd.c:28: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:29: EN = LOW;
;	assignBit
	clr	_EN
;	src/libs/lcd.c:31: DELAY_us(10000);
	mov	dptr,#0x2710
	lcall	_DELAY_us
;	src/libs/lcd.c:32: return 0;
	mov	dptr,#0x0000
;	src/libs/lcd.c:33: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDDataWrite'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	src/libs/lcd.c:35: int LCDDataWrite(char data){
;	-----------------------------------------
;	 function LCDDataWrite
;	-----------------------------------------
_LCDDataWrite:
	mov	r7,dpl
;	src/libs/lcd.c:37: LcdDatabus_P2 = (data & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P2,a
;	src/libs/lcd.c:38: RS = HIGH;
;	assignBit
	setb	_RS
;	src/libs/lcd.c:39: RW = LOW;
;	assignBit
	clr	_RW
;	src/libs/lcd.c:40: EN = HIGH;
;	assignBit
	setb	_EN
;	src/libs/lcd.c:41: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
;	src/libs/lcd.c:42: EN = LOW;
;	assignBit
	clr	_EN
;	src/libs/lcd.c:44: DELAY_us(10000);
	mov	dptr,#0x2710
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:46: LcdDatabus_P2 = ((data<<4) & 0xF0);
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	a,#0xf0
	anl	a,r7
	mov	_P2,a
;	src/libs/lcd.c:47: RS = HIGH;
;	assignBit
	setb	_RS
;	src/libs/lcd.c:48: RW = LOW;
;	assignBit
	clr	_RW
;	src/libs/lcd.c:49: EN = HIGH;
;	assignBit
	setb	_EN
;	src/libs/lcd.c:50: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:51: EN = LOW;
;	assignBit
	clr	_EN
;	src/libs/lcd.c:53: DELAY_us(10000);
	mov	dptr,#0x2710
	lcall	_DELAY_us
;	src/libs/lcd.c:54: return 0;
	mov	dptr,#0x0000
;	src/libs/lcd.c:55: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDPrintString'
;------------------------------------------------------------
;string                    Allocated with name '_LCDPrintString_PARM_2'
;line                      Allocated to registers r7 
;------------------------------------------------------------
;	src/libs/lcd.c:57: void LCDPrintString(uint8_t line, char* string){
;	-----------------------------------------
;	 function LCDPrintString
;	-----------------------------------------
_LCDPrintString:
;	src/libs/lcd.c:58: switch (line)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00114$
	mov	a,r7
	add	a,r7
;	src/libs/lcd.c:60: case FIRST_LINE:
	mov	dptr,#00126$
	jmp	@a+dptr
00126$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	src/libs/lcd.c:61: LCDCmdWrite(CURSOR_TO_FIRST_LINE);
	mov	dpl,#0x80
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:62: break;
;	src/libs/lcd.c:63: case SECOND_LINE:
	sjmp	00114$
00102$:
;	src/libs/lcd.c:64: LCDCmdWrite(CURSOR_TO_SECOND_LINE);
	mov	dpl,#0xc0
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:65: break;
;	src/libs/lcd.c:66: case THIRD_LINE:
	sjmp	00114$
00103$:
;	src/libs/lcd.c:67: LCDCmdWrite(CURSOR_TO_THIRD_LINE);
	mov	dpl,#0x90
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:68: break;
;	src/libs/lcd.c:69: case FORTH_LINE:
	sjmp	00114$
00104$:
;	src/libs/lcd.c:70: LCDCmdWrite(CURSOR_TO_FORTH_LINE);
	mov	dpl,#0xd0
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:76: while(*string){
00114$:
	mov	r5,_LCDPrintString_PARM_2
	mov	r6,(_LCDPrintString_PARM_2 + 1)
	mov	r7,(_LCDPrintString_PARM_2 + 2)
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00110$
;	src/libs/lcd.c:77: LCDDataWrite(*string++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00128$
	inc	r6
00128$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCDDataWrite
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00107$
00110$:
;	src/libs/lcd.c:79: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDDisplayNumber'
;------------------------------------------------------------
;number                    Allocated with name '_LCDDisplayNumber_PARM_2'
;radix                     Allocated with name '_LCDDisplayNumber_PARM_3'
;line                      Allocated to registers r7 
;buffer                    Allocated with name '_LCDDisplayNumber_buffer_65536_83'
;------------------------------------------------------------
;	src/libs/lcd.c:81: void LCDDisplayNumber(uint8_t line,int number,unsigned char radix)
;	-----------------------------------------
;	 function LCDDisplayNumber
;	-----------------------------------------
_LCDDisplayNumber:
	mov	r7,dpl
;	src/libs/lcd.c:84: itoa(number,buffer,radix);
	mov	_itoa_PARM_2,#_LCDDisplayNumber_buffer_65536_83
	mov	(_itoa_PARM_2 + 1),#0x00
	mov	(_itoa_PARM_2 + 2),#0x40
	mov	_itoa_PARM_3,_LCDDisplayNumber_PARM_3
	mov	(_itoa_PARM_3 + 1),#0x00
	mov	dpl,_LCDDisplayNumber_PARM_2
	mov	dph,(_LCDDisplayNumber_PARM_2 + 1)
	push	ar7
	lcall	_itoa
	pop	ar7
;	src/libs/lcd.c:85: LCDPrintString(line, buffer);
	mov	_LCDPrintString_PARM_2,#_LCDDisplayNumber_buffer_65536_83
	mov	(_LCDPrintString_PARM_2 + 1),#0x00
	mov	(_LCDPrintString_PARM_2 + 2),#0x40
	mov	dpl,r7
;	src/libs/lcd.c:86: }
	ljmp	_LCDPrintString
;------------------------------------------------------------
;Allocation info for local variables in function 'swap'
;------------------------------------------------------------
;y                         Allocated with name '_swap_PARM_2'
;x                         Allocated to registers r5 r6 r7 
;t                         Allocated to registers r4 
;------------------------------------------------------------
;	src/libs/lcd.c:90: inline void swap(char *x, char *y) {
;	-----------------------------------------
;	 function swap
;	-----------------------------------------
_swap:
;	src/libs/lcd.c:91: char t = *x; *x = *y; *y = t;
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	lcall	__gptrget
	mov	r4,a
	mov	r1,_swap_PARM_2
	mov	r2,(_swap_PARM_2 + 1)
	mov	r3,(_swap_PARM_2 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrput
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	mov	a,r4
;	src/libs/lcd.c:92: }
	ljmp	__gptrput
;------------------------------------------------------------
;Allocation info for local variables in function 'reverse'
;------------------------------------------------------------
;i                         Allocated with name '_reverse_PARM_2'
;j                         Allocated with name '_reverse_PARM_3'
;buffer                    Allocated to registers r5 r6 r7 
;__1310720001              Allocated with name '_reverse___1310720001_131072_88'
;__1310720002              Allocated with name '_reverse___1310720002_131072_88'
;x                         Allocated to registers 
;y                         Allocated to registers 
;t                         Allocated with name '_reverse_t_262144_90'
;------------------------------------------------------------
;	src/libs/lcd.c:95: char* reverse(char *buffer, int i, int j)
;	-----------------------------------------
;	 function reverse
;	-----------------------------------------
_reverse:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/libs/lcd.c:97: while (i < j)
	mov	r3,_reverse_PARM_3
	mov	r4,(_reverse_PARM_3 + 1)
	mov	r1,_reverse_PARM_2
	mov	r2,(_reverse_PARM_2 + 1)
00101$:
	clr	c
	mov	a,r1
	subb	a,r3
	mov	a,r2
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	src/libs/lcd.c:98: swap(&buffer[i++], &buffer[j--]);
	mov	a,r3
	add	a,r5
	mov	_reverse___1310720002_131072_88,a
	mov	a,r4
	addc	a,r6
	mov	(_reverse___1310720002_131072_88 + 1),a
	mov	(_reverse___1310720002_131072_88 + 2),r7
	dec	r3
	cjne	r3,#0xff,00117$
	dec	r4
00117$:
	mov	a,r1
	add	a,r5
	mov	_reverse___1310720001_131072_88,a
	mov	a,r2
	addc	a,r6
	mov	(_reverse___1310720001_131072_88 + 1),a
	mov	(_reverse___1310720001_131072_88 + 2),r7
	inc	r1
	cjne	r1,#0x00,00118$
	inc	r2
00118$:
;	src/libs/lcd.c:91: char t = *x; *x = *y; *y = t;
	mov	dpl,_reverse___1310720001_131072_88
	mov	dph,(_reverse___1310720001_131072_88 + 1)
	mov	b,(_reverse___1310720001_131072_88 + 2)
	lcall	__gptrget
	mov	_reverse_t_262144_90,a
	mov	dpl,_reverse___1310720002_131072_88
	mov	dph,(_reverse___1310720002_131072_88 + 1)
	mov	b,(_reverse___1310720002_131072_88 + 2)
	lcall	__gptrget
	mov	r0,a
	mov	dpl,_reverse___1310720001_131072_88
	mov	dph,(_reverse___1310720001_131072_88 + 1)
	mov	b,(_reverse___1310720001_131072_88 + 2)
	lcall	__gptrput
	mov	dpl,_reverse___1310720002_131072_88
	mov	dph,(_reverse___1310720002_131072_88 + 1)
	mov	b,(_reverse___1310720002_131072_88 + 2)
	mov	a,_reverse_t_262144_90
	lcall	__gptrput
;	src/libs/lcd.c:98: swap(&buffer[i++], &buffer[j--]);
	sjmp	00101$
00103$:
;	src/libs/lcd.c:100: return buffer;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	src/libs/lcd.c:101: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'itoa'
;------------------------------------------------------------
;buffer                    Allocated with name '_itoa_PARM_2'
;base                      Allocated with name '_itoa_PARM_3'
;value                     Allocated with name '_itoa_value_65536_91'
;n                         Allocated to registers r4 r5 
;i                         Allocated to registers r2 r3 
;r                         Allocated with name '_itoa_r_131073_94'
;------------------------------------------------------------
;	src/libs/lcd.c:104: char* itoa(int value, char* buffer, int base)
;	-----------------------------------------
;	 function itoa
;	-----------------------------------------
_itoa:
	mov	_itoa_value_65536_91,dpl
	mov	(_itoa_value_65536_91 + 1),dph
;	src/libs/lcd.c:107: if (base < 2 || base > 32)
	clr	c
	mov	a,_itoa_PARM_3
	subb	a,#0x02
	mov	a,(_itoa_PARM_3 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00101$
	mov	a,#0x20
	subb	a,_itoa_PARM_3
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_itoa_PARM_3 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
00101$:
;	src/libs/lcd.c:108: return buffer;
	mov	dpl,_itoa_PARM_2
	mov	dph,(_itoa_PARM_2 + 1)
	mov	b,(_itoa_PARM_2 + 2)
	ret
00102$:
;	src/libs/lcd.c:111: int n = abs(value);
	mov	dpl,_itoa_value_65536_91
	mov	dph,(_itoa_value_65536_91 + 1)
	lcall	_abs
	mov	r4,dpl
	mov	r5,dph
;	src/libs/lcd.c:113: int i = 0;
	mov	r2,#0x00
	mov	r3,#0x00
;	src/libs/lcd.c:114: while (n)
00107$:
	mov	a,r4
	orl	a,r5
	jnz	00147$
	ljmp	00109$
00147$:
;	src/libs/lcd.c:116: int r = n % base;
	mov	__modsint_PARM_2,_itoa_PARM_3
	mov	(__modsint_PARM_2 + 1),(_itoa_PARM_3 + 1)
	mov	dpl,r4
	mov	dph,r5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__modsint
	mov	_itoa_r_131073_94,dpl
	mov	(_itoa_r_131073_94 + 1),dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	src/libs/lcd.c:118: if (r >= 10) 
	clr	c
	mov	a,_itoa_r_131073_94
	subb	a,#0x0a
	mov	a,(_itoa_r_131073_94 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	src/libs/lcd.c:119: buffer[i++] = 65 + (r - 10);
	mov	ar6,r2
	mov	ar7,r3
	inc	r2
	cjne	r2,#0x00,00149$
	inc	r3
00149$:
	mov	a,r6
	add	a,_itoa_PARM_2
	mov	r6,a
	mov	a,r7
	addc	a,(_itoa_PARM_2 + 1)
	mov	r1,a
	mov	r7,(_itoa_PARM_2 + 2)
	mov	r0,_itoa_r_131073_94
	mov	a,#0x37
	add	a,r0
	mov	r0,a
	mov	dpl,r6
	mov	dph,r1
	mov	b,r7
	lcall	__gptrput
	sjmp	00106$
00105$:
;	src/libs/lcd.c:121: buffer[i++] = 48 + r;
	mov	ar6,r2
	mov	ar7,r3
	inc	r2
	cjne	r2,#0x00,00150$
	inc	r3
00150$:
	mov	a,r6
	add	a,_itoa_PARM_2
	mov	r6,a
	mov	a,r7
	addc	a,(_itoa_PARM_2 + 1)
	mov	r1,a
	mov	r7,(_itoa_PARM_2 + 2)
	mov	r0,_itoa_r_131073_94
	mov	a,#0x30
	add	a,r0
	mov	r0,a
	mov	dpl,r6
	mov	dph,r1
	mov	b,r7
	lcall	__gptrput
00106$:
;	src/libs/lcd.c:123: n = n / base;
	mov	__divsint_PARM_2,_itoa_PARM_3
	mov	(__divsint_PARM_2 + 1),(_itoa_PARM_3 + 1)
	mov	dpl,r4
	mov	dph,r5
	push	ar3
	push	ar2
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	pop	ar3
	ljmp	00107$
00109$:
;	src/libs/lcd.c:127: if (i == 0)
	mov	a,r2
	orl	a,r3
	jnz	00111$
;	src/libs/lcd.c:128: buffer[i++] = '0';
	mov	ar6,r2
	mov	ar7,r3
	inc	r2
	cjne	r2,#0x00,00152$
	inc	r3
00152$:
	mov	a,r6
	add	a,_itoa_PARM_2
	mov	r6,a
	mov	a,r7
	addc	a,(_itoa_PARM_2 + 1)
	mov	r7,a
	mov	r5,(_itoa_PARM_2 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,#0x30
	lcall	__gptrput
00111$:
;	src/libs/lcd.c:133: if (value < 0 && base == 10)
	mov	a,(_itoa_value_65536_91 + 1)
	jnb	acc.7,00113$
	mov	a,#0x0a
	cjne	a,_itoa_PARM_3,00154$
	clr	a
	cjne	a,(_itoa_PARM_3 + 1),00154$
	sjmp	00155$
00154$:
	sjmp	00113$
00155$:
;	src/libs/lcd.c:134: buffer[i++] = '-';
	mov	ar6,r2
	mov	ar7,r3
	inc	r2
	cjne	r2,#0x00,00156$
	inc	r3
00156$:
	mov	a,r6
	add	a,_itoa_PARM_2
	mov	r6,a
	mov	a,r7
	addc	a,(_itoa_PARM_2 + 1)
	mov	r7,a
	mov	r5,(_itoa_PARM_2 + 2)
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,#0x2d
	lcall	__gptrput
00113$:
;	src/libs/lcd.c:136: buffer[i] = '\0'; // null terminate string
	mov	a,r2
	add	a,_itoa_PARM_2
	mov	r5,a
	mov	a,r3
	addc	a,(_itoa_PARM_2 + 1)
	mov	r6,a
	mov	r7,(_itoa_PARM_2 + 2)
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	clr	a
	lcall	__gptrput
;	src/libs/lcd.c:139: return reverse(buffer, 0, i - 1);
	mov	a,r2
	add	a,#0xff
	mov	_reverse_PARM_3,a
	mov	a,r3
	addc	a,#0xff
	mov	(_reverse_PARM_3 + 1),a
	clr	a
	mov	_reverse_PARM_2,a
	mov	(_reverse_PARM_2 + 1),a
	mov	dpl,_itoa_PARM_2
	mov	dph,(_itoa_PARM_2 + 1)
	mov	b,(_itoa_PARM_2 + 2)
;	src/libs/lcd.c:140: }
	ljmp	_reverse
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
