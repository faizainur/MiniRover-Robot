                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _P_NC
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _FL
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _A
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _UART_TxNumber_PARM_3
                                    110 	.globl _UART_TxNumber_PARM_2
                                    111 	.globl _UART_Init
                                    112 	.globl _UART_SetBaudRate
                                    113 	.globl _UART_RxChar
                                    114 	.globl _UART_TxChar
                                    115 	.globl _UART_TxString
                                    116 	.globl _UART_RxString
                                    117 	.globl _UART_TxNumber
                                    118 	.globl _UART_Printf
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 _P0	=	0x0080
                           000081   125 _SP	=	0x0081
                           000082   126 _DPL	=	0x0082
                           000083   127 _DPH	=	0x0083
                           000087   128 _PCON	=	0x0087
                           000088   129 _TCON	=	0x0088
                           000089   130 _TMOD	=	0x0089
                           00008A   131 _TL0	=	0x008a
                           00008B   132 _TL1	=	0x008b
                           00008C   133 _TH0	=	0x008c
                           00008D   134 _TH1	=	0x008d
                           000090   135 _P1	=	0x0090
                           000098   136 _SCON	=	0x0098
                           000099   137 _SBUF	=	0x0099
                           0000A0   138 _P2	=	0x00a0
                           0000A8   139 _IE	=	0x00a8
                           0000B0   140 _P3	=	0x00b0
                           0000B8   141 _IP	=	0x00b8
                           0000D0   142 _PSW	=	0x00d0
                           0000E0   143 _ACC	=	0x00e0
                           0000E0   144 _A	=	0x00e0
                           0000F0   145 _B	=	0x00f0
                                    146 ;--------------------------------------------------------
                                    147 ; special function bits
                                    148 ;--------------------------------------------------------
                                    149 	.area RSEG    (ABS,DATA)
      000000                        150 	.org 0x0000
                           000080   151 _P0_0	=	0x0080
                           000081   152 _P0_1	=	0x0081
                           000082   153 _P0_2	=	0x0082
                           000083   154 _P0_3	=	0x0083
                           000084   155 _P0_4	=	0x0084
                           000085   156 _P0_5	=	0x0085
                           000086   157 _P0_6	=	0x0086
                           000087   158 _P0_7	=	0x0087
                           000088   159 _IT0	=	0x0088
                           000089   160 _IE0	=	0x0089
                           00008A   161 _IT1	=	0x008a
                           00008B   162 _IE1	=	0x008b
                           00008C   163 _TR0	=	0x008c
                           00008D   164 _TF0	=	0x008d
                           00008E   165 _TR1	=	0x008e
                           00008F   166 _TF1	=	0x008f
                           000090   167 _P1_0	=	0x0090
                           000091   168 _P1_1	=	0x0091
                           000092   169 _P1_2	=	0x0092
                           000093   170 _P1_3	=	0x0093
                           000094   171 _P1_4	=	0x0094
                           000095   172 _P1_5	=	0x0095
                           000096   173 _P1_6	=	0x0096
                           000097   174 _P1_7	=	0x0097
                           000098   175 _RI	=	0x0098
                           000099   176 _TI	=	0x0099
                           00009A   177 _RB8	=	0x009a
                           00009B   178 _TB8	=	0x009b
                           00009C   179 _REN	=	0x009c
                           00009D   180 _SM2	=	0x009d
                           00009E   181 _SM1	=	0x009e
                           00009F   182 _SM0	=	0x009f
                           0000A0   183 _P2_0	=	0x00a0
                           0000A1   184 _P2_1	=	0x00a1
                           0000A2   185 _P2_2	=	0x00a2
                           0000A3   186 _P2_3	=	0x00a3
                           0000A4   187 _P2_4	=	0x00a4
                           0000A5   188 _P2_5	=	0x00a5
                           0000A6   189 _P2_6	=	0x00a6
                           0000A7   190 _P2_7	=	0x00a7
                           0000A8   191 _EX0	=	0x00a8
                           0000A9   192 _ET0	=	0x00a9
                           0000AA   193 _EX1	=	0x00aa
                           0000AB   194 _ET1	=	0x00ab
                           0000AC   195 _ES	=	0x00ac
                           0000AF   196 _EA	=	0x00af
                           0000B0   197 _P3_0	=	0x00b0
                           0000B1   198 _P3_1	=	0x00b1
                           0000B2   199 _P3_2	=	0x00b2
                           0000B3   200 _P3_3	=	0x00b3
                           0000B4   201 _P3_4	=	0x00b4
                           0000B5   202 _P3_5	=	0x00b5
                           0000B6   203 _P3_6	=	0x00b6
                           0000B7   204 _P3_7	=	0x00b7
                           0000B0   205 _RXD	=	0x00b0
                           0000B1   206 _TXD	=	0x00b1
                           0000B2   207 _INT0	=	0x00b2
                           0000B3   208 _INT1	=	0x00b3
                           0000B4   209 _T0	=	0x00b4
                           0000B5   210 _T1	=	0x00b5
                           0000B6   211 _WR	=	0x00b6
                           0000B7   212 _RD	=	0x00b7
                           0000B8   213 _PX0	=	0x00b8
                           0000B9   214 _PT0	=	0x00b9
                           0000BA   215 _PX1	=	0x00ba
                           0000BB   216 _PT1	=	0x00bb
                           0000BC   217 _PS	=	0x00bc
                           0000D0   218 _P	=	0x00d0
                           0000D1   219 _FL	=	0x00d1
                           0000D2   220 _OV	=	0x00d2
                           0000D3   221 _RS0	=	0x00d3
                           0000D4   222 _RS1	=	0x00d4
                           0000D5   223 _F0	=	0x00d5
                           0000D6   224 _AC	=	0x00d6
                           0000D7   225 _CY	=	0x00d7
                           0000FF   226 _P_NC	=	0x00ff
                                    227 ;--------------------------------------------------------
                                    228 ; overlayable register banks
                                    229 ;--------------------------------------------------------
                                    230 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        231 	.ds 8
                                    232 ;--------------------------------------------------------
                                    233 ; internal ram data
                                    234 ;--------------------------------------------------------
                                    235 	.area DSEG    (DATA)
      00002F                        236 _UART_TxNumber_PARM_2:
      00002F                        237 	.ds 4
      000033                        238 _UART_TxNumber_PARM_3:
      000033                        239 	.ds 1
      000034                        240 _UART_TxNumber_v_numericSystem_u8_65536_28:
      000034                        241 	.ds 1
      000035                        242 _UART_TxNumber_i_65536_29:
      000035                        243 	.ds 1
      000036                        244 _UART_TxNumber_a_65536_29:
      000036                        245 	.ds 10
      000040                        246 _UART_TxNumber_sloc0_1_0:
      000040                        247 	.ds 1
                                    248 ;--------------------------------------------------------
                                    249 ; overlayable items in internal ram 
                                    250 ;--------------------------------------------------------
                                    251 	.area	OSEG    (OVR,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; indirectly addressable internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area ISEG    (DATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute internal ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area IABS    (ABS,DATA)
                                    260 	.area IABS    (ABS,DATA)
                                    261 ;--------------------------------------------------------
                                    262 ; bit data
                                    263 ;--------------------------------------------------------
                                    264 	.area BSEG    (BIT)
                                    265 ;--------------------------------------------------------
                                    266 ; paged external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area PSEG    (PAG,XDATA)
                                    269 ;--------------------------------------------------------
                                    270 ; external ram data
                                    271 ;--------------------------------------------------------
                                    272 	.area XSEG    (XDATA)
                                    273 ;--------------------------------------------------------
                                    274 ; absolute external ram data
                                    275 ;--------------------------------------------------------
                                    276 	.area XABS    (ABS,XDATA)
                                    277 ;--------------------------------------------------------
                                    278 ; external initialized ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area XISEG   (XDATA)
                                    281 	.area HOME    (CODE)
                                    282 	.area GSINIT0 (CODE)
                                    283 	.area GSINIT1 (CODE)
                                    284 	.area GSINIT2 (CODE)
                                    285 	.area GSINIT3 (CODE)
                                    286 	.area GSINIT4 (CODE)
                                    287 	.area GSINIT5 (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 	.area GSFINAL (CODE)
                                    290 	.area CSEG    (CODE)
                                    291 ;--------------------------------------------------------
                                    292 ; global & static initialisations
                                    293 ;--------------------------------------------------------
                                    294 	.area HOME    (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.area GSFINAL (CODE)
                                    297 	.area GSINIT  (CODE)
                                    298 ;--------------------------------------------------------
                                    299 ; Home
                                    300 ;--------------------------------------------------------
                                    301 	.area HOME    (CODE)
                                    302 	.area HOME    (CODE)
                                    303 ;--------------------------------------------------------
                                    304 ; code
                                    305 ;--------------------------------------------------------
                                    306 	.area CSEG    (CODE)
                                    307 ;------------------------------------------------------------
                                    308 ;Allocation info for local variables in function 'UART_Init'
                                    309 ;------------------------------------------------------------
                                    310 ;v_baudRate_u32            Allocated to registers r4 r5 r6 r7 
                                    311 ;------------------------------------------------------------
                                    312 ;	src/libs/uart.c:54: void UART_Init(uint32_t v_baudRate_u32)
                                    313 ;	-----------------------------------------
                                    314 ;	 function UART_Init
                                    315 ;	-----------------------------------------
      000436                        316 _UART_Init:
                           000007   317 	ar7 = 0x07
                           000006   318 	ar6 = 0x06
                           000005   319 	ar5 = 0x05
                           000004   320 	ar4 = 0x04
                           000003   321 	ar3 = 0x03
                           000002   322 	ar2 = 0x02
                           000001   323 	ar1 = 0x01
                           000000   324 	ar0 = 0x00
      000436 AC 82            [24]  325 	mov	r4,dpl
      000438 AD 83            [24]  326 	mov	r5,dph
      00043A AE F0            [24]  327 	mov	r6,b
      00043C FF               [12]  328 	mov	r7,a
                                    329 ;	src/libs/uart.c:56: TMOD |= 0x20; //Timer1 in Mode2.
      00043D 43 89 20         [24]  330 	orl	_TMOD,#0x20
                                    331 ;	src/libs/uart.c:57: SCON=0x50;    // Asynchronous mode, 8-bit data and 1-stop bit
      000440 75 98 50         [24]  332 	mov	_SCON,#0x50
                                    333 ;	src/libs/uart.c:58: TR1=1;        //Turn ON the timer for Baud rate generation
                                    334 ;	assignBit
      000443 D2 8E            [12]  335 	setb	_TR1
                                    336 ;	src/libs/uart.c:59: UART_SetBaudRate(v_baudRate_u32);
      000445 8C 82            [24]  337 	mov	dpl,r4
      000447 8D 83            [24]  338 	mov	dph,r5
      000449 8E F0            [24]  339 	mov	b,r6
      00044B EF               [12]  340 	mov	a,r7
                                    341 ;	src/libs/uart.c:60: }
      00044C 02 04 4F         [24]  342 	ljmp	_UART_SetBaudRate
                                    343 ;------------------------------------------------------------
                                    344 ;Allocation info for local variables in function 'UART_SetBaudRate'
                                    345 ;------------------------------------------------------------
                                    346 ;v_baudRate_u32            Allocated to registers r4 r5 r6 r7 
                                    347 ;RegValue                  Allocated to registers r7 
                                    348 ;------------------------------------------------------------
                                    349 ;	src/libs/uart.c:79: void UART_SetBaudRate(uint32_t v_baudRate_u32)
                                    350 ;	-----------------------------------------
                                    351 ;	 function UART_SetBaudRate
                                    352 ;	-----------------------------------------
      00044F                        353 _UART_SetBaudRate:
      00044F AC 82            [24]  354 	mov	r4,dpl
      000451 AD 83            [24]  355 	mov	r5,dph
      000453 AE F0            [24]  356 	mov	r6,b
      000455 FF               [12]  357 	mov	r7,a
                                    358 ;	src/libs/uart.c:83: if((v_baudRate_u32 >= C_MinBaudRate_U32) && (v_baudRate_u32<=C_MaxBaudRate_U32))
      000456 C3               [12]  359 	clr	c
      000457 EC               [12]  360 	mov	a,r4
      000458 94 60            [12]  361 	subb	a,#0x60
      00045A ED               [12]  362 	mov	a,r5
      00045B 94 09            [12]  363 	subb	a,#0x09
      00045D EE               [12]  364 	mov	a,r6
      00045E 94 00            [12]  365 	subb	a,#0x00
      000460 EF               [12]  366 	mov	a,r7
      000461 94 00            [12]  367 	subb	a,#0x00
      000463 40 3E            [24]  368 	jc	00102$
      000465 E4               [12]  369 	clr	a
      000466 9C               [12]  370 	subb	a,r4
      000467 74 C2            [12]  371 	mov	a,#0xc2
      000469 9D               [12]  372 	subb	a,r5
      00046A 74 01            [12]  373 	mov	a,#0x01
      00046C 9E               [12]  374 	subb	a,r6
      00046D E4               [12]  375 	clr	a
      00046E 9F               [12]  376 	subb	a,r7
      00046F 40 32            [24]  377 	jc	00102$
                                    378 ;	src/libs/uart.c:87: RegValue = M_GetBaudRateGeneratorValue(v_baudRate_u32);
      000471 8C 42            [24]  379 	mov	__mullong_PARM_2,r4
      000473 8D 43            [24]  380 	mov	(__mullong_PARM_2 + 1),r5
      000475 8E 44            [24]  381 	mov	(__mullong_PARM_2 + 2),r6
      000477 8F 45            [24]  382 	mov	(__mullong_PARM_2 + 3),r7
      000479 90 01 80         [24]  383 	mov	dptr,#0x0180
      00047C E4               [12]  384 	clr	a
      00047D F5 F0            [12]  385 	mov	b,a
      00047F 12 0A 4E         [24]  386 	lcall	__mullong
      000482 85 82 42         [24]  387 	mov	__divulong_PARM_2,dpl
      000485 85 83 43         [24]  388 	mov	(__divulong_PARM_2 + 1),dph
      000488 85 F0 44         [24]  389 	mov	(__divulong_PARM_2 + 2),b
      00048B F5 45            [12]  390 	mov	(__divulong_PARM_2 + 3),a
      00048D 90 C0 00         [24]  391 	mov	dptr,#0xc000
      000490 75 F0 A8         [24]  392 	mov	b,#0xa8
      000493 E4               [12]  393 	clr	a
      000494 12 09 CE         [24]  394 	lcall	__divulong
      000497 AC 82            [24]  395 	mov	r4,dpl
      000499 AD 83            [24]  396 	mov	r5,dph
      00049B AE F0            [24]  397 	mov	r6,b
      00049D C3               [12]  398 	clr	c
      00049E E4               [12]  399 	clr	a
      00049F 9C               [12]  400 	subb	a,r4
      0004A0 FF               [12]  401 	mov	r7,a
      0004A1 80 02            [24]  402 	sjmp	00103$
      0004A3                        403 00102$:
                                    404 ;	src/libs/uart.c:92: RegValue = M_GetBaudRateGeneratorValue(9600);
      0004A3 7F 5D            [12]  405 	mov	r7,#0x5d
      0004A5                        406 00103$:
                                    407 ;	src/libs/uart.c:95: TH1 = RegValue; 
      0004A5 8F 8D            [24]  408 	mov	_TH1,r7
                                    409 ;	src/libs/uart.c:96: }
      0004A7 22               [24]  410 	ret
                                    411 ;------------------------------------------------------------
                                    412 ;Allocation info for local variables in function 'UART_RxChar'
                                    413 ;------------------------------------------------------------
                                    414 ;	src/libs/uart.c:111: char UART_RxChar(void)
                                    415 ;	-----------------------------------------
                                    416 ;	 function UART_RxChar
                                    417 ;	-----------------------------------------
      0004A8                        418 _UART_RxChar:
                                    419 ;	src/libs/uart.c:113: while(RI==0);      // Wait till the data is received
      0004A8                        420 00101$:
                                    421 ;	src/libs/uart.c:114: RI=0;             // Clear Receive Interrupt Flag for next cycle
                                    422 ;	assignBit
      0004A8 10 98 02         [24]  423 	jbc	_RI,00114$
      0004AB 80 FB            [24]  424 	sjmp	00101$
      0004AD                        425 00114$:
                                    426 ;	src/libs/uart.c:116: return(SBUF);      // return the received char
      0004AD 85 99 82         [24]  427 	mov	dpl,_SBUF
                                    428 ;	src/libs/uart.c:117: }
      0004B0 22               [24]  429 	ret
                                    430 ;------------------------------------------------------------
                                    431 ;Allocation info for local variables in function 'UART_TxChar'
                                    432 ;------------------------------------------------------------
                                    433 ;v_uartData_u8             Allocated to registers 
                                    434 ;------------------------------------------------------------
                                    435 ;	src/libs/uart.c:134: void UART_TxChar(char v_uartData_u8)
                                    436 ;	-----------------------------------------
                                    437 ;	 function UART_TxChar
                                    438 ;	-----------------------------------------
      0004B1                        439 _UART_TxChar:
      0004B1 85 82 99         [24]  440 	mov	_SBUF,dpl
                                    441 ;	src/libs/uart.c:137: while(TI==0);       // Wait till the data is trasmitted
      0004B4                        442 00101$:
                                    443 ;	src/libs/uart.c:138: TI=0;                //Clear the Tx flag for next cycle.
                                    444 ;	assignBit
      0004B4 10 99 02         [24]  445 	jbc	_TI,00114$
      0004B7 80 FB            [24]  446 	sjmp	00101$
      0004B9                        447 00114$:
                                    448 ;	src/libs/uart.c:139: }
      0004B9 22               [24]  449 	ret
                                    450 ;------------------------------------------------------------
                                    451 ;Allocation info for local variables in function 'UART_TxString'
                                    452 ;------------------------------------------------------------
                                    453 ;ptr_string                Allocated to registers 
                                    454 ;------------------------------------------------------------
                                    455 ;	src/libs/uart.c:158: void UART_TxString(char *ptr_string)
                                    456 ;	-----------------------------------------
                                    457 ;	 function UART_TxString
                                    458 ;	-----------------------------------------
      0004BA                        459 _UART_TxString:
      0004BA AD 82            [24]  460 	mov	r5,dpl
      0004BC AE 83            [24]  461 	mov	r6,dph
      0004BE AF F0            [24]  462 	mov	r7,b
                                    463 ;	src/libs/uart.c:160: while(*ptr_string)
      0004C0                        464 00101$:
      0004C0 8D 82            [24]  465 	mov	dpl,r5
      0004C2 8E 83            [24]  466 	mov	dph,r6
      0004C4 8F F0            [24]  467 	mov	b,r7
      0004C6 12 0A BC         [24]  468 	lcall	__gptrget
      0004C9 FC               [12]  469 	mov	r4,a
      0004CA 60 18            [24]  470 	jz	00104$
                                    471 ;	src/libs/uart.c:161: UART_TxChar(*ptr_string++);// Loop through the string and transmit char by char
      0004CC 8C 82            [24]  472 	mov	dpl,r4
      0004CE 0D               [12]  473 	inc	r5
      0004CF BD 00 01         [24]  474 	cjne	r5,#0x00,00116$
      0004D2 0E               [12]  475 	inc	r6
      0004D3                        476 00116$:
      0004D3 C0 07            [24]  477 	push	ar7
      0004D5 C0 06            [24]  478 	push	ar6
      0004D7 C0 05            [24]  479 	push	ar5
      0004D9 12 04 B1         [24]  480 	lcall	_UART_TxChar
      0004DC D0 05            [24]  481 	pop	ar5
      0004DE D0 06            [24]  482 	pop	ar6
      0004E0 D0 07            [24]  483 	pop	ar7
      0004E2 80 DC            [24]  484 	sjmp	00101$
      0004E4                        485 00104$:
                                    486 ;	src/libs/uart.c:162: }
      0004E4 22               [24]  487 	ret
                                    488 ;------------------------------------------------------------
                                    489 ;Allocation info for local variables in function 'UART_RxString'
                                    490 ;------------------------------------------------------------
                                    491 ;ptr_string                Allocated to registers r5 r6 r7 
                                    492 ;ch                        Allocated to registers r3 
                                    493 ;len                       Allocated to registers r4 
                                    494 ;------------------------------------------------------------
                                    495 ;	src/libs/uart.c:187: uint8_t UART_RxString(char *ptr_string)
                                    496 ;	-----------------------------------------
                                    497 ;	 function UART_RxString
                                    498 ;	-----------------------------------------
      0004E5                        499 _UART_RxString:
      0004E5 AD 82            [24]  500 	mov	r5,dpl
      0004E7 AE 83            [24]  501 	mov	r6,dph
      0004E9 AF F0            [24]  502 	mov	r7,b
                                    503 ;	src/libs/uart.c:190: uint8_t len = 0;
      0004EB 7C 00            [12]  504 	mov	r4,#0x00
                                    505 ;	src/libs/uart.c:191: while(1)
      0004ED                        506 00110$:
                                    507 ;	src/libs/uart.c:193: ch=UART_RxChar();    //Receive a char
      0004ED C0 07            [24]  508 	push	ar7
      0004EF C0 06            [24]  509 	push	ar6
      0004F1 C0 05            [24]  510 	push	ar5
      0004F3 C0 04            [24]  511 	push	ar4
      0004F5 12 04 A8         [24]  512 	lcall	_UART_RxChar
                                    513 ;	src/libs/uart.c:194: UART_TxChar(ch);     //Echo back the received char
      0004F8 AB 82            [24]  514 	mov  r3,dpl
      0004FA C0 03            [24]  515 	push	ar3
      0004FC 12 04 B1         [24]  516 	lcall	_UART_TxChar
      0004FF D0 03            [24]  517 	pop	ar3
      000501 D0 04            [24]  518 	pop	ar4
      000503 D0 05            [24]  519 	pop	ar5
      000505 D0 06            [24]  520 	pop	ar6
      000507 D0 07            [24]  521 	pop	ar7
                                    522 ;	src/libs/uart.c:196: if((ch=='\r') || (ch=='\n')) //read till enter key is pressed
      000509 BB 0D 02         [24]  523 	cjne	r3,#0x0d,00130$
      00050C 80 03            [24]  524 	sjmp	00105$
      00050E                        525 00130$:
      00050E BB 0A 14         [24]  526 	cjne	r3,#0x0a,00106$
      000511                        527 00105$:
                                    528 ;	src/libs/uart.c:198: ptr_string[len]=0;           //and break the loop
      000511 EC               [12]  529 	mov	a,r4
      000512 2D               [12]  530 	add	a,r5
      000513 F8               [12]  531 	mov	r0,a
      000514 E4               [12]  532 	clr	a
      000515 3E               [12]  533 	addc	a,r6
      000516 F9               [12]  534 	mov	r1,a
      000517 8F 02            [24]  535 	mov	ar2,r7
      000519 88 82            [24]  536 	mov	dpl,r0
      00051B 89 83            [24]  537 	mov	dph,r1
      00051D 8A F0            [24]  538 	mov	b,r2
      00051F E4               [12]  539 	clr	a
      000520 12 0A 33         [24]  540 	lcall	__gptrput
                                    541 ;	src/libs/uart.c:199: break;                  
      000523 80 1E            [24]  542 	sjmp	00111$
      000525                        543 00106$:
                                    544 ;	src/libs/uart.c:201: else if((ch=='\b') && (len!=0))
      000525 BB 08 06         [24]  545 	cjne	r3,#0x08,00102$
      000528 EC               [12]  546 	mov	a,r4
      000529 60 03            [24]  547 	jz	00102$
                                    548 ;	src/libs/uart.c:203: len--;    //If backspace is pressed then decrement the index to remove the old char
      00052B 1C               [12]  549 	dec	r4
      00052C 80 BF            [24]  550 	sjmp	00110$
      00052E                        551 00102$:
                                    552 ;	src/libs/uart.c:207: ptr_string[len]=ch; //copy the char into string and increment the index
      00052E EC               [12]  553 	mov	a,r4
      00052F 2D               [12]  554 	add	a,r5
      000530 F8               [12]  555 	mov	r0,a
      000531 E4               [12]  556 	clr	a
      000532 3E               [12]  557 	addc	a,r6
      000533 F9               [12]  558 	mov	r1,a
      000534 8F 02            [24]  559 	mov	ar2,r7
      000536 88 82            [24]  560 	mov	dpl,r0
      000538 89 83            [24]  561 	mov	dph,r1
      00053A 8A F0            [24]  562 	mov	b,r2
      00053C EB               [12]  563 	mov	a,r3
      00053D 12 0A 33         [24]  564 	lcall	__gptrput
                                    565 ;	src/libs/uart.c:208: len++;
      000540 0C               [12]  566 	inc	r4
      000541 80 AA            [24]  567 	sjmp	00110$
      000543                        568 00111$:
                                    569 ;	src/libs/uart.c:211: return len;   
      000543 8C 82            [24]  570 	mov	dpl,r4
                                    571 ;	src/libs/uart.c:212: }
      000545 22               [24]  572 	ret
                                    573 ;------------------------------------------------------------
                                    574 ;Allocation info for local variables in function 'UART_TxNumber'
                                    575 ;------------------------------------------------------------
                                    576 ;v_number_u32              Allocated with name '_UART_TxNumber_PARM_2'
                                    577 ;v_numOfDigitsToTransmit_u8 Allocated with name '_UART_TxNumber_PARM_3'
                                    578 ;v_numericSystem_u8        Allocated with name '_UART_TxNumber_v_numericSystem_u8_65536_28'
                                    579 ;i                         Allocated with name '_UART_TxNumber_i_65536_29'
                                    580 ;a                         Allocated with name '_UART_TxNumber_a_65536_29'
                                    581 ;sloc0                     Allocated with name '_UART_TxNumber_sloc0_1_0'
                                    582 ;------------------------------------------------------------
                                    583 ;	src/libs/uart.c:249: void UART_TxNumber(uint8_t v_numericSystem_u8, uint32_t v_number_u32, uint8_t v_numOfDigitsToTransmit_u8)
                                    584 ;	-----------------------------------------
                                    585 ;	 function UART_TxNumber
                                    586 ;	-----------------------------------------
      000546                        587 _UART_TxNumber:
      000546 85 82 34         [24]  588 	mov	_UART_TxNumber_v_numericSystem_u8_65536_28,dpl
                                    589 ;	src/libs/uart.c:253: if(C_BINARY_U8 == v_numericSystem_u8)
      000549 74 02            [12]  590 	mov	a,#0x02
      00054B B5 34 4B         [24]  591 	cjne	a,_UART_TxNumber_v_numericSystem_u8_65536_28,00120$
                                    592 ;	src/libs/uart.c:255: while(v_numOfDigitsToTransmit_u8!=0)
      00054E                        593 00101$:
      00054E E5 33            [12]  594 	mov	a,_UART_TxNumber_PARM_3
      000550 70 01            [24]  595 	jnz	00194$
      000552 22               [24]  596 	ret
      000553                        597 00194$:
                                    598 ;	src/libs/uart.c:259: i = util_GetBitStatus(v_number_u32,(v_numOfDigitsToTransmit_u8-1));
      000553 E5 33            [12]  599 	mov	a,_UART_TxNumber_PARM_3
      000555 14               [12]  600 	dec	a
      000556 FE               [12]  601 	mov	r6,a
      000557 8E F0            [24]  602 	mov	b,r6
      000559 05 F0            [12]  603 	inc	b
      00055B 7C 01            [12]  604 	mov	r4,#0x01
      00055D 7D 00            [12]  605 	mov	r5,#0x00
      00055F 80 06            [24]  606 	sjmp	00196$
      000561                        607 00195$:
      000561 EC               [12]  608 	mov	a,r4
      000562 2C               [12]  609 	add	a,r4
      000563 FC               [12]  610 	mov	r4,a
      000564 ED               [12]  611 	mov	a,r5
      000565 33               [12]  612 	rlc	a
      000566 FD               [12]  613 	mov	r5,a
      000567                        614 00196$:
      000567 D5 F0 F7         [24]  615 	djnz	b,00195$
      00056A ED               [12]  616 	mov	a,r5
      00056B 33               [12]  617 	rlc	a
      00056C 95 E0            [12]  618 	subb	a,acc
      00056E FB               [12]  619 	mov	r3,a
      00056F FA               [12]  620 	mov	r2,a
      000570 E5 2F            [12]  621 	mov	a,_UART_TxNumber_PARM_2
      000572 52 04            [12]  622 	anl	ar4,a
      000574 E5 30            [12]  623 	mov	a,(_UART_TxNumber_PARM_2 + 1)
      000576 52 05            [12]  624 	anl	ar5,a
      000578 E5 31            [12]  625 	mov	a,(_UART_TxNumber_PARM_2 + 2)
      00057A 52 03            [12]  626 	anl	ar3,a
      00057C E5 32            [12]  627 	mov	a,(_UART_TxNumber_PARM_2 + 3)
      00057E 52 02            [12]  628 	anl	ar2,a
      000580 EC               [12]  629 	mov	a,r4
      000581 4D               [12]  630 	orl	a,r5
      000582 4B               [12]  631 	orl	a,r3
      000583 4A               [12]  632 	orl	a,r2
      000584 B4 01 00         [24]  633 	cjne	a,#0x01,00197$
      000587                        634 00197$:
                                    635 ;	src/libs/uart.c:260: UART_TxChar(util_Dec2Ascii(i));
      000587 B3               [12]  636 	cpl	c
      000588 E4               [12]  637 	clr	a
      000589 33               [12]  638 	rlc	a
      00058A 24 30            [12]  639 	add	a,#0x30
      00058C F5 82            [12]  640 	mov	dpl,a
      00058E C0 06            [24]  641 	push	ar6
      000590 12 04 B1         [24]  642 	lcall	_UART_TxChar
      000593 D0 06            [24]  643 	pop	ar6
                                    644 ;	src/libs/uart.c:261: v_numOfDigitsToTransmit_u8--;
      000595 8E 33            [24]  645 	mov	_UART_TxNumber_PARM_3,r6
      000597 80 B5            [24]  646 	sjmp	00101$
      000599                        647 00120$:
                                    648 ;	src/libs/uart.c:264: else if(v_number_u32==0)
      000599 E5 2F            [12]  649 	mov	a,_UART_TxNumber_PARM_2
      00059B 45 30            [12]  650 	orl	a,(_UART_TxNumber_PARM_2 + 1)
      00059D 45 31            [12]  651 	orl	a,(_UART_TxNumber_PARM_2 + 2)
      00059F 45 32            [12]  652 	orl	a,(_UART_TxNumber_PARM_2 + 3)
                                    653 ;	src/libs/uart.c:267: for(i=0;((i<v_numOfDigitsToTransmit_u8) && (i<C_MaxDigitsToTransmit_U8)) ;i++)
      0005A1 70 1B            [24]  654 	jnz	00143$
      0005A3 FE               [12]  655 	mov	r6,a
      0005A4                        656 00124$:
      0005A4 C3               [12]  657 	clr	c
      0005A5 EE               [12]  658 	mov	a,r6
      0005A6 95 33            [12]  659 	subb	a,_UART_TxNumber_PARM_3
      0005A8 40 01            [24]  660 	jc	00200$
      0005AA 22               [24]  661 	ret
      0005AB                        662 00200$:
      0005AB BE 0A 00         [24]  663 	cjne	r6,#0x0a,00201$
      0005AE                        664 00201$:
      0005AE 40 01            [24]  665 	jc	00202$
      0005B0 22               [24]  666 	ret
      0005B1                        667 00202$:
                                    668 ;	src/libs/uart.c:268: UART_TxChar('0');
      0005B1 75 82 30         [24]  669 	mov	dpl,#0x30
      0005B4 C0 06            [24]  670 	push	ar6
      0005B6 12 04 B1         [24]  671 	lcall	_UART_TxChar
      0005B9 D0 06            [24]  672 	pop	ar6
                                    673 ;	src/libs/uart.c:267: for(i=0;((i<v_numOfDigitsToTransmit_u8) && (i<C_MaxDigitsToTransmit_U8)) ;i++)
      0005BB 0E               [12]  674 	inc	r6
                                    675 ;	src/libs/uart.c:272: for(i=0;i<v_numOfDigitsToTransmit_u8;i++)
      0005BC 80 E6            [24]  676 	sjmp	00124$
      0005BE                        677 00143$:
      0005BE 74 FF            [12]  678 	mov	a,#0xff
      0005C0 B5 33 04         [24]  679 	cjne	a,_UART_TxNumber_PARM_3,00203$
      0005C3 74 01            [12]  680 	mov	a,#0x01
      0005C5 80 01            [24]  681 	sjmp	00204$
      0005C7                        682 00203$:
      0005C7 E4               [12]  683 	clr	a
      0005C8                        684 00204$:
      0005C8 F5 40            [12]  685 	mov	_UART_TxNumber_sloc0_1_0,a
      0005CA C3               [12]  686 	clr	c
      0005CB 74 0A            [12]  687 	mov	a,#0x0a
      0005CD 95 33            [12]  688 	subb	a,_UART_TxNumber_PARM_3
      0005CF E4               [12]  689 	clr	a
      0005D0 33               [12]  690 	rlc	a
      0005D1 FD               [12]  691 	mov	r5,a
      0005D2 75 35 00         [24]  692 	mov	_UART_TxNumber_i_65536_29,#0x00
      0005D5                        693 00127$:
      0005D5 C3               [12]  694 	clr	c
      0005D6 E5 35            [12]  695 	mov	a,_UART_TxNumber_i_65536_29
      0005D8 95 33            [12]  696 	subb	a,_UART_TxNumber_PARM_3
      0005DA 50 66            [24]  697 	jnc	00146$
                                    698 ;	src/libs/uart.c:276: if(v_number_u32!=0)
      0005DC E5 2F            [12]  699 	mov	a,_UART_TxNumber_PARM_2
      0005DE 45 30            [12]  700 	orl	a,(_UART_TxNumber_PARM_2 + 1)
      0005E0 45 31            [12]  701 	orl	a,(_UART_TxNumber_PARM_2 + 2)
      0005E2 45 32            [12]  702 	orl	a,(_UART_TxNumber_PARM_2 + 3)
      0005E4 60 4A            [24]  703 	jz	00110$
                                    704 ;	src/libs/uart.c:284: a[i]=util_GetMod32(v_number_u32,v_numericSystem_u8);
      0005E6 C0 05            [24]  705 	push	ar5
      0005E8 E5 35            [12]  706 	mov	a,_UART_TxNumber_i_65536_29
      0005EA 24 36            [12]  707 	add	a,#_UART_TxNumber_a_65536_29
      0005EC F9               [12]  708 	mov	r1,a
      0005ED 85 34 42         [24]  709 	mov	__divulong_PARM_2,_UART_TxNumber_v_numericSystem_u8_65536_28
      0005F0 75 43 00         [24]  710 	mov	(__divulong_PARM_2 + 1),#0x00
      0005F3 75 44 00         [24]  711 	mov	(__divulong_PARM_2 + 2),#0x00
      0005F6 75 45 00         [24]  712 	mov	(__divulong_PARM_2 + 3),#0x00
      0005F9 85 2F 82         [24]  713 	mov	dpl,_UART_TxNumber_PARM_2
      0005FC 85 30 83         [24]  714 	mov	dph,(_UART_TxNumber_PARM_2 + 1)
      0005FF 85 31 F0         [24]  715 	mov	b,(_UART_TxNumber_PARM_2 + 2)
      000602 E5 32            [12]  716 	mov	a,(_UART_TxNumber_PARM_2 + 3)
      000604 C0 05            [24]  717 	push	ar5
      000606 C0 01            [24]  718 	push	ar1
      000608 12 09 CE         [24]  719 	lcall	__divulong
      00060B AA 82            [24]  720 	mov	r2,dpl
      00060D AB 83            [24]  721 	mov	r3,dph
      00060F AC F0            [24]  722 	mov	r4,b
      000611 FF               [12]  723 	mov	r7,a
      000612 D0 01            [24]  724 	pop	ar1
      000614 D0 05            [24]  725 	pop	ar5
      000616 8A 05            [24]  726 	mov	ar5,r2
      000618 85 34 F0         [24]  727 	mov	b,_UART_TxNumber_v_numericSystem_u8_65536_28
      00061B ED               [12]  728 	mov	a,r5
      00061C A4               [48]  729 	mul	ab
      00061D FD               [12]  730 	mov	r5,a
      00061E E5 2F            [12]  731 	mov	a,_UART_TxNumber_PARM_2
      000620 FE               [12]  732 	mov	r6,a
      000621 C3               [12]  733 	clr	c
      000622 9D               [12]  734 	subb	a,r5
      000623 F7               [12]  735 	mov	@r1,a
                                    736 ;	src/libs/uart.c:285: v_number_u32=v_number_u32/v_numericSystem_u8;
      000624 8A 2F            [24]  737 	mov	_UART_TxNumber_PARM_2,r2
      000626 8B 30            [24]  738 	mov	(_UART_TxNumber_PARM_2 + 1),r3
      000628 8C 31            [24]  739 	mov	(_UART_TxNumber_PARM_2 + 2),r4
      00062A 8F 32            [24]  740 	mov	(_UART_TxNumber_PARM_2 + 3),r7
      00062C D0 05            [24]  741 	pop	ar5
      00062E 80 0E            [24]  742 	sjmp	00128$
      000630                        743 00110$:
                                    744 ;	src/libs/uart.c:287: else if( (v_numOfDigitsToTransmit_u8 == C_DefaultDigitsToTransmit_U8) ||
      000630 E5 40            [12]  745 	mov	a,_UART_TxNumber_sloc0_1_0
      000632 70 0E            [24]  746 	jnz	00146$
                                    747 ;	src/libs/uart.c:288: (v_numOfDigitsToTransmit_u8 > C_MaxDigitsToTransmit_U8))
      000634 ED               [12]  748 	mov	a,r5
      000635 70 0B            [24]  749 	jnz	00146$
                                    750 ;	src/libs/uart.c:299: a[i]=0;
      000637 E5 35            [12]  751 	mov	a,_UART_TxNumber_i_65536_29
      000639 24 36            [12]  752 	add	a,#_UART_TxNumber_a_65536_29
      00063B F8               [12]  753 	mov	r0,a
      00063C 76 00            [12]  754 	mov	@r0,#0x00
      00063E                        755 00128$:
                                    756 ;	src/libs/uart.c:272: for(i=0;i<v_numOfDigitsToTransmit_u8;i++)
      00063E 05 35            [12]  757 	inc	_UART_TxNumber_i_65536_29
                                    758 ;	src/libs/uart.c:303: while(i)
      000640 80 93            [24]  759 	sjmp	00127$
      000642                        760 00146$:
      000642 AF 35            [24]  761 	mov	r7,_UART_TxNumber_i_65536_29
      000644                        762 00113$:
      000644 EF               [12]  763 	mov	a,r7
      000645 60 30            [24]  764 	jz	00129$
                                    765 ;	src/libs/uart.c:306: UART_TxChar(util_Hex2Ascii(a[i-1]));
      000647 8F 06            [24]  766 	mov	ar6,r7
      000649 EE               [12]  767 	mov	a,r6
      00064A 14               [12]  768 	dec	a
      00064B 24 36            [12]  769 	add	a,#_UART_TxNumber_a_65536_29
      00064D F9               [12]  770 	mov	r1,a
      00064E E7               [12]  771 	mov	a,@r1
      00064F 24 F6            [12]  772 	add	a,#0xff - 0x09
      000651 50 0D            [24]  773 	jnc	00131$
      000653 EE               [12]  774 	mov	a,r6
      000654 14               [12]  775 	dec	a
      000655 24 36            [12]  776 	add	a,#_UART_TxNumber_a_65536_29
      000657 F9               [12]  777 	mov	r1,a
      000658 87 05            [24]  778 	mov	ar5,@r1
      00065A 74 37            [12]  779 	mov	a,#0x37
      00065C 2D               [12]  780 	add	a,r5
      00065D FD               [12]  781 	mov	r5,a
      00065E 80 0B            [24]  782 	sjmp	00132$
      000660                        783 00131$:
      000660 EE               [12]  784 	mov	a,r6
      000661 14               [12]  785 	dec	a
      000662 24 36            [12]  786 	add	a,#_UART_TxNumber_a_65536_29
      000664 F9               [12]  787 	mov	r1,a
      000665 87 06            [24]  788 	mov	ar6,@r1
      000667 74 30            [12]  789 	mov	a,#0x30
      000669 2E               [12]  790 	add	a,r6
      00066A FD               [12]  791 	mov	r5,a
      00066B                        792 00132$:
      00066B 8D 82            [24]  793 	mov	dpl,r5
      00066D C0 07            [24]  794 	push	ar7
      00066F 12 04 B1         [24]  795 	lcall	_UART_TxChar
      000672 D0 07            [24]  796 	pop	ar7
                                    797 ;	src/libs/uart.c:307: i--;
      000674 1F               [12]  798 	dec	r7
      000675 80 CD            [24]  799 	sjmp	00113$
      000677                        800 00129$:
                                    801 ;	src/libs/uart.c:312: }
      000677 22               [24]  802 	ret
                                    803 ;------------------------------------------------------------
                                    804 ;Allocation info for local variables in function 'UART_Printf'
                                    805 ;------------------------------------------------------------
                                    806 ;argList                   Allocated to stack - _bp -5
                                    807 ;ptr                       Allocated to stack - _bp +2
                                    808 ;argp                      Allocated to stack - _bp +5
                                    809 ;v_num_s16                 Allocated to registers r6 r7 
                                    810 ;v_num_s32                 Allocated to registers r4 r5 r6 r7 
                                    811 ;v_num_u16                 Allocated to registers r6 r7 
                                    812 ;v_num_u32                 Allocated to registers 
                                    813 ;str                       Allocated to registers r5 r6 r7 
                                    814 ;ch                        Allocated to registers r3 
                                    815 ;v_numOfDigitsToTransmit_u8 Allocated to stack - _bp +1
                                    816 ;------------------------------------------------------------
                                    817 ;	src/libs/uart.c:401: void UART_Printf(const char *argList, ...)
                                    818 ;	-----------------------------------------
                                    819 ;	 function UART_Printf
                                    820 ;	-----------------------------------------
      000678                        821 _UART_Printf:
      000678 C0 41            [24]  822 	push	_bp
      00067A E5 81            [12]  823 	mov	a,sp
      00067C F5 41            [12]  824 	mov	_bp,a
      00067E 24 05            [12]  825 	add	a,#0x05
      000680 F5 81            [12]  826 	mov	sp,a
                                    827 ;	src/libs/uart.c:417: va_start(argp, argList);
      000682 E5 41            [12]  828 	mov	a,_bp
      000684 24 FB            [12]  829 	add	a,#0xfb
      000686 FF               [12]  830 	mov	r7,a
      000687 E5 41            [12]  831 	mov	a,_bp
      000689 24 05            [12]  832 	add	a,#0x05
      00068B F8               [12]  833 	mov	r0,a
      00068C A6 07            [24]  834 	mov	@r0,ar7
                                    835 ;	src/libs/uart.c:420: for(ptr = argList; *ptr != '\0'; ptr++)
      00068E E5 41            [12]  836 	mov	a,_bp
      000690 24 FB            [12]  837 	add	a,#0xfb
      000692 F8               [12]  838 	mov	r0,a
      000693 A9 41            [24]  839 	mov	r1,_bp
      000695 09               [12]  840 	inc	r1
      000696 09               [12]  841 	inc	r1
      000697 E6               [12]  842 	mov	a,@r0
      000698 F7               [12]  843 	mov	@r1,a
      000699 08               [12]  844 	inc	r0
      00069A 09               [12]  845 	inc	r1
      00069B E6               [12]  846 	mov	a,@r0
      00069C F7               [12]  847 	mov	@r1,a
      00069D 08               [12]  848 	inc	r0
      00069E 09               [12]  849 	inc	r1
      00069F E6               [12]  850 	mov	a,@r0
      0006A0 F7               [12]  851 	mov	@r1,a
      0006A1                        852 00138$:
      0006A1 A8 41            [24]  853 	mov	r0,_bp
      0006A3 08               [12]  854 	inc	r0
      0006A4 08               [12]  855 	inc	r0
      0006A5 86 82            [24]  856 	mov	dpl,@r0
      0006A7 08               [12]  857 	inc	r0
      0006A8 86 83            [24]  858 	mov	dph,@r0
      0006AA 08               [12]  859 	inc	r0
      0006AB 86 F0            [24]  860 	mov	b,@r0
      0006AD 12 0A BC         [24]  861 	lcall	__gptrget
      0006B0 FB               [12]  862 	mov	r3,a
      0006B1 70 03            [24]  863 	jnz	00278$
      0006B3 02 09 C8         [24]  864 	ljmp	00140$
      0006B6                        865 00278$:
                                    866 ;	src/libs/uart.c:423: ch= *ptr;
                                    867 ;	src/libs/uart.c:424: if(ch == '%')         /*Check for '%' as there will be format specifier after it */
      0006B6 BB 25 02         [24]  868 	cjne	r3,#0x25,00279$
      0006B9 80 03            [24]  869 	sjmp	00280$
      0006BB                        870 00279$:
      0006BB 02 09 B6         [24]  871 	ljmp	00134$
      0006BE                        872 00280$:
                                    873 ;	src/libs/uart.c:426: ptr++;
      0006BE A8 41            [24]  874 	mov	r0,_bp
      0006C0 08               [12]  875 	inc	r0
      0006C1 08               [12]  876 	inc	r0
      0006C2 06               [12]  877 	inc	@r0
      0006C3 B6 00 02         [24]  878 	cjne	@r0,#0x00,00281$
      0006C6 08               [12]  879 	inc	r0
      0006C7 06               [12]  880 	inc	@r0
      0006C8                        881 00281$:
                                    882 ;	src/libs/uart.c:427: ch = *ptr;
      0006C8 A8 41            [24]  883 	mov	r0,_bp
      0006CA 08               [12]  884 	inc	r0
      0006CB 08               [12]  885 	inc	r0
      0006CC 86 82            [24]  886 	mov	dpl,@r0
      0006CE 08               [12]  887 	inc	r0
      0006CF 86 83            [24]  888 	mov	dph,@r0
      0006D1 08               [12]  889 	inc	r0
      0006D2 86 F0            [24]  890 	mov	b,@r0
      0006D4 12 0A BC         [24]  891 	lcall	__gptrget
      0006D7 FB               [12]  892 	mov	r3,a
                                    893 ;	src/libs/uart.c:428: if((ch>=0x30) && (ch<=0x39))
      0006D8 BB 30 00         [24]  894 	cjne	r3,#0x30,00282$
      0006DB                        895 00282$:
      0006DB 40 46            [24]  896 	jc	00106$
      0006DD EB               [12]  897 	mov	a,r3
      0006DE 24 C6            [12]  898 	add	a,#0xff - 0x39
      0006E0 40 41            [24]  899 	jc	00106$
                                    900 ;	src/libs/uart.c:430: v_numOfDigitsToTransmit_u8 = 0;
      0006E2 A8 41            [24]  901 	mov	r0,_bp
      0006E4 08               [12]  902 	inc	r0
      0006E5 76 00            [12]  903 	mov	@r0,#0x00
                                    904 ;	src/libs/uart.c:431: while((ch>=0x30) && (ch<=0x39))
      0006E7 A8 41            [24]  905 	mov	r0,_bp
      0006E9 08               [12]  906 	inc	r0
      0006EA 08               [12]  907 	inc	r0
      0006EB 86 02            [24]  908 	mov	ar2,@r0
      0006ED 08               [12]  909 	inc	r0
      0006EE 86 07            [24]  910 	mov	ar7,@r0
      0006F0 08               [12]  911 	inc	r0
      0006F1 86 06            [24]  912 	mov	ar6,@r0
      0006F3                        913 00102$:
      0006F3 BB 30 00         [24]  914 	cjne	r3,#0x30,00285$
      0006F6                        915 00285$:
      0006F6 40 32            [24]  916 	jc	00169$
      0006F8 EB               [12]  917 	mov	a,r3
      0006F9 24 C6            [12]  918 	add	a,#0xff - 0x39
      0006FB 40 2D            [24]  919 	jc	00169$
                                    920 ;	src/libs/uart.c:433: v_numOfDigitsToTransmit_u8 = (v_numOfDigitsToTransmit_u8 * 10) + (ch-0x30);
      0006FD A8 41            [24]  921 	mov	r0,_bp
      0006FF 08               [12]  922 	inc	r0
      000700 E6               [12]  923 	mov	a,@r0
      000701 75 F0 0A         [24]  924 	mov	b,#0x0a
      000704 A4               [48]  925 	mul	ab
      000705 FD               [12]  926 	mov	r5,a
      000706 8B 04            [24]  927 	mov	ar4,r3
      000708 EC               [12]  928 	mov	a,r4
      000709 24 D0            [12]  929 	add	a,#0xd0
      00070B 2D               [12]  930 	add	a,r5
      00070C FD               [12]  931 	mov	r5,a
      00070D A8 41            [24]  932 	mov	r0,_bp
      00070F 08               [12]  933 	inc	r0
      000710 A6 05            [24]  934 	mov	@r0,ar5
                                    935 ;	src/libs/uart.c:434: ptr++;
      000712 0A               [12]  936 	inc	r2
      000713 BA 00 01         [24]  937 	cjne	r2,#0x00,00288$
      000716 0F               [12]  938 	inc	r7
      000717                        939 00288$:
                                    940 ;	src/libs/uart.c:435: ch = *ptr;
      000717 8A 82            [24]  941 	mov	dpl,r2
      000719 8F 83            [24]  942 	mov	dph,r7
      00071B 8E F0            [24]  943 	mov	b,r6
      00071D 12 0A BC         [24]  944 	lcall	__gptrget
      000720 FB               [12]  945 	mov	r3,a
      000721 80 D0            [24]  946 	sjmp	00102$
      000723                        947 00106$:
                                    948 ;	src/libs/uart.c:440: v_numOfDigitsToTransmit_u8 = C_MaxDigitsToTransmitUsingPrintf_U8;
      000723 A8 41            [24]  949 	mov	r0,_bp
      000725 08               [12]  950 	inc	r0
      000726 76 FF            [12]  951 	mov	@r0,#0xff
                                    952 ;	src/libs/uart.c:539: va_end(argp);
                                    953 ;	src/libs/uart.c:440: v_numOfDigitsToTransmit_u8 = C_MaxDigitsToTransmitUsingPrintf_U8;
      000728 80 0C            [24]  954 	sjmp	00107$
      00072A                        955 00169$:
      00072A A8 41            [24]  956 	mov	r0,_bp
      00072C 08               [12]  957 	inc	r0
      00072D 08               [12]  958 	inc	r0
      00072E A6 02            [24]  959 	mov	@r0,ar2
      000730 08               [12]  960 	inc	r0
      000731 A6 07            [24]  961 	mov	@r0,ar7
      000733 08               [12]  962 	inc	r0
      000734 A6 06            [24]  963 	mov	@r0,ar6
      000736                        964 00107$:
                                    965 ;	src/libs/uart.c:444: switch(ch)       /* Decode the type of the argument */
      000736 BB 25 03         [24]  966 	cjne	r3,#0x25,00289$
      000739 02 09 AE         [24]  967 	ljmp	00131$
      00073C                        968 00289$:
      00073C BB 42 03         [24]  969 	cjne	r3,#0x42,00290$
      00073F 02 09 47         [24]  970 	ljmp	00124$
      000742                        971 00290$:
      000742 BB 43 02         [24]  972 	cjne	r3,#0x43,00291$
      000745 80 49            [24]  973 	sjmp	00110$
      000747                        974 00291$:
      000747 BB 44 03         [24]  975 	cjne	r3,#0x44,00292$
      00074A 02 07 F4         [24]  976 	ljmp	00114$
      00074D                        977 00292$:
      00074D BB 46 03         [24]  978 	cjne	r3,#0x46,00293$
      000750 02 09 BB         [24]  979 	ljmp	00139$
      000753                        980 00293$:
      000753 BB 53 03         [24]  981 	cjne	r3,#0x53,00294$
      000756 02 09 87         [24]  982 	ljmp	00130$
      000759                        983 00294$:
      000759 BB 55 03         [24]  984 	cjne	r3,#0x55,00295$
      00075C 02 08 81         [24]  985 	ljmp	00118$
      00075F                        986 00295$:
      00075F BB 58 03         [24]  987 	cjne	r3,#0x58,00296$
      000762 02 08 DF         [24]  988 	ljmp	00120$
      000765                        989 00296$:
      000765 BB 62 03         [24]  990 	cjne	r3,#0x62,00297$
      000768 02 09 0D         [24]  991 	ljmp	00121$
      00076B                        992 00297$:
      00076B BB 63 02         [24]  993 	cjne	r3,#0x63,00298$
      00076E 80 20            [24]  994 	sjmp	00110$
      000770                        995 00298$:
      000770 BB 64 02         [24]  996 	cjne	r3,#0x64,00299$
      000773 80 34            [24]  997 	sjmp	00111$
      000775                        998 00299$:
      000775 BB 66 03         [24]  999 	cjne	r3,#0x66,00300$
      000778 02 09 BB         [24] 1000 	ljmp	00139$
      00077B                       1001 00300$:
      00077B BB 73 03         [24] 1002 	cjne	r3,#0x73,00301$
      00077E 02 09 87         [24] 1003 	ljmp	00130$
      000781                       1004 00301$:
      000781 BB 75 03         [24] 1005 	cjne	r3,#0x75,00302$
      000784 02 08 51         [24] 1006 	ljmp	00117$
      000787                       1007 00302$:
      000787 BB 78 03         [24] 1008 	cjne	r3,#0x78,00303$
      00078A 02 08 AF         [24] 1009 	ljmp	00119$
      00078D                       1010 00303$:
      00078D 02 09 BB         [24] 1011 	ljmp	00139$
                                   1012 ;	src/libs/uart.c:447: case 'c':     /* Argument type is of char, hence read char data from the argp */
      000790                       1013 00110$:
                                   1014 ;	src/libs/uart.c:448: ch = va_arg(argp, uint8_t);
      000790 E5 41            [12] 1015 	mov	a,_bp
      000792 24 05            [12] 1016 	add	a,#0x05
      000794 F8               [12] 1017 	mov	r0,a
      000795 E6               [12] 1018 	mov	a,@r0
      000796 14               [12] 1019 	dec	a
      000797 F9               [12] 1020 	mov	r1,a
      000798 E5 41            [12] 1021 	mov	a,_bp
      00079A 24 05            [12] 1022 	add	a,#0x05
      00079C F8               [12] 1023 	mov	r0,a
      00079D A6 01            [24] 1024 	mov	@r0,ar1
      00079F 87 07            [24] 1025 	mov	ar7,@r1
                                   1026 ;	src/libs/uart.c:449: UART_TxChar(ch);
      0007A1 8F 82            [24] 1027 	mov	dpl,r7
      0007A3 12 04 B1         [24] 1028 	lcall	_UART_TxChar
                                   1029 ;	src/libs/uart.c:450: break;
      0007A6 02 09 BB         [24] 1030 	ljmp	00139$
                                   1031 ;	src/libs/uart.c:452: case 'd':    /* Argument type is of signed integer, hence read 16bit data from the argp */
      0007A9                       1032 00111$:
                                   1033 ;	src/libs/uart.c:453: v_num_s16 = va_arg(argp, sint16_t);
      0007A9 E5 41            [12] 1034 	mov	a,_bp
      0007AB 24 05            [12] 1035 	add	a,#0x05
      0007AD F8               [12] 1036 	mov	r0,a
      0007AE E6               [12] 1037 	mov	a,@r0
      0007AF 24 FE            [12] 1038 	add	a,#0xfe
      0007B1 FF               [12] 1039 	mov	r7,a
      0007B2 E5 41            [12] 1040 	mov	a,_bp
      0007B4 24 05            [12] 1041 	add	a,#0x05
      0007B6 F8               [12] 1042 	mov	r0,a
      0007B7 A6 07            [24] 1043 	mov	@r0,ar7
      0007B9 8F 01            [24] 1044 	mov	ar1,r7
      0007BB 87 06            [24] 1045 	mov	ar6,@r1
      0007BD 09               [12] 1046 	inc	r1
      0007BE 87 07            [24] 1047 	mov	ar7,@r1
      0007C0 19               [12] 1048 	dec	r1
                                   1049 ;	src/libs/uart.c:454: if(v_num_s16<0)
      0007C1 EF               [12] 1050 	mov	a,r7
      0007C2 30 E7 15         [24] 1051 	jnb	acc.7,00113$
                                   1052 ;	src/libs/uart.c:456: v_num_s16 = -v_num_s16;
      0007C5 C3               [12] 1053 	clr	c
      0007C6 E4               [12] 1054 	clr	a
      0007C7 9E               [12] 1055 	subb	a,r6
      0007C8 FE               [12] 1056 	mov	r6,a
      0007C9 E4               [12] 1057 	clr	a
      0007CA 9F               [12] 1058 	subb	a,r7
      0007CB FF               [12] 1059 	mov	r7,a
                                   1060 ;	src/libs/uart.c:457: UART_TxChar('-');
      0007CC 75 82 2D         [24] 1061 	mov	dpl,#0x2d
      0007CF C0 07            [24] 1062 	push	ar7
      0007D1 C0 06            [24] 1063 	push	ar6
      0007D3 12 04 B1         [24] 1064 	lcall	_UART_TxChar
      0007D6 D0 06            [24] 1065 	pop	ar6
      0007D8 D0 07            [24] 1066 	pop	ar7
      0007DA                       1067 00113$:
                                   1068 ;	src/libs/uart.c:459: UART_TxNumber(C_DECIMAL_U8,v_num_s16,v_numOfDigitsToTransmit_u8);
      0007DA 8E 2F            [24] 1069 	mov	_UART_TxNumber_PARM_2,r6
      0007DC EF               [12] 1070 	mov	a,r7
      0007DD F5 30            [12] 1071 	mov	(_UART_TxNumber_PARM_2 + 1),a
      0007DF 33               [12] 1072 	rlc	a
      0007E0 95 E0            [12] 1073 	subb	a,acc
      0007E2 F5 31            [12] 1074 	mov	(_UART_TxNumber_PARM_2 + 2),a
      0007E4 F5 32            [12] 1075 	mov	(_UART_TxNumber_PARM_2 + 3),a
      0007E6 A8 41            [24] 1076 	mov	r0,_bp
      0007E8 08               [12] 1077 	inc	r0
      0007E9 86 33            [24] 1078 	mov	_UART_TxNumber_PARM_3,@r0
      0007EB 75 82 0A         [24] 1079 	mov	dpl,#0x0a
      0007EE 12 05 46         [24] 1080 	lcall	_UART_TxNumber
                                   1081 ;	src/libs/uart.c:460: break;
      0007F1 02 09 BB         [24] 1082 	ljmp	00139$
                                   1083 ;	src/libs/uart.c:462: case 'D':    /* Argument type is of integer, hence read 16bit data from the argp */
      0007F4                       1084 00114$:
                                   1085 ;	src/libs/uart.c:463: v_num_s32 = va_arg(argp, sint32_t);                
      0007F4 E5 41            [12] 1086 	mov	a,_bp
      0007F6 24 05            [12] 1087 	add	a,#0x05
      0007F8 F8               [12] 1088 	mov	r0,a
      0007F9 E6               [12] 1089 	mov	a,@r0
      0007FA 24 FC            [12] 1090 	add	a,#0xfc
      0007FC FF               [12] 1091 	mov	r7,a
      0007FD E5 41            [12] 1092 	mov	a,_bp
      0007FF 24 05            [12] 1093 	add	a,#0x05
      000801 F8               [12] 1094 	mov	r0,a
      000802 A6 07            [24] 1095 	mov	@r0,ar7
      000804 8F 01            [24] 1096 	mov	ar1,r7
      000806 87 04            [24] 1097 	mov	ar4,@r1
      000808 09               [12] 1098 	inc	r1
      000809 87 05            [24] 1099 	mov	ar5,@r1
      00080B 09               [12] 1100 	inc	r1
      00080C 87 06            [24] 1101 	mov	ar6,@r1
      00080E 09               [12] 1102 	inc	r1
      00080F 87 07            [24] 1103 	mov	ar7,@r1
      000811 19               [12] 1104 	dec	r1
      000812 19               [12] 1105 	dec	r1
      000813 19               [12] 1106 	dec	r1
                                   1107 ;	src/libs/uart.c:464: if(v_num_s32<0)
      000814 EF               [12] 1108 	mov	a,r7
      000815 30 E7 23         [24] 1109 	jnb	acc.7,00116$
                                   1110 ;	src/libs/uart.c:466: v_num_s32 = -v_num_s32;
      000818 C3               [12] 1111 	clr	c
      000819 E4               [12] 1112 	clr	a
      00081A 9C               [12] 1113 	subb	a,r4
      00081B FC               [12] 1114 	mov	r4,a
      00081C E4               [12] 1115 	clr	a
      00081D 9D               [12] 1116 	subb	a,r5
      00081E FD               [12] 1117 	mov	r5,a
      00081F E4               [12] 1118 	clr	a
      000820 9E               [12] 1119 	subb	a,r6
      000821 FE               [12] 1120 	mov	r6,a
      000822 E4               [12] 1121 	clr	a
      000823 9F               [12] 1122 	subb	a,r7
      000824 FF               [12] 1123 	mov	r7,a
                                   1124 ;	src/libs/uart.c:467: UART_TxChar('-');
      000825 75 82 2D         [24] 1125 	mov	dpl,#0x2d
      000828 C0 07            [24] 1126 	push	ar7
      00082A C0 06            [24] 1127 	push	ar6
      00082C C0 05            [24] 1128 	push	ar5
      00082E C0 04            [24] 1129 	push	ar4
      000830 12 04 B1         [24] 1130 	lcall	_UART_TxChar
      000833 D0 04            [24] 1131 	pop	ar4
      000835 D0 05            [24] 1132 	pop	ar5
      000837 D0 06            [24] 1133 	pop	ar6
      000839 D0 07            [24] 1134 	pop	ar7
      00083B                       1135 00116$:
                                   1136 ;	src/libs/uart.c:469: UART_TxNumber(C_DECIMAL_U8,v_num_s32,v_numOfDigitsToTransmit_u8);            
      00083B 8C 2F            [24] 1137 	mov	_UART_TxNumber_PARM_2,r4
      00083D 8D 30            [24] 1138 	mov	(_UART_TxNumber_PARM_2 + 1),r5
      00083F 8E 31            [24] 1139 	mov	(_UART_TxNumber_PARM_2 + 2),r6
      000841 8F 32            [24] 1140 	mov	(_UART_TxNumber_PARM_2 + 3),r7
      000843 A8 41            [24] 1141 	mov	r0,_bp
      000845 08               [12] 1142 	inc	r0
      000846 86 33            [24] 1143 	mov	_UART_TxNumber_PARM_3,@r0
      000848 75 82 0A         [24] 1144 	mov	dpl,#0x0a
      00084B 12 05 46         [24] 1145 	lcall	_UART_TxNumber
                                   1146 ;	src/libs/uart.c:470: break;    
      00084E 02 09 BB         [24] 1147 	ljmp	00139$
                                   1148 ;	src/libs/uart.c:472: case 'u':    /* Argument type is of unsigned integer, hence read 16bit unsigned data */
      000851                       1149 00117$:
                                   1150 ;	src/libs/uart.c:473: v_num_u16 = va_arg(argp, uint16_t);            
      000851 E5 41            [12] 1151 	mov	a,_bp
      000853 24 05            [12] 1152 	add	a,#0x05
      000855 F8               [12] 1153 	mov	r0,a
      000856 E6               [12] 1154 	mov	a,@r0
      000857 24 FE            [12] 1155 	add	a,#0xfe
      000859 FF               [12] 1156 	mov	r7,a
      00085A E5 41            [12] 1157 	mov	a,_bp
      00085C 24 05            [12] 1158 	add	a,#0x05
      00085E F8               [12] 1159 	mov	r0,a
      00085F A6 07            [24] 1160 	mov	@r0,ar7
      000861 8F 01            [24] 1161 	mov	ar1,r7
      000863 87 06            [24] 1162 	mov	ar6,@r1
      000865 09               [12] 1163 	inc	r1
      000866 87 07            [24] 1164 	mov	ar7,@r1
      000868 19               [12] 1165 	dec	r1
                                   1166 ;	src/libs/uart.c:474: UART_TxNumber(C_DECIMAL_U8,v_num_u16,v_numOfDigitsToTransmit_u8);                
      000869 8E 2F            [24] 1167 	mov	_UART_TxNumber_PARM_2,r6
      00086B 8F 30            [24] 1168 	mov	(_UART_TxNumber_PARM_2 + 1),r7
      00086D 75 31 00         [24] 1169 	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
      000870 75 32 00         [24] 1170 	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
      000873 A8 41            [24] 1171 	mov	r0,_bp
      000875 08               [12] 1172 	inc	r0
      000876 86 33            [24] 1173 	mov	_UART_TxNumber_PARM_3,@r0
      000878 75 82 0A         [24] 1174 	mov	dpl,#0x0a
      00087B 12 05 46         [24] 1175 	lcall	_UART_TxNumber
                                   1176 ;	src/libs/uart.c:475: break;
      00087E 02 09 BB         [24] 1177 	ljmp	00139$
                                   1178 ;	src/libs/uart.c:477: case 'U':    /* Argument type is of integer, hence read 32bit unsigend data */
      000881                       1179 00118$:
                                   1180 ;	src/libs/uart.c:478: v_num_u32 = va_arg(argp, uint32_t);            
      000881 E5 41            [12] 1181 	mov	a,_bp
      000883 24 05            [12] 1182 	add	a,#0x05
      000885 F8               [12] 1183 	mov	r0,a
      000886 E6               [12] 1184 	mov	a,@r0
      000887 24 FC            [12] 1185 	add	a,#0xfc
      000889 FF               [12] 1186 	mov	r7,a
      00088A E5 41            [12] 1187 	mov	a,_bp
      00088C 24 05            [12] 1188 	add	a,#0x05
      00088E F8               [12] 1189 	mov	r0,a
      00088F A6 07            [24] 1190 	mov	@r0,ar7
      000891 8F 01            [24] 1191 	mov	ar1,r7
      000893 87 2F            [24] 1192 	mov	_UART_TxNumber_PARM_2,@r1
      000895 09               [12] 1193 	inc	r1
      000896 87 30            [24] 1194 	mov	(_UART_TxNumber_PARM_2 + 1),@r1
      000898 09               [12] 1195 	inc	r1
      000899 87 31            [24] 1196 	mov	(_UART_TxNumber_PARM_2 + 2),@r1
      00089B 09               [12] 1197 	inc	r1
      00089C 87 32            [24] 1198 	mov	(_UART_TxNumber_PARM_2 + 3),@r1
      00089E 19               [12] 1199 	dec	r1
      00089F 19               [12] 1200 	dec	r1
      0008A0 19               [12] 1201 	dec	r1
                                   1202 ;	src/libs/uart.c:479: UART_TxNumber(C_DECIMAL_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
      0008A1 A8 41            [24] 1203 	mov	r0,_bp
      0008A3 08               [12] 1204 	inc	r0
      0008A4 86 33            [24] 1205 	mov	_UART_TxNumber_PARM_3,@r0
      0008A6 75 82 0A         [24] 1206 	mov	dpl,#0x0a
      0008A9 12 05 46         [24] 1207 	lcall	_UART_TxNumber
                                   1208 ;	src/libs/uart.c:480: break;            
      0008AC 02 09 BB         [24] 1209 	ljmp	00139$
                                   1210 ;	src/libs/uart.c:482: case 'x':  /* Argument type is of hex, hence hexadecimal data from the argp */
      0008AF                       1211 00119$:
                                   1212 ;	src/libs/uart.c:483: v_num_u16 = va_arg(argp, uint16_t);                
      0008AF E5 41            [12] 1213 	mov	a,_bp
      0008B1 24 05            [12] 1214 	add	a,#0x05
      0008B3 F8               [12] 1215 	mov	r0,a
      0008B4 E6               [12] 1216 	mov	a,@r0
      0008B5 24 FE            [12] 1217 	add	a,#0xfe
      0008B7 FF               [12] 1218 	mov	r7,a
      0008B8 E5 41            [12] 1219 	mov	a,_bp
      0008BA 24 05            [12] 1220 	add	a,#0x05
      0008BC F8               [12] 1221 	mov	r0,a
      0008BD A6 07            [24] 1222 	mov	@r0,ar7
      0008BF 8F 01            [24] 1223 	mov	ar1,r7
      0008C1 87 06            [24] 1224 	mov	ar6,@r1
      0008C3 09               [12] 1225 	inc	r1
      0008C4 87 07            [24] 1226 	mov	ar7,@r1
      0008C6 19               [12] 1227 	dec	r1
                                   1228 ;	src/libs/uart.c:484: UART_TxNumber(C_HEX_U8,v_num_u16,v_numOfDigitsToTransmit_u8);            
      0008C7 8E 2F            [24] 1229 	mov	_UART_TxNumber_PARM_2,r6
      0008C9 8F 30            [24] 1230 	mov	(_UART_TxNumber_PARM_2 + 1),r7
      0008CB 75 31 00         [24] 1231 	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
      0008CE 75 32 00         [24] 1232 	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
      0008D1 A8 41            [24] 1233 	mov	r0,_bp
      0008D3 08               [12] 1234 	inc	r0
      0008D4 86 33            [24] 1235 	mov	_UART_TxNumber_PARM_3,@r0
      0008D6 75 82 10         [24] 1236 	mov	dpl,#0x10
      0008D9 12 05 46         [24] 1237 	lcall	_UART_TxNumber
                                   1238 ;	src/libs/uart.c:485: break;
      0008DC 02 09 BB         [24] 1239 	ljmp	00139$
                                   1240 ;	src/libs/uart.c:487: case 'X':  /* Argument type is of hex, hence hexadecimal data from the argp */
      0008DF                       1241 00120$:
                                   1242 ;	src/libs/uart.c:488: v_num_u32 = va_arg(argp, uint32_t);                        
      0008DF E5 41            [12] 1243 	mov	a,_bp
      0008E1 24 05            [12] 1244 	add	a,#0x05
      0008E3 F8               [12] 1245 	mov	r0,a
      0008E4 E6               [12] 1246 	mov	a,@r0
      0008E5 24 FC            [12] 1247 	add	a,#0xfc
      0008E7 FF               [12] 1248 	mov	r7,a
      0008E8 E5 41            [12] 1249 	mov	a,_bp
      0008EA 24 05            [12] 1250 	add	a,#0x05
      0008EC F8               [12] 1251 	mov	r0,a
      0008ED A6 07            [24] 1252 	mov	@r0,ar7
      0008EF 8F 01            [24] 1253 	mov	ar1,r7
      0008F1 87 2F            [24] 1254 	mov	_UART_TxNumber_PARM_2,@r1
      0008F3 09               [12] 1255 	inc	r1
      0008F4 87 30            [24] 1256 	mov	(_UART_TxNumber_PARM_2 + 1),@r1
      0008F6 09               [12] 1257 	inc	r1
      0008F7 87 31            [24] 1258 	mov	(_UART_TxNumber_PARM_2 + 2),@r1
      0008F9 09               [12] 1259 	inc	r1
      0008FA 87 32            [24] 1260 	mov	(_UART_TxNumber_PARM_2 + 3),@r1
      0008FC 19               [12] 1261 	dec	r1
      0008FD 19               [12] 1262 	dec	r1
      0008FE 19               [12] 1263 	dec	r1
                                   1264 ;	src/libs/uart.c:489: UART_TxNumber(C_HEX_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
      0008FF A8 41            [24] 1265 	mov	r0,_bp
      000901 08               [12] 1266 	inc	r0
      000902 86 33            [24] 1267 	mov	_UART_TxNumber_PARM_3,@r0
      000904 75 82 10         [24] 1268 	mov	dpl,#0x10
      000907 12 05 46         [24] 1269 	lcall	_UART_TxNumber
                                   1270 ;	src/libs/uart.c:490: break;
      00090A 02 09 BB         [24] 1271 	ljmp	00139$
                                   1272 ;	src/libs/uart.c:493: case 'b':  /* Argument type is of binary,Read int and convert to binary */
      00090D                       1273 00121$:
                                   1274 ;	src/libs/uart.c:494: v_num_u16 = va_arg(argp, uint16_t);        
      00090D E5 41            [12] 1275 	mov	a,_bp
      00090F 24 05            [12] 1276 	add	a,#0x05
      000911 F8               [12] 1277 	mov	r0,a
      000912 E6               [12] 1278 	mov	a,@r0
      000913 24 FE            [12] 1279 	add	a,#0xfe
      000915 FF               [12] 1280 	mov	r7,a
      000916 E5 41            [12] 1281 	mov	a,_bp
      000918 24 05            [12] 1282 	add	a,#0x05
      00091A F8               [12] 1283 	mov	r0,a
      00091B A6 07            [24] 1284 	mov	@r0,ar7
      00091D 8F 01            [24] 1285 	mov	ar1,r7
      00091F 87 06            [24] 1286 	mov	ar6,@r1
      000921 09               [12] 1287 	inc	r1
      000922 87 07            [24] 1288 	mov	ar7,@r1
      000924 19               [12] 1289 	dec	r1
                                   1290 ;	src/libs/uart.c:496: if(v_numOfDigitsToTransmit_u8 == C_MaxDigitsToTransmitUsingPrintf_U8)
      000925 A8 41            [24] 1291 	mov	r0,_bp
      000927 08               [12] 1292 	inc	r0
      000928 B6 FF 05         [24] 1293 	cjne	@r0,#0xff,00123$
                                   1294 ;	src/libs/uart.c:497: v_numOfDigitsToTransmit_u8 = 16;
      00092B A8 41            [24] 1295 	mov	r0,_bp
      00092D 08               [12] 1296 	inc	r0
      00092E 76 10            [12] 1297 	mov	@r0,#0x10
      000930                       1298 00123$:
                                   1299 ;	src/libs/uart.c:499: UART_TxNumber(C_BINARY_U8,v_num_u16,v_numOfDigitsToTransmit_u8);            
      000930 8E 2F            [24] 1300 	mov	_UART_TxNumber_PARM_2,r6
      000932 8F 30            [24] 1301 	mov	(_UART_TxNumber_PARM_2 + 1),r7
      000934 75 31 00         [24] 1302 	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
      000937 75 32 00         [24] 1303 	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
      00093A A8 41            [24] 1304 	mov	r0,_bp
      00093C 08               [12] 1305 	inc	r0
      00093D 86 33            [24] 1306 	mov	_UART_TxNumber_PARM_3,@r0
      00093F 75 82 02         [24] 1307 	mov	dpl,#0x02
      000942 12 05 46         [24] 1308 	lcall	_UART_TxNumber
                                   1309 ;	src/libs/uart.c:500: break;
                                   1310 ;	src/libs/uart.c:502: case 'B':  /* Argument type is of binary,Read int and convert to binary */
      000945 80 74            [24] 1311 	sjmp	00139$
      000947                       1312 00124$:
                                   1313 ;	src/libs/uart.c:503: v_num_u32 = va_arg(argp, uint32_t);            
      000947 E5 41            [12] 1314 	mov	a,_bp
      000949 24 05            [12] 1315 	add	a,#0x05
      00094B F8               [12] 1316 	mov	r0,a
      00094C E6               [12] 1317 	mov	a,@r0
      00094D 24 FC            [12] 1318 	add	a,#0xfc
      00094F FF               [12] 1319 	mov	r7,a
      000950 E5 41            [12] 1320 	mov	a,_bp
      000952 24 05            [12] 1321 	add	a,#0x05
      000954 F8               [12] 1322 	mov	r0,a
      000955 A6 07            [24] 1323 	mov	@r0,ar7
      000957 8F 01            [24] 1324 	mov	ar1,r7
      000959 87 04            [24] 1325 	mov	ar4,@r1
      00095B 09               [12] 1326 	inc	r1
      00095C 87 05            [24] 1327 	mov	ar5,@r1
      00095E 09               [12] 1328 	inc	r1
      00095F 87 06            [24] 1329 	mov	ar6,@r1
      000961 09               [12] 1330 	inc	r1
      000962 87 07            [24] 1331 	mov	ar7,@r1
      000964 19               [12] 1332 	dec	r1
      000965 19               [12] 1333 	dec	r1
      000966 19               [12] 1334 	dec	r1
                                   1335 ;	src/libs/uart.c:505: if(v_numOfDigitsToTransmit_u8 == C_MaxDigitsToTransmitUsingPrintf_U8)
      000967 A8 41            [24] 1336 	mov	r0,_bp
      000969 08               [12] 1337 	inc	r0
      00096A B6 FF 05         [24] 1338 	cjne	@r0,#0xff,00126$
                                   1339 ;	src/libs/uart.c:506: v_numOfDigitsToTransmit_u8 = 32;        
      00096D A8 41            [24] 1340 	mov	r0,_bp
      00096F 08               [12] 1341 	inc	r0
      000970 76 20            [12] 1342 	mov	@r0,#0x20
      000972                       1343 00126$:
                                   1344 ;	src/libs/uart.c:508: UART_TxNumber(C_BINARY_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
      000972 8C 2F            [24] 1345 	mov	_UART_TxNumber_PARM_2,r4
      000974 8D 30            [24] 1346 	mov	(_UART_TxNumber_PARM_2 + 1),r5
      000976 8E 31            [24] 1347 	mov	(_UART_TxNumber_PARM_2 + 2),r6
      000978 8F 32            [24] 1348 	mov	(_UART_TxNumber_PARM_2 + 3),r7
      00097A A8 41            [24] 1349 	mov	r0,_bp
      00097C 08               [12] 1350 	inc	r0
      00097D 86 33            [24] 1351 	mov	_UART_TxNumber_PARM_3,@r0
      00097F 75 82 02         [24] 1352 	mov	dpl,#0x02
      000982 12 05 46         [24] 1353 	lcall	_UART_TxNumber
                                   1354 ;	src/libs/uart.c:509: break;
                                   1355 ;	src/libs/uart.c:522: case 's': /* Argument type is of string, hence get the pointer to sting passed */
      000985 80 34            [24] 1356 	sjmp	00139$
      000987                       1357 00130$:
                                   1358 ;	src/libs/uart.c:523: str = va_arg(argp, char *);
      000987 E5 41            [12] 1359 	mov	a,_bp
      000989 24 05            [12] 1360 	add	a,#0x05
      00098B F8               [12] 1361 	mov	r0,a
      00098C E6               [12] 1362 	mov	a,@r0
      00098D 24 FD            [12] 1363 	add	a,#0xfd
      00098F FF               [12] 1364 	mov	r7,a
      000990 E5 41            [12] 1365 	mov	a,_bp
      000992 24 05            [12] 1366 	add	a,#0x05
      000994 F8               [12] 1367 	mov	r0,a
      000995 A6 07            [24] 1368 	mov	@r0,ar7
      000997 8F 01            [24] 1369 	mov	ar1,r7
      000999 87 05            [24] 1370 	mov	ar5,@r1
      00099B 09               [12] 1371 	inc	r1
      00099C 87 06            [24] 1372 	mov	ar6,@r1
      00099E 09               [12] 1373 	inc	r1
      00099F 87 07            [24] 1374 	mov	ar7,@r1
      0009A1 19               [12] 1375 	dec	r1
      0009A2 19               [12] 1376 	dec	r1
                                   1377 ;	src/libs/uart.c:524: UART_TxString(str);            
      0009A3 8D 82            [24] 1378 	mov	dpl,r5
      0009A5 8E 83            [24] 1379 	mov	dph,r6
      0009A7 8F F0            [24] 1380 	mov	b,r7
      0009A9 12 04 BA         [24] 1381 	lcall	_UART_TxString
                                   1382 ;	src/libs/uart.c:525: break;
                                   1383 ;	src/libs/uart.c:527: case '%':
      0009AC 80 0D            [24] 1384 	sjmp	00139$
      0009AE                       1385 00131$:
                                   1386 ;	src/libs/uart.c:528: UART_TxChar('%');
      0009AE 75 82 25         [24] 1387 	mov	dpl,#0x25
      0009B1 12 04 B1         [24] 1388 	lcall	_UART_TxChar
                                   1389 ;	src/libs/uart.c:530: }
      0009B4 80 05            [24] 1390 	sjmp	00139$
      0009B6                       1391 00134$:
                                   1392 ;	src/libs/uart.c:535: UART_TxChar(ch);
      0009B6 8B 82            [24] 1393 	mov	dpl,r3
      0009B8 12 04 B1         [24] 1394 	lcall	_UART_TxChar
      0009BB                       1395 00139$:
                                   1396 ;	src/libs/uart.c:420: for(ptr = argList; *ptr != '\0'; ptr++)
      0009BB A8 41            [24] 1397 	mov	r0,_bp
      0009BD 08               [12] 1398 	inc	r0
      0009BE 08               [12] 1399 	inc	r0
      0009BF 06               [12] 1400 	inc	@r0
      0009C0 B6 00 02         [24] 1401 	cjne	@r0,#0x00,00310$
      0009C3 08               [12] 1402 	inc	r0
      0009C4 06               [12] 1403 	inc	@r0
      0009C5                       1404 00310$:
      0009C5 02 06 A1         [24] 1405 	ljmp	00138$
                                   1406 ;	src/libs/uart.c:539: va_end(argp);
      0009C8                       1407 00140$:
                                   1408 ;	src/libs/uart.c:540: }
      0009C8 85 41 81         [24] 1409 	mov	sp,_bp
      0009CB D0 41            [24] 1410 	pop	_bp
      0009CD 22               [24] 1411 	ret
                                   1412 	.area CSEG    (CODE)
                                   1413 	.area CONST   (CODE)
                                   1414 	.area XINIT   (CODE)
                                   1415 	.area CABS    (ABS,CODE)
