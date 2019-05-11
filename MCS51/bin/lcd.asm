;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pinSetup_PARM_2
	.globl _LCDSetup_PARM_3
	.globl _LCDSetup_PARM_2
	.globl _DELAY_us
	.globl _EN
	.globl _RW
	.globl _RS
	.globl _EN_P3
	.globl _RW_P3
	.globl _RS_P3
	.globl _EN_P2
	.globl _RW_P2
	.globl _RS_P2
	.globl _EN_P1
	.globl _RW_P1
	.globl _RS_P1
	.globl _EN_P0
	.globl _RW_P0
	.globl _RS_P0
	.globl _P_NC
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _FL
	.globl _P
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
	.globl _printString_PARM_2
	.globl ___config
	.globl _LCDLineAddress
	.globl _LCDSetup
	.globl _pinSetup
	.globl _LCDInit
	.globl _LCDCmdWrite
	.globl _LCDDataWrite
	.globl _printString
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
_P	=	0x00d0
_FL	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_P_NC	=	0x00ff
_RS_P0	=	0x0080
_RW_P0	=	0x0081
_EN_P0	=	0x0082
_RS_P1	=	0x0090
_RW_P1	=	0x0091
_EN_P1	=	0x0092
_RS_P2	=	0x00a0
_RW_P2	=	0x00a1
_EN_P2	=	0x00a2
_RS_P3	=	0x00b0
_RW_P3	=	0x00b1
_EN_P3	=	0x00b2
_RS	=	0x00a0
_RW	=	0x00a1
_EN	=	0x00a2
_pinSetup_pin_65536_11:
	.ds 1
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_LCDLineAddress::
	.ds 8
___config::
	.ds 3
_printString_PARM_2:
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_LCDSetup_PARM_2:
	.ds 1
_LCDSetup_PARM_3:
	.ds 1
	.area	OSEG    (OVR,DATA)
_pinSetup_PARM_2:
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
;	src/libs/lcd.h:72: uint16_t LCDLineAddress[] = {0x80, 0xC0, 0x90, 0xD0};
	mov	(_LCDLineAddress + 0),#0x80
	mov	(_LCDLineAddress + 1),#0x00
	mov	((_LCDLineAddress + 0x0002) + 0),#0xc0
	mov	((_LCDLineAddress + 0x0002) + 1),#0x00
	mov	((_LCDLineAddress + 0x0004) + 0),#0x90
	mov	((_LCDLineAddress + 0x0004) + 1),#0x00
	mov	((_LCDLineAddress + 0x0006) + 0),#0xd0
	mov	((_LCDLineAddress + 0x0006) + 1),#0x00
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
;Allocation info for local variables in function 'LCDSetup'
;------------------------------------------------------------
;lcdDatabusType            Allocated with name '_LCDSetup_PARM_2'
;lcdBusModes               Allocated with name '_LCDSetup_PARM_3'
;lcdType                   Allocated to registers r7 
;------------------------------------------------------------
;	src/libs/lcd.c:8: int LCDSetup(uint8_t lcdType, uint8_t lcdDatabusType, uint8_t lcdBusModes)
;	-----------------------------------------
;	 function LCDSetup
;	-----------------------------------------
_LCDSetup:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	src/libs/lcd.c:10: __config.LCDType = lcdType;
	mov	___config,r7
;	src/libs/lcd.c:11: __config.__LCDBusModes = lcdBusModes;
	mov	(___config + 0x0001),_LCDSetup_PARM_3
;	src/libs/lcd.c:12: __config.LCDDatabusType = lcdDatabusType;
	mov	(___config + 0x0002),_LCDSetup_PARM_2
;	src/libs/lcd.c:13: return 0;
	mov	dptr,#0x0000
;	src/libs/lcd.c:14: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pinSetup'
;------------------------------------------------------------
;pin                       Allocated with name '_pinSetup_pin_65536_11'
;modes                     Allocated with name '_pinSetup_PARM_2'
;------------------------------------------------------------
;	src/libs/lcd.c:16: void pinSetup(__sbit pin, uint8_t modes){
;	-----------------------------------------
;	 function pinSetup
;	-----------------------------------------
_pinSetup:
;	src/libs/lcd.c:18: pin = modes;
;	assignBit
	mov	a,_pinSetup_PARM_2
	add	a,#0xff
	mov	_pinSetup_pin_65536_11,c
;	src/libs/lcd.c:19: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDInit'
;------------------------------------------------------------
;	src/libs/lcd.c:21: void LCDInit(){
;	-----------------------------------------
;	 function LCDInit
;	-----------------------------------------
_LCDInit:
;	src/libs/lcd.c:30: LCDCmdWrite(RETURN_HOME);
	mov	dpl,#0x02
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:32: if (__config.__LCDBusModes == BUS4){
	mov	r7,(___config + 0x0001)
	cjne	r7,#0x01,00104$
;	src/libs/lcd.c:33: LCDCmdWrite(CMD_LCD_FOUR_BIT_MODE);
	mov	dpl,#0x28
	lcall	_LCDCmdWrite
	sjmp	00105$
00104$:
;	src/libs/lcd.c:34: } else if (__config.__LCDBusModes == BUS8){
	mov	a,r7
	jnz	00105$
;	src/libs/lcd.c:35: LCDCmdWrite(CMD_LCD_EIGHT_BIT_MODE);
	mov	dpl,#0x38
	lcall	_LCDCmdWrite
00105$:
;	src/libs/lcd.c:38: LCDCmdWrite(DISPLAY_ON_CURSOR_BLINK_1);
	mov	dpl,#0x0e
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:39: LCDCmdWrite(CLEAR_SCREEN);
	mov	dpl,#0x01
;	src/libs/lcd.c:41: }
	ljmp	_LCDCmdWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDCmdWrite'
;------------------------------------------------------------
;cmd                       Allocated to registers r7 
;------------------------------------------------------------
;	src/libs/lcd.c:43: int LCDCmdWrite(char cmd){
;	-----------------------------------------
;	 function LCDCmdWrite
;	-----------------------------------------
_LCDCmdWrite:
	mov	r7,dpl
;	src/libs/lcd.c:45: switch (__config.LCDDatabusType)
	mov	a,(___config + 0x0002)
	mov	r6,a
	add	a,#0xff - 0x03
	jnc	00123$
	ljmp	00105$
00123$:
	mov	a,r6
	add	a,r6
;	src/libs/lcd.c:47: case DATABUS_P0:
	mov	dptr,#00124$
	jmp	@a+dptr
00124$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	src/libs/lcd.c:48: LcdDatabus_P0 = (cmd & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P0,a
;	src/libs/lcd.c:49: RS_P0 = LOW;
;	assignBit
	clr	_RS_P0
;	src/libs/lcd.c:50: RW_P0 = LOW;
;	assignBit
	clr	_RW_P0
;	src/libs/lcd.c:51: EN_P0 = HIGH;
;	assignBit
	setb	_EN_P0
;	src/libs/lcd.c:52: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:53: EN_P0 = LOW;
;	assignBit
	clr	_EN_P0
;	src/libs/lcd.c:54: break;
;	src/libs/lcd.c:56: case DATABUS_P1:
	sjmp	00106$
00102$:
;	src/libs/lcd.c:57: LcdDatabus_P1 = (cmd & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P1,a
;	src/libs/lcd.c:58: RS_P1 = LOW;
;	assignBit
	clr	_RS_P1
;	src/libs/lcd.c:59: RW_P1 = LOW;
;	assignBit
	clr	_RW_P1
;	src/libs/lcd.c:60: EN_P1 = HIGH;
;	assignBit
	setb	_EN_P1
;	src/libs/lcd.c:61: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:62: EN_P1 = LOW;
;	assignBit
	clr	_EN_P1
;	src/libs/lcd.c:63: break;
;	src/libs/lcd.c:65: case DATABUS_P2:
	sjmp	00106$
00103$:
;	src/libs/lcd.c:66: LcdDatabus_P2 = (cmd & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P2,a
;	src/libs/lcd.c:67: RS_P2 = LOW;
;	assignBit
	clr	_RS_P2
;	src/libs/lcd.c:68: RW_P2 = LOW;
;	assignBit
	clr	_RW_P2
;	src/libs/lcd.c:69: EN_P2 = HIGH;
;	assignBit
	setb	_EN_P2
;	src/libs/lcd.c:70: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:71: EN_P2 = LOW;
;	assignBit
	clr	_EN_P2
;	src/libs/lcd.c:72: break;
;	src/libs/lcd.c:74: case DATABUS_P3:
	sjmp	00106$
00104$:
;	src/libs/lcd.c:75: LcdDatabus_P3 = (cmd & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P3,a
;	src/libs/lcd.c:76: RS_P3 = LOW;
;	assignBit
	clr	_RS_P3
;	src/libs/lcd.c:77: RW_P3 = LOW;
;	assignBit
	clr	_RW_P3
;	src/libs/lcd.c:78: EN_P3 = HIGH;
;	assignBit
	setb	_EN_P3
;	src/libs/lcd.c:79: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:80: EN_P3 = LOW;
;	assignBit
	clr	_EN_P3
;	src/libs/lcd.c:81: break;
;	src/libs/lcd.c:83: default:
	sjmp	00106$
00105$:
;	src/libs/lcd.c:84: return -1;
	mov	dptr,#0xffff
	ret
;	src/libs/lcd.c:85: }
00106$:
;	src/libs/lcd.c:88: DELAY_us(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:90: switch (__config.LCDDatabusType)
	mov	a,(___config + 0x0002)
	mov	r6,a
	add	a,#0xff - 0x03
	jnc	00125$
	ljmp	00111$
00125$:
	mov	a,r6
	add	a,r6
;	src/libs/lcd.c:92: case DATABUS_P0:
	mov	dptr,#00126$
	jmp	@a+dptr
00126$:
	sjmp	00107$
	sjmp	00108$
	sjmp	00109$
	sjmp	00110$
00107$:
;	src/libs/lcd.c:93: LcdDatabus_P0 = ((cmd<<4) & 0xF0);
	mov	ar6,r7
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	a,#0xf0
	anl	a,r6
	mov	_P0,a
;	src/libs/lcd.c:94: RS_P0 = LOW;
;	assignBit
	clr	_RS_P0
;	src/libs/lcd.c:95: RW_P0 = LOW;
;	assignBit
	clr	_RW_P0
;	src/libs/lcd.c:96: EN_P0 = HIGH;
;	assignBit
	setb	_EN_P0
;	src/libs/lcd.c:97: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:98: EN_P0 = LOW;
;	assignBit
	clr	_EN_P0
;	src/libs/lcd.c:99: break;
;	src/libs/lcd.c:100: case DATABUS_P1:
	sjmp	00112$
00108$:
;	src/libs/lcd.c:101: LcdDatabus_P1 = ((cmd<<4) & 0xF0);
	mov	ar6,r7
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	a,#0xf0
	anl	a,r6
	mov	_P1,a
;	src/libs/lcd.c:102: RS_P1 = LOW;
;	assignBit
	clr	_RS_P1
;	src/libs/lcd.c:103: RW_P1 = LOW;
;	assignBit
	clr	_RW_P1
;	src/libs/lcd.c:104: EN_P1 = HIGH;
;	assignBit
	setb	_EN_P1
;	src/libs/lcd.c:105: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:106: EN_P1 = LOW;
;	assignBit
	clr	_EN_P1
;	src/libs/lcd.c:107: break;
;	src/libs/lcd.c:108: case DATABUS_P2:
	sjmp	00112$
00109$:
;	src/libs/lcd.c:109: LcdDatabus_P2 = ((cmd<<4) & 0xF0);
	mov	ar6,r7
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	a,#0xf0
	anl	a,r6
	mov	_P2,a
;	src/libs/lcd.c:110: RS_P2 = LOW;
;	assignBit
	clr	_RS_P2
;	src/libs/lcd.c:111: RW_P2 = LOW;
;	assignBit
	clr	_RW_P2
;	src/libs/lcd.c:112: EN_P2 = HIGH;
;	assignBit
	setb	_EN_P2
;	src/libs/lcd.c:113: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:114: EN_P2 = LOW;
;	assignBit
	clr	_EN_P2
;	src/libs/lcd.c:115: break;
;	src/libs/lcd.c:116: case DATABUS_P3:
	sjmp	00112$
00110$:
;	src/libs/lcd.c:117: LcdDatabus_P3 = ((cmd<<4) & 0xF0);
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	a,#0xf0
	anl	a,r7
	mov	_P3,a
;	src/libs/lcd.c:118: RS_P3 = LOW;
;	assignBit
	clr	_RS_P3
;	src/libs/lcd.c:119: RW_P3 = LOW;
;	assignBit
	clr	_RW_P3
;	src/libs/lcd.c:120: EN_P3 = HIGH;
;	assignBit
	setb	_EN_P3
;	src/libs/lcd.c:121: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:122: EN_P3 = LOW;
;	assignBit
	clr	_EN_P3
;	src/libs/lcd.c:123: break;
;	src/libs/lcd.c:124: default:
	sjmp	00112$
00111$:
;	src/libs/lcd.c:125: return -1;
	mov	dptr,#0xffff
;	src/libs/lcd.c:126: }
	ret
00112$:
;	src/libs/lcd.c:132: DELAY_us(10000);
	mov	dptr,#0x2710
	lcall	_DELAY_us
;	src/libs/lcd.c:133: return 0;
	mov	dptr,#0x0000
;	src/libs/lcd.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCDDataWrite'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	src/libs/lcd.c:136: int LCDDataWrite(char data){
;	-----------------------------------------
;	 function LCDDataWrite
;	-----------------------------------------
_LCDDataWrite:
	mov	r7,dpl
;	src/libs/lcd.c:139: switch (__config.LCDDatabusType)
	mov	a,(___config + 0x0002)
	mov	r6,a
	add	a,#0xff - 0x03
	jnc	00123$
	ljmp	00105$
00123$:
	mov	a,r6
	add	a,r6
;	src/libs/lcd.c:141: case DATABUS_P0:
	mov	dptr,#00124$
	jmp	@a+dptr
00124$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	src/libs/lcd.c:142: LcdDatabus_P0 = (data & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P0,a
;	src/libs/lcd.c:143: RS_P0 = HIGH;
;	assignBit
	setb	_RS_P0
;	src/libs/lcd.c:144: RW_P0 = LOW;
;	assignBit
	clr	_RW_P0
;	src/libs/lcd.c:145: EN_P0 = HIGH;
;	assignBit
	setb	_EN_P0
;	src/libs/lcd.c:146: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:147: EN_P0 = LOW;
;	assignBit
	clr	_EN_P0
;	src/libs/lcd.c:148: break;
;	src/libs/lcd.c:150: case DATABUS_P1:
	sjmp	00106$
00102$:
;	src/libs/lcd.c:151: LcdDatabus_P1 = (data & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P1,a
;	src/libs/lcd.c:152: RS_P1 = HIGH;
;	assignBit
	setb	_RS_P1
;	src/libs/lcd.c:153: RW_P1 = LOW;
;	assignBit
	clr	_RW_P1
;	src/libs/lcd.c:154: EN_P1 = HIGH;
;	assignBit
	setb	_EN_P1
;	src/libs/lcd.c:155: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:156: EN_P1 = LOW;
;	assignBit
	clr	_EN_P1
;	src/libs/lcd.c:157: break;
;	src/libs/lcd.c:159: case DATABUS_P2:
	sjmp	00106$
00103$:
;	src/libs/lcd.c:160: LcdDatabus_P2 = (data & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P2,a
;	src/libs/lcd.c:161: RS_P2 = HIGH;
;	assignBit
	setb	_RS_P2
;	src/libs/lcd.c:162: RW_P2 = LOW;
;	assignBit
	clr	_RW_P2
;	src/libs/lcd.c:163: EN_P2 = HIGH;
;	assignBit
	setb	_EN_P2
;	src/libs/lcd.c:164: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:165: EN_P2 = LOW;
;	assignBit
	clr	_EN_P2
;	src/libs/lcd.c:166: break;
;	src/libs/lcd.c:168: case DATABUS_P3:
	sjmp	00106$
00104$:
;	src/libs/lcd.c:169: LcdDatabus_P3 = (data & 0xF0);
	mov	a,#0xf0
	anl	a,r7
	mov	_P3,a
;	src/libs/lcd.c:170: RS_P3 = HIGH;
;	assignBit
	setb	_RS_P3
;	src/libs/lcd.c:171: RW_P3 = LOW;
;	assignBit
	clr	_RW_P3
;	src/libs/lcd.c:172: EN_P3 = HIGH;
;	assignBit
	setb	_EN_P3
;	src/libs/lcd.c:173: DELAY_us(1000);
	mov	dptr,#0x03e8
	push	ar7
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:174: EN_P3 = LOW;
;	assignBit
	clr	_EN_P3
;	src/libs/lcd.c:175: break;
;	src/libs/lcd.c:177: default:
	sjmp	00106$
00105$:
;	src/libs/lcd.c:178: return -1;
	mov	dptr,#0xffff
	ret
;	src/libs/lcd.c:179: }
00106$:
;	src/libs/lcd.c:182: DELAY_us(10000);
	mov	dptr,#0x2710
	push	ar7
	lcall	_DELAY_us
	pop	ar7
;	src/libs/lcd.c:184: switch (__config.LCDDatabusType)
	mov	a,(___config + 0x0002)
	mov	r6,a
	add	a,#0xff - 0x03
	jnc	00125$
	ljmp	00111$
00125$:
	mov	a,r6
	add	a,r6
;	src/libs/lcd.c:186: case DATABUS_P0:
	mov	dptr,#00126$
	jmp	@a+dptr
00126$:
	sjmp	00107$
	sjmp	00108$
	sjmp	00109$
	sjmp	00110$
00107$:
;	src/libs/lcd.c:187: LcdDatabus_P0 = ((data<<4) & 0xF0);
	mov	ar6,r7
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	a,#0xf0
	anl	a,r6
	mov	_P0,a
;	src/libs/lcd.c:188: RS_P0 = HIGH;
;	assignBit
	setb	_RS_P0
;	src/libs/lcd.c:189: RW_P0 = LOW;
;	assignBit
	clr	_RW_P0
;	src/libs/lcd.c:190: EN_P0 = HIGH;
;	assignBit
	setb	_EN_P0
;	src/libs/lcd.c:191: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:192: EN_P0 = LOW;
;	assignBit
	clr	_EN_P0
;	src/libs/lcd.c:193: break;
;	src/libs/lcd.c:194: case DATABUS_P1:
	sjmp	00112$
00108$:
;	src/libs/lcd.c:195: LcdDatabus_P1 = ((data<<4) & 0xF0);
	mov	ar6,r7
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	a,#0xf0
	anl	a,r6
	mov	_P1,a
;	src/libs/lcd.c:196: RS_P1 = HIGH;
;	assignBit
	setb	_RS_P1
;	src/libs/lcd.c:197: RW_P1 = LOW;
;	assignBit
	clr	_RW_P1
;	src/libs/lcd.c:198: EN_P1 = HIGH;
;	assignBit
	setb	_EN_P1
;	src/libs/lcd.c:199: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:200: EN_P1 = LOW;
;	assignBit
	clr	_EN_P1
;	src/libs/lcd.c:201: break;
;	src/libs/lcd.c:202: case DATABUS_P2:
	sjmp	00112$
00109$:
;	src/libs/lcd.c:203: LcdDatabus_P2 = ((data<<4) & 0xF0);
	mov	ar6,r7
	mov	a,r6
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	a,#0xf0
	anl	a,r6
	mov	_P2,a
;	src/libs/lcd.c:204: RS_P2 = HIGH;
;	assignBit
	setb	_RS_P2
;	src/libs/lcd.c:205: RW_P2 = LOW;
;	assignBit
	clr	_RW_P2
;	src/libs/lcd.c:206: EN_P2 = HIGH;
;	assignBit
	setb	_EN_P2
;	src/libs/lcd.c:207: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:208: EN_P2 = LOW;
;	assignBit
	clr	_EN_P2
;	src/libs/lcd.c:209: break;
;	src/libs/lcd.c:210: case DATABUS_P3:
	sjmp	00112$
00110$:
;	src/libs/lcd.c:211: LcdDatabus_P3 = ((data<<4) & 0xF0);
	mov	a,r7
	swap	a
	anl	a,#0xf0
	mov	r7,a
	mov	a,#0xf0
	anl	a,r7
	mov	_P3,a
;	src/libs/lcd.c:212: RS_P3 = HIGH;
;	assignBit
	setb	_RS_P3
;	src/libs/lcd.c:213: RW_P3 = LOW;
;	assignBit
	clr	_RW_P3
;	src/libs/lcd.c:214: EN_P3 = HIGH;
;	assignBit
	setb	_EN_P3
;	src/libs/lcd.c:215: DELAY_us(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_us
;	src/libs/lcd.c:216: EN_P3 = LOW;
;	assignBit
	clr	_EN_P3
;	src/libs/lcd.c:217: break;
;	src/libs/lcd.c:218: default:
	sjmp	00112$
00111$:
;	src/libs/lcd.c:219: return -1;
	mov	dptr,#0xffff
;	src/libs/lcd.c:220: }
	ret
00112$:
;	src/libs/lcd.c:224: DELAY_us(10000);
	mov	dptr,#0x2710
	lcall	_DELAY_us
;	src/libs/lcd.c:225: return 0;
	mov	dptr,#0x0000
;	src/libs/lcd.c:226: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printString'
;------------------------------------------------------------
;string                    Allocated with name '_printString_PARM_2'
;line                      Allocated to registers r7 
;------------------------------------------------------------
;	src/libs/lcd.c:228: void printString(uint8_t line, char* string){
;	-----------------------------------------
;	 function printString
;	-----------------------------------------
_printString:
;	src/libs/lcd.c:229: if (line == FIRST_LINE){
	mov	a,dpl
	mov	r7,a
	jnz	00110$
;	src/libs/lcd.c:230: LCDCmdWrite(CURSOR_TO_FIRST_LINE);
	mov	dpl,#0x80
	lcall	_LCDCmdWrite
	sjmp	00122$
00110$:
;	src/libs/lcd.c:232: else if (line == SECOND_LINE){
	cjne	r7,#0x01,00107$
;	src/libs/lcd.c:233: LCDCmdWrite(CURSOR_TO_SECOND_LINE);
	mov	dpl,#0xc0
	lcall	_LCDCmdWrite
	sjmp	00122$
00107$:
;	src/libs/lcd.c:235: else if (line == THIRD_LINE){
	cjne	r7,#0x02,00104$
;	src/libs/lcd.c:236: LCDCmdWrite(CURSOR_TO_THIRD_LINE);
	mov	dpl,#0x90
	lcall	_LCDCmdWrite
	sjmp	00122$
00104$:
;	src/libs/lcd.c:238: else if (line == FORTH_LINE){
	cjne	r7,#0x03,00122$
;	src/libs/lcd.c:239: LCDCmdWrite(CURSOR_TO_FORTH_LINE);
	mov	dpl,#0xd0
	lcall	_LCDCmdWrite
;	src/libs/lcd.c:242: while(*string){
00122$:
	mov	r5,_printString_PARM_2
	mov	r6,(_printString_PARM_2 + 1)
	mov	r7,(_printString_PARM_2 + 2)
00112$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00115$
;	src/libs/lcd.c:243: LCDDataWrite(*string++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00150$
	inc	r6
00150$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCDDataWrite
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00112$
00115$:
;	src/libs/lcd.c:245: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
