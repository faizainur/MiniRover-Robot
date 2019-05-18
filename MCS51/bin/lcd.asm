;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _DELAY_us
	.globl _itoa
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
	.globl _LCDDisplayNumber_PARM_3
	.globl _LCDDisplayNumber_PARM_2
	.globl _LCDPrintString_PARM_2
	.globl _LCDInit
	.globl _LCDCmdWrite
	.globl _LCDDataWrite
	.globl _LCDPrintString
	.globl _LCDDisplayNumber
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
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;	src/libs/lcd.c:15: LCDDatabus = (cmd & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P2,a
;	src/libs/lcd.c:17: RS = LOW;
;	assignBit
	clr	_RS
;	src/libs/lcd.c:18: RW = LOW;
;	assignBit
	clr	_RW
;	src/libs/lcd.c:19: EN = HIGH;
;	assignBit
	setb	_EN
;	src/libs/lcd.c:20: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
;	src/libs/lcd.c:21: EN = LOW;
;	assignBit
	clr	_EN
;	src/libs/lcd.c:23: DELAY_us(10000);
	mov	dptr,#0x2710
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:25: LCDDatabus = ((cmd<<4) & 0xF0);
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	a,#0xf0
	anl	a,r7
	mov	_P2,a
;	src/libs/lcd.c:26: RS = LOW;
;	assignBit
	clr	_RS
;	src/libs/lcd.c:27: RW = LOW;
;	assignBit
	clr	_RW
;	src/libs/lcd.c:28: EN = HIGH;
;	assignBit
	setb	_EN
;	src/libs/lcd.c:29: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:30: EN = LOW;
;	assignBit
	clr	_EN
;	src/libs/lcd.c:32: DELAY_us(10000);
	mov	dptr,#0x2710
	lcall	_DELAY_us
;	src/libs/lcd.c:33: return 0;
	mov	dptr,#0x0000
;	src/libs/lcd.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDDataWrite'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	src/libs/lcd.c:36: int LCDDataWrite(char data){
;	-----------------------------------------
;	 function LCDDataWrite
;	-----------------------------------------
_LCDDataWrite:
	mov	r7,dpl
;	src/libs/lcd.c:38: LCDDatabus = (data & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P2,a
;	src/libs/lcd.c:39: RS = HIGH;
;	assignBit
	setb	_RS
;	src/libs/lcd.c:40: RW = LOW;
;	assignBit
	clr	_RW
;	src/libs/lcd.c:41: EN = HIGH;
;	assignBit
	setb	_EN
;	src/libs/lcd.c:42: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
;	src/libs/lcd.c:43: EN = LOW;
;	assignBit
	clr	_EN
;	src/libs/lcd.c:45: DELAY_us(10000);
	mov	dptr,#0x2710
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:47: LCDDatabus = ((data<<4) & 0xF0);
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	a,#0xf0
	anl	a,r7
	mov	_P2,a
;	src/libs/lcd.c:48: RS = HIGH;
;	assignBit
	setb	_RS
;	src/libs/lcd.c:49: RW = LOW;
;	assignBit
	clr	_RW
;	src/libs/lcd.c:50: EN = HIGH;
;	assignBit
	setb	_EN
;	src/libs/lcd.c:51: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:52: EN = LOW;
;	assignBit
	clr	_EN
;	src/libs/lcd.c:54: DELAY_us(10000);
	mov	dptr,#0x2710
	lcall	_DELAY_us
;	src/libs/lcd.c:55: return 0;
	mov	dptr,#0x0000
;	src/libs/lcd.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDPrintString'
;------------------------------------------------------------
;string                    Allocated with name '_LCDPrintString_PARM_2'
;line                      Allocated to registers r7 
;------------------------------------------------------------
;	src/libs/lcd.c:58: void LCDPrintString(uint8_t line, char* string){
;	-----------------------------------------
;	 function LCDPrintString
;	-----------------------------------------
_LCDPrintString:
;	src/libs/lcd.c:59: switch (line)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00114$
	mov	a,r7
	add	a,r7
;	src/libs/lcd.c:61: case FIRST_LINE:
	mov	dptr,#00126$
	jmp	@a+dptr
00126$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	src/libs/lcd.c:62: LCDCmdWrite(CURSOR_TO_FIRST_LINE);
	mov	dpl,#0x80
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:63: break;
;	src/libs/lcd.c:64: case SECOND_LINE:
	sjmp	00114$
00102$:
;	src/libs/lcd.c:65: LCDCmdWrite(CURSOR_TO_SECOND_LINE);
	mov	dpl,#0xc0
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:66: break;
;	src/libs/lcd.c:67: case THIRD_LINE:
	sjmp	00114$
00103$:
;	src/libs/lcd.c:68: LCDCmdWrite(CURSOR_TO_THIRD_LINE);
	mov	dpl,#0x90
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:69: break;
;	src/libs/lcd.c:70: case FORTH_LINE:
	sjmp	00114$
00104$:
;	src/libs/lcd.c:71: LCDCmdWrite(CURSOR_TO_FORTH_LINE);
	mov	dpl,#0xd0
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:77: while(*string){
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
;	src/libs/lcd.c:78: LCDDataWrite(*string++);
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
;	src/libs/lcd.c:80: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDDisplayNumber'
;------------------------------------------------------------
;number                    Allocated with name '_LCDDisplayNumber_PARM_2'
;radix                     Allocated with name '_LCDDisplayNumber_PARM_3'
;line                      Allocated to registers r7 
;buffer                    Allocated with name '_LCDDisplayNumber_buffer_65536_83'
;------------------------------------------------------------
;	src/libs/lcd.c:82: void LCDDisplayNumber(uint8_t line,int number,unsigned char radix)
;	-----------------------------------------
;	 function LCDDisplayNumber
;	-----------------------------------------
_LCDDisplayNumber:
	mov	r7,dpl
;	src/libs/lcd.c:85: itoa(number,buffer,radix);
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
;	src/libs/lcd.c:86: LCDPrintString(line, buffer);
	mov	_LCDPrintString_PARM_2,#_LCDDisplayNumber_buffer_65536_83
	mov	(_LCDPrintString_PARM_2 + 1),#0x00
	mov	(_LCDPrintString_PARM_2 + 2),#0x40
	mov	dpl,r7
;	src/libs/lcd.c:87: }
	ljmp	_LCDPrintString
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
