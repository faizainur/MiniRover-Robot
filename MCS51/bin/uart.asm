;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.9.0 #11195 (Linux)
;--------------------------------------------------------
	.module uart
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _serial_begin
	.globl _rx_char
	.globl _tx_char
	.globl _tx_string
	.globl _rx_string
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'serial_begin'
;------------------------------------------------------------
;baudrate                  Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	src/libs/uart.c:3: void serial_begin(uint32_t baudrate){
;	-----------------------------------------
;	 function serial_begin
;	-----------------------------------------
_serial_begin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	src/libs/uart.c:4: TMOD |= 0x20;
	orl	_TMOD,#0x20
;	src/libs/uart.c:5: SCON = 0x50;
	mov	_SCON,#0x50
;	src/libs/uart.c:6: TR1 = 1;
;	assignBit
	setb	_TR1
;	src/libs/uart.c:7: if (baudrate == 9600){
	cjne	r4,#0x80,00108$
	cjne	r5,#0x25,00108$
	cjne	r6,#0x00,00108$
	cjne	r7,#0x00,00108$
;	src/libs/uart.c:8: TH1 = GET_TH1_VAL_9600;
	mov	_TH1,#0xfd
	ret
00108$:
;	src/libs/uart.c:9: } else if (baudrate == 4800){
	cjne	r4,#0xc0,00105$
	cjne	r5,#0x12,00105$
	cjne	r6,#0x00,00105$
	cjne	r7,#0x00,00105$
;	src/libs/uart.c:10: TH1 = GET_TH1_VAL_4800;
	mov	_TH1,#0xfa
	ret
00105$:
;	src/libs/uart.c:11: } else if (baudrate == 2400){
	cjne	r4,#0x60,00102$
	cjne	r5,#0x09,00102$
	cjne	r6,#0x00,00102$
	cjne	r7,#0x00,00102$
;	src/libs/uart.c:12: TH1 = GET_TH1_VAL_2400;
	mov	_TH1,#0xf4
	ret
00102$:
;	src/libs/uart.c:14: TH1 = GET_TH1_VAL_1200;
	mov	_TH1,#0xe8
;	src/libs/uart.c:16: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rx_char'
;------------------------------------------------------------
;rx                        Allocated to registers 
;------------------------------------------------------------
;	src/libs/uart.c:18: char rx_char(){
;	-----------------------------------------
;	 function rx_char
;	-----------------------------------------
_rx_char:
;	src/libs/uart.c:20: while(RI == 0);
00101$:
	jnb	_RI,00101$
;	src/libs/uart.c:21: rx = SBUF;
	mov	dpl,_SBUF
;	src/libs/uart.c:22: RI = 0;
;	assignBit
	clr	_RI
;	src/libs/uart.c:24: return rx;
;	src/libs/uart.c:25: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tx_char'
;------------------------------------------------------------
;data                      Allocated to registers 
;------------------------------------------------------------
;	src/libs/uart.c:27: void tx_char(char data){
;	-----------------------------------------
;	 function tx_char
;	-----------------------------------------
_tx_char:
	mov	_SBUF,dpl
;	src/libs/uart.c:29: while(TI == 0);
00101$:
;	src/libs/uart.c:30: TI = 0;
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	src/libs/uart.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tx_string'
;------------------------------------------------------------
;data                      Allocated to registers 
;------------------------------------------------------------
;	src/libs/uart.c:33: void tx_string(char *data){
;	-----------------------------------------
;	 function tx_string
;	-----------------------------------------
_tx_string:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/libs/uart.c:34: while(*data){
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	src/libs/uart.c:35: tx_char(*data++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_tx_char
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	src/libs/uart.c:37: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'rx_string'
;------------------------------------------------------------
;data                      Allocated to registers r5 r6 r7 
;ch                        Allocated to registers r3 
;len                       Allocated to registers r4 
;------------------------------------------------------------
;	src/libs/uart.c:39: uint8_t rx_string(char *data){
;	-----------------------------------------
;	 function rx_string
;	-----------------------------------------
_rx_string:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/libs/uart.c:42: uint8_t len = 0;
	mov	r4,#0x00
;	src/libs/uart.c:43: while(1)
00111$:
;	src/libs/uart.c:45: ch=rx_char();    //Receive a char
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_rx_char
;	src/libs/uart.c:46: tx_char(ch);     //Echo back the received char
	mov  r3,dpl
	push	ar3
	lcall	_tx_char
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/libs/uart.c:47: if((ch == '\r') || (ch == '\n') || (ch=='\0')) //read till enter key is pressed
	cjne	r3,#0x0d,00135$
	sjmp	00105$
00135$:
	cjne	r3,#0x0a,00136$
	sjmp	00105$
00136$:
	mov	a,r3
	jnz	00106$
00105$:
;	src/libs/uart.c:49: data[len]=0;           //and break the loop
	mov	a,r4
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	clr	a
	lcall	__gptrput
;	src/libs/uart.c:50: break;                  
	sjmp	00112$
00106$:
;	src/libs/uart.c:52: else if((ch=='\b') && (len!=0))
	cjne	r3,#0x08,00102$
	mov	a,r4
	jz	00102$
;	src/libs/uart.c:54: len--;    //If backspace is pressed then decrement the index to remove the old char
	dec	r4
	sjmp	00111$
00102$:
;	src/libs/uart.c:58: data[len]=ch; //copy the char into string and increment the index
	mov	a,r4
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__gptrput
;	src/libs/uart.c:59: len++;
	inc	r4
	sjmp	00111$
00112$:
;	src/libs/uart.c:63: return len;
	mov	dpl,r4
;	src/libs/uart.c:64: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
