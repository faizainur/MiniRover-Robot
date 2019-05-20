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
	.globl _rx_string
	.globl _serial_begin
	.globl _LCDPrintString
	.globl _LCDInit
	.globl _LCDCmdWrite
	.globl _DELAY_ms
	.globl _echoPin4
	.globl _echoPin3
	.globl _echoPin2
	.globl _echoPin1
	.globl _triggerPin
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
	.globl _initPortPin
	.globl _welcomeScreen
	.globl _toggleLed
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
_triggerPin	=	0x00b6
_echoPin1	=	0x00b2
_echoPin2	=	0x00b3
_echoPin3	=	0x00b4
_echoPin4	=	0x00b5
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_main_result_distance_65536_103:
	.ds 2
_main_buff_65537_104:
	.ds 16
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
;result_distance           Allocated with name '_main_result_distance_65536_103'
;buff                      Allocated with name '_main_buff_65537_104'
;------------------------------------------------------------
;	src/main.c:13: int main(){
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
;	src/main.c:17: initPortPin();
	lcall	_initPortPin
;	src/main.c:19: serial_begin(9600);
	mov	dptr,#0x2580
	clr	a
	mov	b,a
	lcall	_serial_begin
;	src/main.c:22: LCDInit();
	lcall	_LCDInit
;	src/main.c:23: LCDCmdWrite(CURSOR_TO_FIRST_LINE);
	mov	dpl,#0x80
	lcall	_LCDCmdWrite
;	src/main.c:25: welcomeScreen();
	lcall	_welcomeScreen
;	src/main.c:26: DELAY_ms(1000);
	mov	dptr,#0x03e8
	lcall	_DELAY_ms
;	src/main.c:27: LCDCmdWrite(CLEAR_SCREEN);
	mov	dpl,#0x01
	lcall	_LCDCmdWrite
;	src/main.c:28: LCDPrintString(FIRST_LINE, "Received : ");
	mov	_LCDPrintString_PARM_2,#___str_0
	mov	(_LCDPrintString_PARM_2 + 1),#(___str_0 >> 8)
	mov	(_LCDPrintString_PARM_2 + 2),#0x80
	mov	dpl,#0x00
	lcall	_LCDPrintString
;	src/main.c:31: while(1){
00105$:
;	src/main.c:36: rx_string(buff);
	mov	dptr,#_main_buff_65537_104
	mov	b,#0x40
	lcall	_rx_string
;	src/main.c:37: if (buff != NULL){
	mov	a,#_main_buff_65537_104
	jz	00102$
;	src/main.c:38: LCDPrintString(SECOND_LINE, buff);
	mov	_LCDPrintString_PARM_2,#_main_buff_65537_104
	mov	(_LCDPrintString_PARM_2 + 1),#0x00
	mov	(_LCDPrintString_PARM_2 + 2),#0x40
	mov	dpl,#0x01
	lcall	_LCDPrintString
;	src/main.c:39: P0_0 = 1;
;	assignBit
	setb	_P0_0
	sjmp	00105$
00102$:
;	src/main.c:41: P0_0 = 0;
;	assignBit
	clr	_P0_0
;	src/main.c:45: }
	sjmp	00105$
;------------------------------------------------------------
;Allocation info for local variables in function 'initPortPin'
;------------------------------------------------------------
;	src/main.c:47: void initPortPin(){
;	-----------------------------------------
;	 function initPortPin
;	-----------------------------------------
_initPortPin:
;	src/main.c:48: P0_0 = LOW;
;	assignBit
	clr	_P0_0
;	src/main.c:49: P2 = 0x00;
	mov	_P2,#0x00
;	src/main.c:50: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'welcomeScreen'
;------------------------------------------------------------
;	src/main.c:52: void welcomeScreen(){
;	-----------------------------------------
;	 function welcomeScreen
;	-----------------------------------------
_welcomeScreen:
;	src/main.c:53: LCDPrintString(FIRST_LINE, "Faiz Ainur Rofiq");
	mov	_LCDPrintString_PARM_2,#___str_1
	mov	(_LCDPrintString_PARM_2 + 1),#(___str_1 >> 8)
	mov	(_LCDPrintString_PARM_2 + 2),#0x80
	mov	dpl,#0x00
	lcall	_LCDPrintString
;	src/main.c:54: LCDPrintString(SECOND_LINE, "Jurnal IT");
	mov	_LCDPrintString_PARM_2,#___str_2
	mov	(_LCDPrintString_PARM_2 + 1),#(___str_2 >> 8)
	mov	(_LCDPrintString_PARM_2 + 2),#0x80
	mov	dpl,#0x01
;	src/main.c:55: }
	ljmp	_LCDPrintString
;------------------------------------------------------------
;Allocation info for local variables in function 'toggleLed'
;------------------------------------------------------------
;	src/main.c:57: void toggleLed(){
;	-----------------------------------------
;	 function toggleLed
;	-----------------------------------------
_toggleLed:
;	src/main.c:58: if (!P0_0){
	jb	_P0_0,00102$
;	src/main.c:59: P0_0 = 1;
;	assignBit
	setb	_P0_0
	ret
00102$:
;	src/main.c:61: P0_0 = 0;
;	assignBit
	clr	_P0_0
;	src/main.c:63: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Received : "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Faiz Ainur Rofiq"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Jurnal IT"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
