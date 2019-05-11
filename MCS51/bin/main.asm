;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _printString
	.globl _LCDInit
	.globl _LCDSetup
	.globl _LCDDataWrite
	.globl _LCDCmdWrite
	.globl _DELAY_ms
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
	.globl _LCDLineAddress
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
_main_a_65536_9:
	.ds 17
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	src/libs/lcd.h:75: uint16_t LCDLineAddress[] = {0x80, 0xC0, 0x90, 0xD0};
	mov	(_LCDLineAddress + 0),#0x80
	mov	(_LCDLineAddress + 1),#0x00
	mov	((_LCDLineAddress + 0x0002) + 0),#0xc0
	mov	((_LCDLineAddress + 0x0002) + 1),#0x00
	mov	((_LCDLineAddress + 0x0004) + 0),#0x90
	mov	((_LCDLineAddress + 0x0004) + 1),#0x00
	mov	((_LCDLineAddress + 0x0006) + 0),#0xd0
	mov	((_LCDLineAddress + 0x0006) + 1),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;a                         Allocated with name '_main_a_65536_9'
;------------------------------------------------------------
;	src/main.c:5: int main(){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/main.c:7: char i,a[]={"Faiz Ainur Rofiq"};
	mov	_main_a_65536_9,#0x46
	mov	(_main_a_65536_9 + 0x0001),#0x61
	mov	(_main_a_65536_9 + 0x0002),#0x69
	mov	(_main_a_65536_9 + 0x0003),#0x7a
	mov	(_main_a_65536_9 + 0x0004),#0x20
	mov	(_main_a_65536_9 + 0x0005),#0x41
	mov	(_main_a_65536_9 + 0x0006),#0x69
	mov	(_main_a_65536_9 + 0x0007),#0x6e
	mov	(_main_a_65536_9 + 0x0008),#0x75
	mov	(_main_a_65536_9 + 0x0009),#0x72
	mov	(_main_a_65536_9 + 0x000a),#0x20
	mov	(_main_a_65536_9 + 0x000b),#0x52
	mov	(_main_a_65536_9 + 0x000c),#0x6f
	mov	(_main_a_65536_9 + 0x000d),#0x66
	mov	(_main_a_65536_9 + 0x000e),#0x69
	mov	(_main_a_65536_9 + 0x000f),#0x71
	mov	(_main_a_65536_9 + 0x0010),#0x00
;	src/main.c:9: P0_0 = LOW;
;	assignBit
	clr	_P0_0
;	src/main.c:10: P2 = 0x00;
	mov	_P2,#0x00
;	src/main.c:14: LCDSetup(LCD_16x2, DATABUS_P2, BUS4);
	mov	_LCDSetup_PARM_2,#0x02
	mov	_LCDSetup_PARM_3,#0x01
	mov	dpl,#0x01
	lcall	_LCDSetup
;	src/main.c:15: LCDInit();
	lcall	_LCDInit
;	src/main.c:16: LCDCmdWrite(CURSOR_TO_FIRST_LINE);
	mov	dpl,#0x80
	lcall	_LCDCmdWrite
;	src/main.c:18: for(i=0;a[i]!=0;i++)
	mov	r7,#0x00
00106$:
	mov	a,r7
	add	a,#_main_a_65536_9
	mov	r1,a
	mov	a,@r1
	mov	r6,a
	jz	00101$
;	src/main.c:20: LCDDataWrite(a[i]);
	mov	dpl,r6
	push	ar7
	lcall	_LCDDataWrite
	pop	ar7
;	src/main.c:18: for(i=0;a[i]!=0;i++)
	inc	r7
	sjmp	00106$
00101$:
;	src/main.c:25: printString(SECOND_LINE, "Jurnal IT");
	mov	_printString_PARM_2,#___str_1
	mov	(_printString_PARM_2 + 1),#(___str_1 >> 8)
	mov	(_printString_PARM_2 + 2),#0x80
	mov	dpl,#0x01
	lcall	_printString
;	src/main.c:26: while (1){
00103$:
;	src/main.c:27: P0_0 = 0;
;	assignBit
	clr	_P0_0
;	src/main.c:28: DELAY_ms(500);
	mov	dptr,#0x01f4
	lcall	_DELAY_ms
;	src/main.c:29: P0_0 = 1;
;	assignBit
	setb	_P0_0
;	src/main.c:30: DELAY_ms(500);
	mov	dptr,#0x01f4
	lcall	_DELAY_ms
;	src/main.c:33: }
	sjmp	00103$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Jurnal IT"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
