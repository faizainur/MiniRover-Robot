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
	.globl _P_NC
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
	.globl _UART_TxNumber_PARM_3
	.globl _UART_TxNumber_PARM_2
	.globl _UART_Init
	.globl _UART_SetBaudRate
	.globl _UART_RxChar
	.globl _UART_TxChar
	.globl _UART_TxString
	.globl _UART_RxString
	.globl _UART_TxNumber
	.globl _UART_Printf
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
_P_NC	=	0x00ff
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
_UART_TxNumber_PARM_2:
	.ds 4
_UART_TxNumber_PARM_3:
	.ds 1
_UART_TxNumber_v_numericSystem_u8_65536_28:
	.ds 1
_UART_TxNumber_i_65536_29:
	.ds 1
_UART_TxNumber_a_65536_29:
	.ds 10
_UART_TxNumber_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
;Allocation info for local variables in function 'UART_Init'
;------------------------------------------------------------
;v_baudRate_u32            Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	src/libs/uart.c:54: void UART_Init(uint32_t v_baudRate_u32)
;	-----------------------------------------
;	 function UART_Init
;	-----------------------------------------
_UART_Init:
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
;	src/libs/uart.c:56: TMOD |= 0x20; //Timer1 in Mode2.
	orl	_TMOD,#0x20
;	src/libs/uart.c:57: SCON=0x50;    // Asynchronous mode, 8-bit data and 1-stop bit
	mov	_SCON,#0x50
;	src/libs/uart.c:58: TR1=1;        //Turn ON the timer for Baud rate generation
;	assignBit
	setb	_TR1
;	src/libs/uart.c:59: UART_SetBaudRate(v_baudRate_u32);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	src/libs/uart.c:60: }
	ljmp	_UART_SetBaudRate
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_SetBaudRate'
;------------------------------------------------------------
;v_baudRate_u32            Allocated to registers r4 r5 r6 r7 
;RegValue                  Allocated to registers r7 
;------------------------------------------------------------
;	src/libs/uart.c:79: void UART_SetBaudRate(uint32_t v_baudRate_u32)
;	-----------------------------------------
;	 function UART_SetBaudRate
;	-----------------------------------------
_UART_SetBaudRate:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	src/libs/uart.c:83: if((v_baudRate_u32 >= C_MinBaudRate_U32) && (v_baudRate_u32<=C_MaxBaudRate_U32))
	clr	c
	mov	a,r4
	subb	a,#0x60
	mov	a,r5
	subb	a,#0x09
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00102$
	clr	a
	subb	a,r4
	mov	a,#0xc2
	subb	a,r5
	mov	a,#0x01
	subb	a,r6
	clr	a
	subb	a,r7
	jc	00102$
;	src/libs/uart.c:87: RegValue = M_GetBaudRateGeneratorValue(v_baudRate_u32);
	mov	__mullong_PARM_2,r4
	mov	(__mullong_PARM_2 + 1),r5
	mov	(__mullong_PARM_2 + 2),r6
	mov	(__mullong_PARM_2 + 3),r7
	mov	dptr,#0x0180
	clr	a
	mov	b,a
	lcall	__mullong
	mov	__divulong_PARM_2,dpl
	mov	(__divulong_PARM_2 + 1),dph
	mov	(__divulong_PARM_2 + 2),b
	mov	(__divulong_PARM_2 + 3),a
	mov	dptr,#0xc000
	mov	b,#0xa8
	clr	a
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	clr	c
	clr	a
	subb	a,r4
	mov	r7,a
	sjmp	00103$
00102$:
;	src/libs/uart.c:92: RegValue = M_GetBaudRateGeneratorValue(9600);
	mov	r7,#0x5d
00103$:
;	src/libs/uart.c:95: TH1 = RegValue; 
	mov	_TH1,r7
;	src/libs/uart.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_RxChar'
;------------------------------------------------------------
;	src/libs/uart.c:111: char UART_RxChar(void)
;	-----------------------------------------
;	 function UART_RxChar
;	-----------------------------------------
_UART_RxChar:
;	src/libs/uart.c:113: while(RI==0);      // Wait till the data is received
00101$:
;	src/libs/uart.c:114: RI=0;             // Clear Receive Interrupt Flag for next cycle
;	assignBit
	jbc	_RI,00114$
	sjmp	00101$
00114$:
;	src/libs/uart.c:116: return(SBUF);      // return the received char
	mov	dpl,_SBUF
;	src/libs/uart.c:117: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_TxChar'
;------------------------------------------------------------
;v_uartData_u8             Allocated to registers 
;------------------------------------------------------------
;	src/libs/uart.c:134: void UART_TxChar(char v_uartData_u8)
;	-----------------------------------------
;	 function UART_TxChar
;	-----------------------------------------
_UART_TxChar:
	mov	_SBUF,dpl
;	src/libs/uart.c:137: while(TI==0);       // Wait till the data is trasmitted
00101$:
;	src/libs/uart.c:138: TI=0;                //Clear the Tx flag for next cycle.
;	assignBit
	jbc	_TI,00114$
	sjmp	00101$
00114$:
;	src/libs/uart.c:139: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_TxString'
;------------------------------------------------------------
;ptr_string                Allocated to registers 
;------------------------------------------------------------
;	src/libs/uart.c:158: void UART_TxString(char *ptr_string)
;	-----------------------------------------
;	 function UART_TxString
;	-----------------------------------------
_UART_TxString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/libs/uart.c:160: while(*ptr_string)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	src/libs/uart.c:161: UART_TxChar(*ptr_string++);// Loop through the string and transmit char by char
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00116$
	inc	r6
00116$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_UART_TxChar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	src/libs/uart.c:162: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_RxString'
;------------------------------------------------------------
;ptr_string                Allocated to registers r5 r6 r7 
;ch                        Allocated to registers r3 
;len                       Allocated to registers r4 
;------------------------------------------------------------
;	src/libs/uart.c:187: uint8_t UART_RxString(char *ptr_string)
;	-----------------------------------------
;	 function UART_RxString
;	-----------------------------------------
_UART_RxString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	src/libs/uart.c:190: uint8_t len = 0;
	mov	r4,#0x00
;	src/libs/uart.c:191: while(1)
00110$:
;	src/libs/uart.c:193: ch=UART_RxChar();    //Receive a char
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_UART_RxChar
;	src/libs/uart.c:194: UART_TxChar(ch);     //Echo back the received char
	mov  r3,dpl
	push	ar3
	lcall	_UART_TxChar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	src/libs/uart.c:196: if((ch=='\r') || (ch=='\n')) //read till enter key is pressed
	cjne	r3,#0x0d,00130$
	sjmp	00105$
00130$:
	cjne	r3,#0x0a,00106$
00105$:
;	src/libs/uart.c:198: ptr_string[len]=0;           //and break the loop
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
;	src/libs/uart.c:199: break;                  
	sjmp	00111$
00106$:
;	src/libs/uart.c:201: else if((ch=='\b') && (len!=0))
	cjne	r3,#0x08,00102$
	mov	a,r4
	jz	00102$
;	src/libs/uart.c:203: len--;    //If backspace is pressed then decrement the index to remove the old char
	dec	r4
	sjmp	00110$
00102$:
;	src/libs/uart.c:207: ptr_string[len]=ch; //copy the char into string and increment the index
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
;	src/libs/uart.c:208: len++;
	inc	r4
	sjmp	00110$
00111$:
;	src/libs/uart.c:211: return len;   
	mov	dpl,r4
;	src/libs/uart.c:212: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_TxNumber'
;------------------------------------------------------------
;v_number_u32              Allocated with name '_UART_TxNumber_PARM_2'
;v_numOfDigitsToTransmit_u8 Allocated with name '_UART_TxNumber_PARM_3'
;v_numericSystem_u8        Allocated with name '_UART_TxNumber_v_numericSystem_u8_65536_28'
;i                         Allocated with name '_UART_TxNumber_i_65536_29'
;a                         Allocated with name '_UART_TxNumber_a_65536_29'
;sloc0                     Allocated with name '_UART_TxNumber_sloc0_1_0'
;------------------------------------------------------------
;	src/libs/uart.c:249: void UART_TxNumber(uint8_t v_numericSystem_u8, uint32_t v_number_u32, uint8_t v_numOfDigitsToTransmit_u8)
;	-----------------------------------------
;	 function UART_TxNumber
;	-----------------------------------------
_UART_TxNumber:
	mov	_UART_TxNumber_v_numericSystem_u8_65536_28,dpl
;	src/libs/uart.c:253: if(C_BINARY_U8 == v_numericSystem_u8)
	mov	a,#0x02
	cjne	a,_UART_TxNumber_v_numericSystem_u8_65536_28,00120$
;	src/libs/uart.c:255: while(v_numOfDigitsToTransmit_u8!=0)
00101$:
	mov	a,_UART_TxNumber_PARM_3
	jnz	00194$
	ret
00194$:
;	src/libs/uart.c:259: i = util_GetBitStatus(v_number_u32,(v_numOfDigitsToTransmit_u8-1));
	mov	a,_UART_TxNumber_PARM_3
	dec	a
	mov	r6,a
	mov	b,r6
	inc	b
	mov	r4,#0x01
	mov	r5,#0x00
	sjmp	00196$
00195$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00196$:
	djnz	b,00195$
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	a,_UART_TxNumber_PARM_2
	anl	ar4,a
	mov	a,(_UART_TxNumber_PARM_2 + 1)
	anl	ar5,a
	mov	a,(_UART_TxNumber_PARM_2 + 2)
	anl	ar3,a
	mov	a,(_UART_TxNumber_PARM_2 + 3)
	anl	ar2,a
	mov	a,r4
	orl	a,r5
	orl	a,r3
	orl	a,r2
	cjne	a,#0x01,00197$
00197$:
;	src/libs/uart.c:260: UART_TxChar(util_Dec2Ascii(i));
	cpl	c
	clr	a
	rlc	a
	add	a,#0x30
	mov	dpl,a
	push	ar6
	lcall	_UART_TxChar
	pop	ar6
;	src/libs/uart.c:261: v_numOfDigitsToTransmit_u8--;
	mov	_UART_TxNumber_PARM_3,r6
	sjmp	00101$
00120$:
;	src/libs/uart.c:264: else if(v_number_u32==0)
	mov	a,_UART_TxNumber_PARM_2
	orl	a,(_UART_TxNumber_PARM_2 + 1)
	orl	a,(_UART_TxNumber_PARM_2 + 2)
	orl	a,(_UART_TxNumber_PARM_2 + 3)
;	src/libs/uart.c:267: for(i=0;((i<v_numOfDigitsToTransmit_u8) && (i<C_MaxDigitsToTransmit_U8)) ;i++)
	jnz	00143$
	mov	r6,a
00124$:
	clr	c
	mov	a,r6
	subb	a,_UART_TxNumber_PARM_3
	jc	00200$
	ret
00200$:
	cjne	r6,#0x0a,00201$
00201$:
	jc	00202$
	ret
00202$:
;	src/libs/uart.c:268: UART_TxChar('0');
	mov	dpl,#0x30
	push	ar6
	lcall	_UART_TxChar
	pop	ar6
;	src/libs/uart.c:267: for(i=0;((i<v_numOfDigitsToTransmit_u8) && (i<C_MaxDigitsToTransmit_U8)) ;i++)
	inc	r6
;	src/libs/uart.c:272: for(i=0;i<v_numOfDigitsToTransmit_u8;i++)
	sjmp	00124$
00143$:
	mov	a,#0xff
	cjne	a,_UART_TxNumber_PARM_3,00203$
	mov	a,#0x01
	sjmp	00204$
00203$:
	clr	a
00204$:
	mov	_UART_TxNumber_sloc0_1_0,a
	clr	c
	mov	a,#0x0a
	subb	a,_UART_TxNumber_PARM_3
	clr	a
	rlc	a
	mov	r5,a
	mov	_UART_TxNumber_i_65536_29,#0x00
00127$:
	clr	c
	mov	a,_UART_TxNumber_i_65536_29
	subb	a,_UART_TxNumber_PARM_3
	jnc	00146$
;	src/libs/uart.c:276: if(v_number_u32!=0)
	mov	a,_UART_TxNumber_PARM_2
	orl	a,(_UART_TxNumber_PARM_2 + 1)
	orl	a,(_UART_TxNumber_PARM_2 + 2)
	orl	a,(_UART_TxNumber_PARM_2 + 3)
	jz	00110$
;	src/libs/uart.c:284: a[i]=util_GetMod32(v_number_u32,v_numericSystem_u8);
	push	ar5
	mov	a,_UART_TxNumber_i_65536_29
	add	a,#_UART_TxNumber_a_65536_29
	mov	r1,a
	mov	__divulong_PARM_2,_UART_TxNumber_v_numericSystem_u8_65536_28
	mov	(__divulong_PARM_2 + 1),#0x00
	mov	(__divulong_PARM_2 + 2),#0x00
	mov	(__divulong_PARM_2 + 3),#0x00
	mov	dpl,_UART_TxNumber_PARM_2
	mov	dph,(_UART_TxNumber_PARM_2 + 1)
	mov	b,(_UART_TxNumber_PARM_2 + 2)
	mov	a,(_UART_TxNumber_PARM_2 + 3)
	push	ar5
	push	ar1
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r7,a
	pop	ar1
	pop	ar5
	mov	ar5,r2
	mov	b,_UART_TxNumber_v_numericSystem_u8_65536_28
	mov	a,r5
	mul	ab
	mov	r5,a
	mov	a,_UART_TxNumber_PARM_2
	mov	r6,a
	clr	c
	subb	a,r5
	mov	@r1,a
;	src/libs/uart.c:285: v_number_u32=v_number_u32/v_numericSystem_u8;
	mov	_UART_TxNumber_PARM_2,r2
	mov	(_UART_TxNumber_PARM_2 + 1),r3
	mov	(_UART_TxNumber_PARM_2 + 2),r4
	mov	(_UART_TxNumber_PARM_2 + 3),r7
	pop	ar5
	sjmp	00128$
00110$:
;	src/libs/uart.c:287: else if( (v_numOfDigitsToTransmit_u8 == C_DefaultDigitsToTransmit_U8) ||
	mov	a,_UART_TxNumber_sloc0_1_0
	jnz	00146$
;	src/libs/uart.c:288: (v_numOfDigitsToTransmit_u8 > C_MaxDigitsToTransmit_U8))
	mov	a,r5
	jnz	00146$
;	src/libs/uart.c:299: a[i]=0;
	mov	a,_UART_TxNumber_i_65536_29
	add	a,#_UART_TxNumber_a_65536_29
	mov	r0,a
	mov	@r0,#0x00
00128$:
;	src/libs/uart.c:272: for(i=0;i<v_numOfDigitsToTransmit_u8;i++)
	inc	_UART_TxNumber_i_65536_29
;	src/libs/uart.c:303: while(i)
	sjmp	00127$
00146$:
	mov	r7,_UART_TxNumber_i_65536_29
00113$:
	mov	a,r7
	jz	00129$
;	src/libs/uart.c:306: UART_TxChar(util_Hex2Ascii(a[i-1]));
	mov	ar6,r7
	mov	a,r6
	dec	a
	add	a,#_UART_TxNumber_a_65536_29
	mov	r1,a
	mov	a,@r1
	add	a,#0xff - 0x09
	jnc	00131$
	mov	a,r6
	dec	a
	add	a,#_UART_TxNumber_a_65536_29
	mov	r1,a
	mov	ar5,@r1
	mov	a,#0x37
	add	a,r5
	mov	r5,a
	sjmp	00132$
00131$:
	mov	a,r6
	dec	a
	add	a,#_UART_TxNumber_a_65536_29
	mov	r1,a
	mov	ar6,@r1
	mov	a,#0x30
	add	a,r6
	mov	r5,a
00132$:
	mov	dpl,r5
	push	ar7
	lcall	_UART_TxChar
	pop	ar7
;	src/libs/uart.c:307: i--;
	dec	r7
	sjmp	00113$
00129$:
;	src/libs/uart.c:312: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'UART_Printf'
;------------------------------------------------------------
;argList                   Allocated to stack - _bp -5
;ptr                       Allocated to stack - _bp +2
;argp                      Allocated to stack - _bp +5
;v_num_s16                 Allocated to registers r6 r7 
;v_num_s32                 Allocated to registers r4 r5 r6 r7 
;v_num_u16                 Allocated to registers r6 r7 
;v_num_u32                 Allocated to registers 
;str                       Allocated to registers r5 r6 r7 
;ch                        Allocated to registers r3 
;v_numOfDigitsToTransmit_u8 Allocated to stack - _bp +1
;------------------------------------------------------------
;	src/libs/uart.c:401: void UART_Printf(const char *argList, ...)
;	-----------------------------------------
;	 function UART_Printf
;	-----------------------------------------
_UART_Printf:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x05
	mov	sp,a
;	src/libs/uart.c:417: va_start(argp, argList);
	mov	a,_bp
	add	a,#0xfb
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
;	src/libs/uart.c:420: for(ptr = argList; *ptr != '\0'; ptr++)
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	r1,_bp
	inc	r1
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
	inc	r0
	inc	r1
	mov	a,@r0
	mov	@r1,a
00138$:
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
	jnz	00278$
	ljmp	00140$
00278$:
;	src/libs/uart.c:423: ch= *ptr;
;	src/libs/uart.c:424: if(ch == '%')         /*Check for '%' as there will be format specifier after it */
	cjne	r3,#0x25,00279$
	sjmp	00280$
00279$:
	ljmp	00134$
00280$:
;	src/libs/uart.c:426: ptr++;
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00281$
	inc	r0
	inc	@r0
00281$:
;	src/libs/uart.c:427: ch = *ptr;
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	__gptrget
	mov	r3,a
;	src/libs/uart.c:428: if((ch>=0x30) && (ch<=0x39))
	cjne	r3,#0x30,00282$
00282$:
	jc	00106$
	mov	a,r3
	add	a,#0xff - 0x39
	jc	00106$
;	src/libs/uart.c:430: v_numOfDigitsToTransmit_u8 = 0;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x00
;	src/libs/uart.c:431: while((ch>=0x30) && (ch<=0x39))
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
	inc	r0
	mov	ar6,@r0
00102$:
	cjne	r3,#0x30,00285$
00285$:
	jc	00169$
	mov	a,r3
	add	a,#0xff - 0x39
	jc	00169$
;	src/libs/uart.c:433: v_numOfDigitsToTransmit_u8 = (v_numOfDigitsToTransmit_u8 * 10) + (ch-0x30);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	mov	b,#0x0a
	mul	ab
	mov	r5,a
	mov	ar4,r3
	mov	a,r4
	add	a,#0xd0
	add	a,r5
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
;	src/libs/uart.c:434: ptr++;
	inc	r2
	cjne	r2,#0x00,00288$
	inc	r7
00288$:
;	src/libs/uart.c:435: ch = *ptr;
	mov	dpl,r2
	mov	dph,r7
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	sjmp	00102$
00106$:
;	src/libs/uart.c:440: v_numOfDigitsToTransmit_u8 = C_MaxDigitsToTransmitUsingPrintf_U8;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0xff
;	src/libs/uart.c:539: va_end(argp);
;	src/libs/uart.c:440: v_numOfDigitsToTransmit_u8 = C_MaxDigitsToTransmitUsingPrintf_U8;
	sjmp	00107$
00169$:
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar7
	inc	r0
	mov	@r0,ar6
00107$:
;	src/libs/uart.c:444: switch(ch)       /* Decode the type of the argument */
	cjne	r3,#0x25,00289$
	ljmp	00131$
00289$:
	cjne	r3,#0x42,00290$
	ljmp	00124$
00290$:
	cjne	r3,#0x43,00291$
	sjmp	00110$
00291$:
	cjne	r3,#0x44,00292$
	ljmp	00114$
00292$:
	cjne	r3,#0x46,00293$
	ljmp	00139$
00293$:
	cjne	r3,#0x53,00294$
	ljmp	00130$
00294$:
	cjne	r3,#0x55,00295$
	ljmp	00118$
00295$:
	cjne	r3,#0x58,00296$
	ljmp	00120$
00296$:
	cjne	r3,#0x62,00297$
	ljmp	00121$
00297$:
	cjne	r3,#0x63,00298$
	sjmp	00110$
00298$:
	cjne	r3,#0x64,00299$
	sjmp	00111$
00299$:
	cjne	r3,#0x66,00300$
	ljmp	00139$
00300$:
	cjne	r3,#0x73,00301$
	ljmp	00130$
00301$:
	cjne	r3,#0x75,00302$
	ljmp	00117$
00302$:
	cjne	r3,#0x78,00303$
	ljmp	00119$
00303$:
	ljmp	00139$
;	src/libs/uart.c:447: case 'c':     /* Argument type is of char, hence read char data from the argp */
00110$:
;	src/libs/uart.c:448: ch = va_arg(argp, uint8_t);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	dec	a
	mov	r1,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar1
	mov	ar7,@r1
;	src/libs/uart.c:449: UART_TxChar(ch);
	mov	dpl,r7
	lcall	_UART_TxChar
;	src/libs/uart.c:450: break;
	ljmp	00139$
;	src/libs/uart.c:452: case 'd':    /* Argument type is of signed integer, hence read 16bit data from the argp */
00111$:
;	src/libs/uart.c:453: v_num_s16 = va_arg(argp, sint16_t);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0xfe
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	mov	ar1,r7
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
;	src/libs/uart.c:454: if(v_num_s16<0)
	mov	a,r7
	jnb	acc.7,00113$
;	src/libs/uart.c:456: v_num_s16 = -v_num_s16;
	clr	c
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
;	src/libs/uart.c:457: UART_TxChar('-');
	mov	dpl,#0x2d
	push	ar7
	push	ar6
	lcall	_UART_TxChar
	pop	ar6
	pop	ar7
00113$:
;	src/libs/uart.c:459: UART_TxNumber(C_DECIMAL_U8,v_num_s16,v_numOfDigitsToTransmit_u8);
	mov	_UART_TxNumber_PARM_2,r6
	mov	a,r7
	mov	(_UART_TxNumber_PARM_2 + 1),a
	rlc	a
	subb	a,acc
	mov	(_UART_TxNumber_PARM_2 + 2),a
	mov	(_UART_TxNumber_PARM_2 + 3),a
	mov	r0,_bp
	inc	r0
	mov	_UART_TxNumber_PARM_3,@r0
	mov	dpl,#0x0a
	lcall	_UART_TxNumber
;	src/libs/uart.c:460: break;
	ljmp	00139$
;	src/libs/uart.c:462: case 'D':    /* Argument type is of integer, hence read 16bit data from the argp */
00114$:
;	src/libs/uart.c:463: v_num_s32 = va_arg(argp, sint32_t);                
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0xfc
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	mov	ar1,r7
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
;	src/libs/uart.c:464: if(v_num_s32<0)
	mov	a,r7
	jnb	acc.7,00116$
;	src/libs/uart.c:466: v_num_s32 = -v_num_s32;
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
;	src/libs/uart.c:467: UART_TxChar('-');
	mov	dpl,#0x2d
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_UART_TxChar
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
00116$:
;	src/libs/uart.c:469: UART_TxNumber(C_DECIMAL_U8,v_num_s32,v_numOfDigitsToTransmit_u8);            
	mov	_UART_TxNumber_PARM_2,r4
	mov	(_UART_TxNumber_PARM_2 + 1),r5
	mov	(_UART_TxNumber_PARM_2 + 2),r6
	mov	(_UART_TxNumber_PARM_2 + 3),r7
	mov	r0,_bp
	inc	r0
	mov	_UART_TxNumber_PARM_3,@r0
	mov	dpl,#0x0a
	lcall	_UART_TxNumber
;	src/libs/uart.c:470: break;    
	ljmp	00139$
;	src/libs/uart.c:472: case 'u':    /* Argument type is of unsigned integer, hence read 16bit unsigned data */
00117$:
;	src/libs/uart.c:473: v_num_u16 = va_arg(argp, uint16_t);            
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0xfe
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	mov	ar1,r7
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
;	src/libs/uart.c:474: UART_TxNumber(C_DECIMAL_U8,v_num_u16,v_numOfDigitsToTransmit_u8);                
	mov	_UART_TxNumber_PARM_2,r6
	mov	(_UART_TxNumber_PARM_2 + 1),r7
	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
	mov	r0,_bp
	inc	r0
	mov	_UART_TxNumber_PARM_3,@r0
	mov	dpl,#0x0a
	lcall	_UART_TxNumber
;	src/libs/uart.c:475: break;
	ljmp	00139$
;	src/libs/uart.c:477: case 'U':    /* Argument type is of integer, hence read 32bit unsigend data */
00118$:
;	src/libs/uart.c:478: v_num_u32 = va_arg(argp, uint32_t);            
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0xfc
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	mov	ar1,r7
	mov	_UART_TxNumber_PARM_2,@r1
	inc	r1
	mov	(_UART_TxNumber_PARM_2 + 1),@r1
	inc	r1
	mov	(_UART_TxNumber_PARM_2 + 2),@r1
	inc	r1
	mov	(_UART_TxNumber_PARM_2 + 3),@r1
	dec	r1
	dec	r1
	dec	r1
;	src/libs/uart.c:479: UART_TxNumber(C_DECIMAL_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
	mov	r0,_bp
	inc	r0
	mov	_UART_TxNumber_PARM_3,@r0
	mov	dpl,#0x0a
	lcall	_UART_TxNumber
;	src/libs/uart.c:480: break;            
	ljmp	00139$
;	src/libs/uart.c:482: case 'x':  /* Argument type is of hex, hence hexadecimal data from the argp */
00119$:
;	src/libs/uart.c:483: v_num_u16 = va_arg(argp, uint16_t);                
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0xfe
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	mov	ar1,r7
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
;	src/libs/uart.c:484: UART_TxNumber(C_HEX_U8,v_num_u16,v_numOfDigitsToTransmit_u8);            
	mov	_UART_TxNumber_PARM_2,r6
	mov	(_UART_TxNumber_PARM_2 + 1),r7
	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
	mov	r0,_bp
	inc	r0
	mov	_UART_TxNumber_PARM_3,@r0
	mov	dpl,#0x10
	lcall	_UART_TxNumber
;	src/libs/uart.c:485: break;
	ljmp	00139$
;	src/libs/uart.c:487: case 'X':  /* Argument type is of hex, hence hexadecimal data from the argp */
00120$:
;	src/libs/uart.c:488: v_num_u32 = va_arg(argp, uint32_t);                        
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0xfc
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	mov	ar1,r7
	mov	_UART_TxNumber_PARM_2,@r1
	inc	r1
	mov	(_UART_TxNumber_PARM_2 + 1),@r1
	inc	r1
	mov	(_UART_TxNumber_PARM_2 + 2),@r1
	inc	r1
	mov	(_UART_TxNumber_PARM_2 + 3),@r1
	dec	r1
	dec	r1
	dec	r1
;	src/libs/uart.c:489: UART_TxNumber(C_HEX_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
	mov	r0,_bp
	inc	r0
	mov	_UART_TxNumber_PARM_3,@r0
	mov	dpl,#0x10
	lcall	_UART_TxNumber
;	src/libs/uart.c:490: break;
	ljmp	00139$
;	src/libs/uart.c:493: case 'b':  /* Argument type is of binary,Read int and convert to binary */
00121$:
;	src/libs/uart.c:494: v_num_u16 = va_arg(argp, uint16_t);        
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0xfe
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	mov	ar1,r7
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
;	src/libs/uart.c:496: if(v_numOfDigitsToTransmit_u8 == C_MaxDigitsToTransmitUsingPrintf_U8)
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0xff,00123$
;	src/libs/uart.c:497: v_numOfDigitsToTransmit_u8 = 16;
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x10
00123$:
;	src/libs/uart.c:499: UART_TxNumber(C_BINARY_U8,v_num_u16,v_numOfDigitsToTransmit_u8);            
	mov	_UART_TxNumber_PARM_2,r6
	mov	(_UART_TxNumber_PARM_2 + 1),r7
	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
	mov	r0,_bp
	inc	r0
	mov	_UART_TxNumber_PARM_3,@r0
	mov	dpl,#0x02
	lcall	_UART_TxNumber
;	src/libs/uart.c:500: break;
;	src/libs/uart.c:502: case 'B':  /* Argument type is of binary,Read int and convert to binary */
	sjmp	00139$
00124$:
;	src/libs/uart.c:503: v_num_u32 = va_arg(argp, uint32_t);            
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0xfc
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	mov	ar1,r7
	mov	ar4,@r1
	inc	r1
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
	dec	r1
;	src/libs/uart.c:505: if(v_numOfDigitsToTransmit_u8 == C_MaxDigitsToTransmitUsingPrintf_U8)
	mov	r0,_bp
	inc	r0
	cjne	@r0,#0xff,00126$
;	src/libs/uart.c:506: v_numOfDigitsToTransmit_u8 = 32;        
	mov	r0,_bp
	inc	r0
	mov	@r0,#0x20
00126$:
;	src/libs/uart.c:508: UART_TxNumber(C_BINARY_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
	mov	_UART_TxNumber_PARM_2,r4
	mov	(_UART_TxNumber_PARM_2 + 1),r5
	mov	(_UART_TxNumber_PARM_2 + 2),r6
	mov	(_UART_TxNumber_PARM_2 + 3),r7
	mov	r0,_bp
	inc	r0
	mov	_UART_TxNumber_PARM_3,@r0
	mov	dpl,#0x02
	lcall	_UART_TxNumber
;	src/libs/uart.c:509: break;
;	src/libs/uart.c:522: case 's': /* Argument type is of string, hence get the pointer to sting passed */
	sjmp	00139$
00130$:
;	src/libs/uart.c:523: str = va_arg(argp, char *);
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	a,@r0
	add	a,#0xfd
	mov	r7,a
	mov	a,_bp
	add	a,#0x05
	mov	r0,a
	mov	@r0,ar7
	mov	ar1,r7
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	dec	r1
	dec	r1
;	src/libs/uart.c:524: UART_TxString(str);            
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_UART_TxString
;	src/libs/uart.c:525: break;
;	src/libs/uart.c:527: case '%':
	sjmp	00139$
00131$:
;	src/libs/uart.c:528: UART_TxChar('%');
	mov	dpl,#0x25
	lcall	_UART_TxChar
;	src/libs/uart.c:530: }
	sjmp	00139$
00134$:
;	src/libs/uart.c:535: UART_TxChar(ch);
	mov	dpl,r3
	lcall	_UART_TxChar
00139$:
;	src/libs/uart.c:420: for(ptr = argList; *ptr != '\0'; ptr++)
	mov	r0,_bp
	inc	r0
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00310$
	inc	r0
	inc	@r0
00310$:
	ljmp	00138$
;	src/libs/uart.c:539: va_end(argp);
00140$:
;	src/libs/uart.c:540: }
	mov	sp,_bp
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
