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
                                     11 	.globl _CY
                                     12 	.globl _AC
                                     13 	.globl _F0
                                     14 	.globl _RS1
                                     15 	.globl _RS0
                                     16 	.globl _OV
                                     17 	.globl _FL
                                     18 	.globl _P
                                     19 	.globl _TF2
                                     20 	.globl _EXF2
                                     21 	.globl _RCLK
                                     22 	.globl _TCLK
                                     23 	.globl _EXEN2
                                     24 	.globl _TR2
                                     25 	.globl _C_T2
                                     26 	.globl _CP_RL2
                                     27 	.globl _T2CON_7
                                     28 	.globl _T2CON_6
                                     29 	.globl _T2CON_5
                                     30 	.globl _T2CON_4
                                     31 	.globl _T2CON_3
                                     32 	.globl _T2CON_2
                                     33 	.globl _T2CON_1
                                     34 	.globl _T2CON_0
                                     35 	.globl _PT2
                                     36 	.globl _PS
                                     37 	.globl _PT1
                                     38 	.globl _PX1
                                     39 	.globl _PT0
                                     40 	.globl _PX0
                                     41 	.globl _RD
                                     42 	.globl _WR
                                     43 	.globl _T1
                                     44 	.globl _T0
                                     45 	.globl _INT1
                                     46 	.globl _INT0
                                     47 	.globl _TXD
                                     48 	.globl _RXD
                                     49 	.globl _P3_7
                                     50 	.globl _P3_6
                                     51 	.globl _P3_5
                                     52 	.globl _P3_4
                                     53 	.globl _P3_3
                                     54 	.globl _P3_2
                                     55 	.globl _P3_1
                                     56 	.globl _P3_0
                                     57 	.globl _EA
                                     58 	.globl _ET2
                                     59 	.globl _ES
                                     60 	.globl _ET1
                                     61 	.globl _EX1
                                     62 	.globl _ET0
                                     63 	.globl _EX0
                                     64 	.globl _P2_7
                                     65 	.globl _P2_6
                                     66 	.globl _P2_5
                                     67 	.globl _P2_4
                                     68 	.globl _P2_3
                                     69 	.globl _P2_2
                                     70 	.globl _P2_1
                                     71 	.globl _P2_0
                                     72 	.globl _SM0
                                     73 	.globl _SM1
                                     74 	.globl _SM2
                                     75 	.globl _REN
                                     76 	.globl _TB8
                                     77 	.globl _RB8
                                     78 	.globl _TI
                                     79 	.globl _RI
                                     80 	.globl _T2EX
                                     81 	.globl _T2
                                     82 	.globl _P1_7
                                     83 	.globl _P1_6
                                     84 	.globl _P1_5
                                     85 	.globl _P1_4
                                     86 	.globl _P1_3
                                     87 	.globl _P1_2
                                     88 	.globl _P1_1
                                     89 	.globl _P1_0
                                     90 	.globl _TF1
                                     91 	.globl _TR1
                                     92 	.globl _TF0
                                     93 	.globl _TR0
                                     94 	.globl _IE1
                                     95 	.globl _IT1
                                     96 	.globl _IE0
                                     97 	.globl _IT0
                                     98 	.globl _P0_7
                                     99 	.globl _P0_6
                                    100 	.globl _P0_5
                                    101 	.globl _P0_4
                                    102 	.globl _P0_3
                                    103 	.globl _P0_2
                                    104 	.globl _P0_1
                                    105 	.globl _P0_0
                                    106 	.globl _P_NC
                                    107 	.globl _B
                                    108 	.globl _A
                                    109 	.globl _ACC
                                    110 	.globl _PSW
                                    111 	.globl _TH2
                                    112 	.globl _TL2
                                    113 	.globl _RCAP2H
                                    114 	.globl _RCAP2L
                                    115 	.globl _T2MOD
                                    116 	.globl _T2CON
                                    117 	.globl _IP
                                    118 	.globl _P3
                                    119 	.globl _IE
                                    120 	.globl _P2
                                    121 	.globl _SBUF
                                    122 	.globl _SCON
                                    123 	.globl _P1
                                    124 	.globl _TH1
                                    125 	.globl _TH0
                                    126 	.globl _TL1
                                    127 	.globl _TL0
                                    128 	.globl _TMOD
                                    129 	.globl _TCON
                                    130 	.globl _PCON
                                    131 	.globl _DPH
                                    132 	.globl _DPL
                                    133 	.globl _SP
                                    134 	.globl _P0
                                    135 	.globl _UART_TxNumber_PARM_3
                                    136 	.globl _UART_TxNumber_PARM_2
                                    137 	.globl _UART_Init
                                    138 	.globl _UART_SetBaudRate
                                    139 	.globl _UART_RxChar
                                    140 	.globl _UART_TxChar
                                    141 	.globl _UART_TxString
                                    142 	.globl _UART_RxString
                                    143 	.globl _UART_TxNumber
                                    144 	.globl _UART_Printf
                                    145 ;--------------------------------------------------------
                                    146 ; special function registers
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0	=	0x0080
                           000081   151 _SP	=	0x0081
                           000082   152 _DPL	=	0x0082
                           000083   153 _DPH	=	0x0083
                           000087   154 _PCON	=	0x0087
                           000088   155 _TCON	=	0x0088
                           000089   156 _TMOD	=	0x0089
                           00008A   157 _TL0	=	0x008a
                           00008B   158 _TL1	=	0x008b
                           00008C   159 _TH0	=	0x008c
                           00008D   160 _TH1	=	0x008d
                           000090   161 _P1	=	0x0090
                           000098   162 _SCON	=	0x0098
                           000099   163 _SBUF	=	0x0099
                           0000A0   164 _P2	=	0x00a0
                           0000A8   165 _IE	=	0x00a8
                           0000B0   166 _P3	=	0x00b0
                           0000B8   167 _IP	=	0x00b8
                           0000C8   168 _T2CON	=	0x00c8
                           0000C9   169 _T2MOD	=	0x00c9
                           0000CA   170 _RCAP2L	=	0x00ca
                           0000CB   171 _RCAP2H	=	0x00cb
                           0000CC   172 _TL2	=	0x00cc
                           0000CD   173 _TH2	=	0x00cd
                           0000D0   174 _PSW	=	0x00d0
                           0000E0   175 _ACC	=	0x00e0
                           0000E0   176 _A	=	0x00e0
                           0000F0   177 _B	=	0x00f0
                                    178 ;--------------------------------------------------------
                                    179 ; special function bits
                                    180 ;--------------------------------------------------------
                                    181 	.area RSEG    (ABS,DATA)
      000000                        182 	.org 0x0000
                           0000FF   183 _P_NC	=	0x00ff
                           000080   184 _P0_0	=	0x0080
                           000081   185 _P0_1	=	0x0081
                           000082   186 _P0_2	=	0x0082
                           000083   187 _P0_3	=	0x0083
                           000084   188 _P0_4	=	0x0084
                           000085   189 _P0_5	=	0x0085
                           000086   190 _P0_6	=	0x0086
                           000087   191 _P0_7	=	0x0087
                           000088   192 _IT0	=	0x0088
                           000089   193 _IE0	=	0x0089
                           00008A   194 _IT1	=	0x008a
                           00008B   195 _IE1	=	0x008b
                           00008C   196 _TR0	=	0x008c
                           00008D   197 _TF0	=	0x008d
                           00008E   198 _TR1	=	0x008e
                           00008F   199 _TF1	=	0x008f
                           000090   200 _P1_0	=	0x0090
                           000091   201 _P1_1	=	0x0091
                           000092   202 _P1_2	=	0x0092
                           000093   203 _P1_3	=	0x0093
                           000094   204 _P1_4	=	0x0094
                           000095   205 _P1_5	=	0x0095
                           000096   206 _P1_6	=	0x0096
                           000097   207 _P1_7	=	0x0097
                           000090   208 _T2	=	0x0090
                           000091   209 _T2EX	=	0x0091
                           000098   210 _RI	=	0x0098
                           000099   211 _TI	=	0x0099
                           00009A   212 _RB8	=	0x009a
                           00009B   213 _TB8	=	0x009b
                           00009C   214 _REN	=	0x009c
                           00009D   215 _SM2	=	0x009d
                           00009E   216 _SM1	=	0x009e
                           00009F   217 _SM0	=	0x009f
                           0000A0   218 _P2_0	=	0x00a0
                           0000A1   219 _P2_1	=	0x00a1
                           0000A2   220 _P2_2	=	0x00a2
                           0000A3   221 _P2_3	=	0x00a3
                           0000A4   222 _P2_4	=	0x00a4
                           0000A5   223 _P2_5	=	0x00a5
                           0000A6   224 _P2_6	=	0x00a6
                           0000A7   225 _P2_7	=	0x00a7
                           0000A8   226 _EX0	=	0x00a8
                           0000A9   227 _ET0	=	0x00a9
                           0000AA   228 _EX1	=	0x00aa
                           0000AB   229 _ET1	=	0x00ab
                           0000AC   230 _ES	=	0x00ac
                           0000AD   231 _ET2	=	0x00ad
                           0000AF   232 _EA	=	0x00af
                           0000B0   233 _P3_0	=	0x00b0
                           0000B1   234 _P3_1	=	0x00b1
                           0000B2   235 _P3_2	=	0x00b2
                           0000B3   236 _P3_3	=	0x00b3
                           0000B4   237 _P3_4	=	0x00b4
                           0000B5   238 _P3_5	=	0x00b5
                           0000B6   239 _P3_6	=	0x00b6
                           0000B7   240 _P3_7	=	0x00b7
                           0000B0   241 _RXD	=	0x00b0
                           0000B1   242 _TXD	=	0x00b1
                           0000B2   243 _INT0	=	0x00b2
                           0000B3   244 _INT1	=	0x00b3
                           0000B4   245 _T0	=	0x00b4
                           0000B5   246 _T1	=	0x00b5
                           0000B6   247 _WR	=	0x00b6
                           0000B7   248 _RD	=	0x00b7
                           0000B8   249 _PX0	=	0x00b8
                           0000B9   250 _PT0	=	0x00b9
                           0000BA   251 _PX1	=	0x00ba
                           0000BB   252 _PT1	=	0x00bb
                           0000BC   253 _PS	=	0x00bc
                           0000BD   254 _PT2	=	0x00bd
                           0000C8   255 _T2CON_0	=	0x00c8
                           0000C9   256 _T2CON_1	=	0x00c9
                           0000CA   257 _T2CON_2	=	0x00ca
                           0000CB   258 _T2CON_3	=	0x00cb
                           0000CC   259 _T2CON_4	=	0x00cc
                           0000CD   260 _T2CON_5	=	0x00cd
                           0000CE   261 _T2CON_6	=	0x00ce
                           0000CF   262 _T2CON_7	=	0x00cf
                           0000C8   263 _CP_RL2	=	0x00c8
                           0000C9   264 _C_T2	=	0x00c9
                           0000CA   265 _TR2	=	0x00ca
                           0000CB   266 _EXEN2	=	0x00cb
                           0000CC   267 _TCLK	=	0x00cc
                           0000CD   268 _RCLK	=	0x00cd
                           0000CE   269 _EXF2	=	0x00ce
                           0000CF   270 _TF2	=	0x00cf
                           0000D0   271 _P	=	0x00d0
                           0000D1   272 _FL	=	0x00d1
                           0000D2   273 _OV	=	0x00d2
                           0000D3   274 _RS0	=	0x00d3
                           0000D4   275 _RS1	=	0x00d4
                           0000D5   276 _F0	=	0x00d5
                           0000D6   277 _AC	=	0x00d6
                           0000D7   278 _CY	=	0x00d7
                                    279 ;--------------------------------------------------------
                                    280 ; overlayable register banks
                                    281 ;--------------------------------------------------------
                                    282 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        283 	.ds 8
                                    284 ;--------------------------------------------------------
                                    285 ; internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area DSEG    (DATA)
      00003A                        288 _UART_TxNumber_PARM_2:
      00003A                        289 	.ds 4
      00003E                        290 _UART_TxNumber_PARM_3:
      00003E                        291 	.ds 1
      00003F                        292 _UART_TxNumber_v_numericSystem_u8_65536_28:
      00003F                        293 	.ds 1
      000040                        294 _UART_TxNumber_i_65536_29:
      000040                        295 	.ds 1
      000041                        296 _UART_TxNumber_a_65536_29:
      000041                        297 	.ds 10
      00004B                        298 _UART_TxNumber_sloc0_1_0:
      00004B                        299 	.ds 1
                                    300 ;--------------------------------------------------------
                                    301 ; overlayable items in internal ram 
                                    302 ;--------------------------------------------------------
                                    303 	.area	OSEG    (OVR,DATA)
                                    304 ;--------------------------------------------------------
                                    305 ; indirectly addressable internal ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area ISEG    (DATA)
                                    308 ;--------------------------------------------------------
                                    309 ; absolute internal ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area IABS    (ABS,DATA)
                                    312 	.area IABS    (ABS,DATA)
                                    313 ;--------------------------------------------------------
                                    314 ; bit data
                                    315 ;--------------------------------------------------------
                                    316 	.area BSEG    (BIT)
                                    317 ;--------------------------------------------------------
                                    318 ; paged external ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area PSEG    (PAG,XDATA)
                                    321 ;--------------------------------------------------------
                                    322 ; external ram data
                                    323 ;--------------------------------------------------------
                                    324 	.area XSEG    (XDATA)
                                    325 ;--------------------------------------------------------
                                    326 ; absolute external ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area XABS    (ABS,XDATA)
                                    329 ;--------------------------------------------------------
                                    330 ; external initialized ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area XISEG   (XDATA)
                                    333 	.area HOME    (CODE)
                                    334 	.area GSINIT0 (CODE)
                                    335 	.area GSINIT1 (CODE)
                                    336 	.area GSINIT2 (CODE)
                                    337 	.area GSINIT3 (CODE)
                                    338 	.area GSINIT4 (CODE)
                                    339 	.area GSINIT5 (CODE)
                                    340 	.area GSINIT  (CODE)
                                    341 	.area GSFINAL (CODE)
                                    342 	.area CSEG    (CODE)
                                    343 ;--------------------------------------------------------
                                    344 ; global & static initialisations
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
                                    347 	.area GSINIT  (CODE)
                                    348 	.area GSFINAL (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 ;--------------------------------------------------------
                                    351 ; Home
                                    352 ;--------------------------------------------------------
                                    353 	.area HOME    (CODE)
                                    354 	.area HOME    (CODE)
                                    355 ;--------------------------------------------------------
                                    356 ; code
                                    357 ;--------------------------------------------------------
                                    358 	.area CSEG    (CODE)
                                    359 ;------------------------------------------------------------
                                    360 ;Allocation info for local variables in function 'UART_Init'
                                    361 ;------------------------------------------------------------
                                    362 ;v_baudRate_u32            Allocated to registers r4 r5 r6 r7 
                                    363 ;------------------------------------------------------------
                                    364 ;	src/libs/uart.c:54: void UART_Init(uint32_t v_baudRate_u32)
                                    365 ;	-----------------------------------------
                                    366 ;	 function UART_Init
                                    367 ;	-----------------------------------------
      00042E                        368 _UART_Init:
                           000007   369 	ar7 = 0x07
                           000006   370 	ar6 = 0x06
                           000005   371 	ar5 = 0x05
                           000004   372 	ar4 = 0x04
                           000003   373 	ar3 = 0x03
                           000002   374 	ar2 = 0x02
                           000001   375 	ar1 = 0x01
                           000000   376 	ar0 = 0x00
      00042E AC 82            [24]  377 	mov	r4,dpl
      000430 AD 83            [24]  378 	mov	r5,dph
      000432 AE F0            [24]  379 	mov	r6,b
      000434 FF               [12]  380 	mov	r7,a
                                    381 ;	src/libs/uart.c:56: TMOD |= 0x20; //Timer1 in Mode2.
      000435 43 89 20         [24]  382 	orl	_TMOD,#0x20
                                    383 ;	src/libs/uart.c:57: SCON=0x50;    // Asynchronous mode, 8-bit data and 1-stop bit
      000438 75 98 50         [24]  384 	mov	_SCON,#0x50
                                    385 ;	src/libs/uart.c:58: TR1=1;        //Turn ON the timer for Baud rate generation
                                    386 ;	assignBit
      00043B D2 8E            [12]  387 	setb	_TR1
                                    388 ;	src/libs/uart.c:59: UART_SetBaudRate(v_baudRate_u32);
      00043D 8C 82            [24]  389 	mov	dpl,r4
      00043F 8D 83            [24]  390 	mov	dph,r5
      000441 8E F0            [24]  391 	mov	b,r6
      000443 EF               [12]  392 	mov	a,r7
                                    393 ;	src/libs/uart.c:60: }
      000444 02 04 47         [24]  394 	ljmp	_UART_SetBaudRate
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'UART_SetBaudRate'
                                    397 ;------------------------------------------------------------
                                    398 ;v_baudRate_u32            Allocated to registers r4 r5 r6 r7 
                                    399 ;RegValue                  Allocated to registers r7 
                                    400 ;------------------------------------------------------------
                                    401 ;	src/libs/uart.c:79: void UART_SetBaudRate(uint32_t v_baudRate_u32)
                                    402 ;	-----------------------------------------
                                    403 ;	 function UART_SetBaudRate
                                    404 ;	-----------------------------------------
      000447                        405 _UART_SetBaudRate:
      000447 AC 82            [24]  406 	mov	r4,dpl
      000449 AD 83            [24]  407 	mov	r5,dph
      00044B AE F0            [24]  408 	mov	r6,b
      00044D FF               [12]  409 	mov	r7,a
                                    410 ;	src/libs/uart.c:83: if((v_baudRate_u32 >= C_MinBaudRate_U32) && (v_baudRate_u32<=C_MaxBaudRate_U32))
      00044E C3               [12]  411 	clr	c
      00044F EC               [12]  412 	mov	a,r4
      000450 94 60            [12]  413 	subb	a,#0x60
      000452 ED               [12]  414 	mov	a,r5
      000453 94 09            [12]  415 	subb	a,#0x09
      000455 EE               [12]  416 	mov	a,r6
      000456 94 00            [12]  417 	subb	a,#0x00
      000458 EF               [12]  418 	mov	a,r7
      000459 94 00            [12]  419 	subb	a,#0x00
      00045B 40 3E            [24]  420 	jc	00102$
      00045D E4               [12]  421 	clr	a
      00045E 9C               [12]  422 	subb	a,r4
      00045F 74 C2            [12]  423 	mov	a,#0xc2
      000461 9D               [12]  424 	subb	a,r5
      000462 74 01            [12]  425 	mov	a,#0x01
      000464 9E               [12]  426 	subb	a,r6
      000465 E4               [12]  427 	clr	a
      000466 9F               [12]  428 	subb	a,r7
      000467 40 32            [24]  429 	jc	00102$
                                    430 ;	src/libs/uart.c:87: RegValue = M_GetBaudRateGeneratorValue(v_baudRate_u32);
      000469 8C 4D            [24]  431 	mov	__mullong_PARM_2,r4
      00046B 8D 4E            [24]  432 	mov	(__mullong_PARM_2 + 1),r5
      00046D 8E 4F            [24]  433 	mov	(__mullong_PARM_2 + 2),r6
      00046F 8F 50            [24]  434 	mov	(__mullong_PARM_2 + 3),r7
      000471 90 01 80         [24]  435 	mov	dptr,#0x0180
      000474 E4               [12]  436 	clr	a
      000475 F5 F0            [12]  437 	mov	b,a
      000477 12 0A 70         [24]  438 	lcall	__mullong
      00047A 85 82 4D         [24]  439 	mov	__divulong_PARM_2,dpl
      00047D 85 83 4E         [24]  440 	mov	(__divulong_PARM_2 + 1),dph
      000480 85 F0 4F         [24]  441 	mov	(__divulong_PARM_2 + 2),b
      000483 F5 50            [12]  442 	mov	(__divulong_PARM_2 + 3),a
      000485 90 C0 00         [24]  443 	mov	dptr,#0xc000
      000488 75 F0 A8         [24]  444 	mov	b,#0xa8
      00048B E4               [12]  445 	clr	a
      00048C 12 09 E3         [24]  446 	lcall	__divulong
      00048F AC 82            [24]  447 	mov	r4,dpl
      000491 AD 83            [24]  448 	mov	r5,dph
      000493 AE F0            [24]  449 	mov	r6,b
      000495 C3               [12]  450 	clr	c
      000496 E4               [12]  451 	clr	a
      000497 9C               [12]  452 	subb	a,r4
      000498 FF               [12]  453 	mov	r7,a
      000499 80 02            [24]  454 	sjmp	00103$
      00049B                        455 00102$:
                                    456 ;	src/libs/uart.c:92: RegValue = M_GetBaudRateGeneratorValue(9600);
      00049B 7F 5D            [12]  457 	mov	r7,#0x5d
      00049D                        458 00103$:
                                    459 ;	src/libs/uart.c:95: TH1 = RegValue; 
      00049D 8F 8D            [24]  460 	mov	_TH1,r7
                                    461 ;	src/libs/uart.c:96: }
      00049F 22               [24]  462 	ret
                                    463 ;------------------------------------------------------------
                                    464 ;Allocation info for local variables in function 'UART_RxChar'
                                    465 ;------------------------------------------------------------
                                    466 ;	src/libs/uart.c:111: char UART_RxChar(void)
                                    467 ;	-----------------------------------------
                                    468 ;	 function UART_RxChar
                                    469 ;	-----------------------------------------
      0004A0                        470 _UART_RxChar:
                                    471 ;	src/libs/uart.c:113: while(RI==0);      // Wait till the data is received
      0004A0                        472 00101$:
                                    473 ;	src/libs/uart.c:114: RI=0;             // Clear Receive Interrupt Flag for next cycle
                                    474 ;	assignBit
      0004A0 10 98 02         [24]  475 	jbc	_RI,00114$
      0004A3 80 FB            [24]  476 	sjmp	00101$
      0004A5                        477 00114$:
                                    478 ;	src/libs/uart.c:116: return(SBUF);      // return the received char
      0004A5 85 99 82         [24]  479 	mov	dpl,_SBUF
                                    480 ;	src/libs/uart.c:117: }
      0004A8 22               [24]  481 	ret
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'UART_TxChar'
                                    484 ;------------------------------------------------------------
                                    485 ;v_uartData_u8             Allocated to registers 
                                    486 ;------------------------------------------------------------
                                    487 ;	src/libs/uart.c:134: void UART_TxChar(char v_uartData_u8)
                                    488 ;	-----------------------------------------
                                    489 ;	 function UART_TxChar
                                    490 ;	-----------------------------------------
      0004A9                        491 _UART_TxChar:
      0004A9 85 82 99         [24]  492 	mov	_SBUF,dpl
                                    493 ;	src/libs/uart.c:137: while(TI==0);       // Wait till the data is trasmitted
      0004AC                        494 00101$:
                                    495 ;	src/libs/uart.c:138: TI=0;                //Clear the Tx flag for next cycle.
                                    496 ;	assignBit
      0004AC 10 99 02         [24]  497 	jbc	_TI,00114$
      0004AF 80 FB            [24]  498 	sjmp	00101$
      0004B1                        499 00114$:
                                    500 ;	src/libs/uart.c:139: }
      0004B1 22               [24]  501 	ret
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'UART_TxString'
                                    504 ;------------------------------------------------------------
                                    505 ;ptr_string                Allocated to registers 
                                    506 ;------------------------------------------------------------
                                    507 ;	src/libs/uart.c:158: void UART_TxString(char *ptr_string)
                                    508 ;	-----------------------------------------
                                    509 ;	 function UART_TxString
                                    510 ;	-----------------------------------------
      0004B2                        511 _UART_TxString:
      0004B2 AD 82            [24]  512 	mov	r5,dpl
      0004B4 AE 83            [24]  513 	mov	r6,dph
      0004B6 AF F0            [24]  514 	mov	r7,b
                                    515 ;	src/libs/uart.c:160: while(*ptr_string)
      0004B8                        516 00101$:
      0004B8 8D 82            [24]  517 	mov	dpl,r5
      0004BA 8E 83            [24]  518 	mov	dph,r6
      0004BC 8F F0            [24]  519 	mov	b,r7
      0004BE 12 0B 60         [24]  520 	lcall	__gptrget
      0004C1 FC               [12]  521 	mov	r4,a
      0004C2 60 18            [24]  522 	jz	00104$
                                    523 ;	src/libs/uart.c:161: UART_TxChar(*ptr_string++);// Loop through the string and transmit char by char
      0004C4 8C 82            [24]  524 	mov	dpl,r4
      0004C6 0D               [12]  525 	inc	r5
      0004C7 BD 00 01         [24]  526 	cjne	r5,#0x00,00116$
      0004CA 0E               [12]  527 	inc	r6
      0004CB                        528 00116$:
      0004CB C0 07            [24]  529 	push	ar7
      0004CD C0 06            [24]  530 	push	ar6
      0004CF C0 05            [24]  531 	push	ar5
      0004D1 12 04 A9         [24]  532 	lcall	_UART_TxChar
      0004D4 D0 05            [24]  533 	pop	ar5
      0004D6 D0 06            [24]  534 	pop	ar6
      0004D8 D0 07            [24]  535 	pop	ar7
      0004DA 80 DC            [24]  536 	sjmp	00101$
      0004DC                        537 00104$:
                                    538 ;	src/libs/uart.c:162: }
      0004DC 22               [24]  539 	ret
                                    540 ;------------------------------------------------------------
                                    541 ;Allocation info for local variables in function 'UART_RxString'
                                    542 ;------------------------------------------------------------
                                    543 ;ptr_string                Allocated to registers r5 r6 r7 
                                    544 ;ch                        Allocated to registers r3 
                                    545 ;len                       Allocated to registers r4 
                                    546 ;------------------------------------------------------------
                                    547 ;	src/libs/uart.c:187: uint8_t UART_RxString(char *ptr_string)
                                    548 ;	-----------------------------------------
                                    549 ;	 function UART_RxString
                                    550 ;	-----------------------------------------
      0004DD                        551 _UART_RxString:
      0004DD AD 82            [24]  552 	mov	r5,dpl
      0004DF AE 83            [24]  553 	mov	r6,dph
      0004E1 AF F0            [24]  554 	mov	r7,b
                                    555 ;	src/libs/uart.c:190: uint8_t len = 0;
      0004E3 7C 00            [12]  556 	mov	r4,#0x00
                                    557 ;	src/libs/uart.c:191: while(1)
      0004E5                        558 00110$:
                                    559 ;	src/libs/uart.c:193: ch=UART_RxChar();    //Receive a char
      0004E5 C0 07            [24]  560 	push	ar7
      0004E7 C0 06            [24]  561 	push	ar6
      0004E9 C0 05            [24]  562 	push	ar5
      0004EB C0 04            [24]  563 	push	ar4
      0004ED 12 04 A0         [24]  564 	lcall	_UART_RxChar
                                    565 ;	src/libs/uart.c:194: UART_TxChar(ch);     //Echo back the received char
      0004F0 AB 82            [24]  566 	mov  r3,dpl
      0004F2 C0 03            [24]  567 	push	ar3
      0004F4 12 04 A9         [24]  568 	lcall	_UART_TxChar
      0004F7 D0 03            [24]  569 	pop	ar3
      0004F9 D0 04            [24]  570 	pop	ar4
      0004FB D0 05            [24]  571 	pop	ar5
      0004FD D0 06            [24]  572 	pop	ar6
      0004FF D0 07            [24]  573 	pop	ar7
                                    574 ;	src/libs/uart.c:196: if((ch=='\r') || (ch=='\n')) //read till enter key is pressed
      000501 BB 0D 02         [24]  575 	cjne	r3,#0x0d,00130$
      000504 80 03            [24]  576 	sjmp	00105$
      000506                        577 00130$:
      000506 BB 0A 14         [24]  578 	cjne	r3,#0x0a,00106$
      000509                        579 00105$:
                                    580 ;	src/libs/uart.c:198: ptr_string[len]=0;           //and break the loop
      000509 EC               [12]  581 	mov	a,r4
      00050A 2D               [12]  582 	add	a,r5
      00050B F8               [12]  583 	mov	r0,a
      00050C E4               [12]  584 	clr	a
      00050D 3E               [12]  585 	addc	a,r6
      00050E F9               [12]  586 	mov	r1,a
      00050F 8F 02            [24]  587 	mov	ar2,r7
      000511 88 82            [24]  588 	mov	dpl,r0
      000513 89 83            [24]  589 	mov	dph,r1
      000515 8A F0            [24]  590 	mov	b,r2
      000517 E4               [12]  591 	clr	a
      000518 12 0A 48         [24]  592 	lcall	__gptrput
                                    593 ;	src/libs/uart.c:199: break;                  
      00051B 80 1E            [24]  594 	sjmp	00111$
      00051D                        595 00106$:
                                    596 ;	src/libs/uart.c:201: else if((ch=='\b') && (len!=0))
      00051D BB 08 06         [24]  597 	cjne	r3,#0x08,00102$
      000520 EC               [12]  598 	mov	a,r4
      000521 60 03            [24]  599 	jz	00102$
                                    600 ;	src/libs/uart.c:203: len--;    //If backspace is pressed then decrement the index to remove the old char
      000523 1C               [12]  601 	dec	r4
      000524 80 BF            [24]  602 	sjmp	00110$
      000526                        603 00102$:
                                    604 ;	src/libs/uart.c:207: ptr_string[len]=ch; //copy the char into string and increment the index
      000526 EC               [12]  605 	mov	a,r4
      000527 2D               [12]  606 	add	a,r5
      000528 F8               [12]  607 	mov	r0,a
      000529 E4               [12]  608 	clr	a
      00052A 3E               [12]  609 	addc	a,r6
      00052B F9               [12]  610 	mov	r1,a
      00052C 8F 02            [24]  611 	mov	ar2,r7
      00052E 88 82            [24]  612 	mov	dpl,r0
      000530 89 83            [24]  613 	mov	dph,r1
      000532 8A F0            [24]  614 	mov	b,r2
      000534 EB               [12]  615 	mov	a,r3
      000535 12 0A 48         [24]  616 	lcall	__gptrput
                                    617 ;	src/libs/uart.c:208: len++;
      000538 0C               [12]  618 	inc	r4
      000539 80 AA            [24]  619 	sjmp	00110$
      00053B                        620 00111$:
                                    621 ;	src/libs/uart.c:211: return len;   
      00053B 8C 82            [24]  622 	mov	dpl,r4
                                    623 ;	src/libs/uart.c:212: }
      00053D 22               [24]  624 	ret
                                    625 ;------------------------------------------------------------
                                    626 ;Allocation info for local variables in function 'UART_TxNumber'
                                    627 ;------------------------------------------------------------
                                    628 ;v_number_u32              Allocated with name '_UART_TxNumber_PARM_2'
                                    629 ;v_numOfDigitsToTransmit_u8 Allocated with name '_UART_TxNumber_PARM_3'
                                    630 ;v_numericSystem_u8        Allocated with name '_UART_TxNumber_v_numericSystem_u8_65536_28'
                                    631 ;i                         Allocated with name '_UART_TxNumber_i_65536_29'
                                    632 ;a                         Allocated with name '_UART_TxNumber_a_65536_29'
                                    633 ;sloc0                     Allocated with name '_UART_TxNumber_sloc0_1_0'
                                    634 ;------------------------------------------------------------
                                    635 ;	src/libs/uart.c:249: void UART_TxNumber(uint8_t v_numericSystem_u8, uint32_t v_number_u32, uint8_t v_numOfDigitsToTransmit_u8)
                                    636 ;	-----------------------------------------
                                    637 ;	 function UART_TxNumber
                                    638 ;	-----------------------------------------
      00053E                        639 _UART_TxNumber:
      00053E 85 82 3F         [24]  640 	mov	_UART_TxNumber_v_numericSystem_u8_65536_28,dpl
                                    641 ;	src/libs/uart.c:253: if(C_BINARY_U8 == v_numericSystem_u8)
      000541 74 02            [12]  642 	mov	a,#0x02
      000543 B5 3F 4B         [24]  643 	cjne	a,_UART_TxNumber_v_numericSystem_u8_65536_28,00120$
                                    644 ;	src/libs/uart.c:255: while(v_numOfDigitsToTransmit_u8!=0)
      000546                        645 00101$:
      000546 E5 3E            [12]  646 	mov	a,_UART_TxNumber_PARM_3
      000548 70 01            [24]  647 	jnz	00194$
      00054A 22               [24]  648 	ret
      00054B                        649 00194$:
                                    650 ;	src/libs/uart.c:259: i = util_GetBitStatus(v_number_u32,(v_numOfDigitsToTransmit_u8-1));
      00054B E5 3E            [12]  651 	mov	a,_UART_TxNumber_PARM_3
      00054D 14               [12]  652 	dec	a
      00054E FE               [12]  653 	mov	r6,a
      00054F 8E F0            [24]  654 	mov	b,r6
      000551 05 F0            [12]  655 	inc	b
      000553 7C 01            [12]  656 	mov	r4,#0x01
      000555 7D 00            [12]  657 	mov	r5,#0x00
      000557 80 06            [24]  658 	sjmp	00196$
      000559                        659 00195$:
      000559 EC               [12]  660 	mov	a,r4
      00055A 2C               [12]  661 	add	a,r4
      00055B FC               [12]  662 	mov	r4,a
      00055C ED               [12]  663 	mov	a,r5
      00055D 33               [12]  664 	rlc	a
      00055E FD               [12]  665 	mov	r5,a
      00055F                        666 00196$:
      00055F D5 F0 F7         [24]  667 	djnz	b,00195$
      000562 ED               [12]  668 	mov	a,r5
      000563 33               [12]  669 	rlc	a
      000564 95 E0            [12]  670 	subb	a,acc
      000566 FB               [12]  671 	mov	r3,a
      000567 FA               [12]  672 	mov	r2,a
      000568 E5 3A            [12]  673 	mov	a,_UART_TxNumber_PARM_2
      00056A 52 04            [12]  674 	anl	ar4,a
      00056C E5 3B            [12]  675 	mov	a,(_UART_TxNumber_PARM_2 + 1)
      00056E 52 05            [12]  676 	anl	ar5,a
      000570 E5 3C            [12]  677 	mov	a,(_UART_TxNumber_PARM_2 + 2)
      000572 52 03            [12]  678 	anl	ar3,a
      000574 E5 3D            [12]  679 	mov	a,(_UART_TxNumber_PARM_2 + 3)
      000576 52 02            [12]  680 	anl	ar2,a
      000578 EC               [12]  681 	mov	a,r4
      000579 4D               [12]  682 	orl	a,r5
      00057A 4B               [12]  683 	orl	a,r3
      00057B 4A               [12]  684 	orl	a,r2
      00057C B4 01 00         [24]  685 	cjne	a,#0x01,00197$
      00057F                        686 00197$:
                                    687 ;	src/libs/uart.c:260: UART_TxChar(util_Dec2Ascii(i));
      00057F B3               [12]  688 	cpl	c
      000580 E4               [12]  689 	clr	a
      000581 33               [12]  690 	rlc	a
      000582 24 30            [12]  691 	add	a,#0x30
      000584 F5 82            [12]  692 	mov	dpl,a
      000586 C0 06            [24]  693 	push	ar6
      000588 12 04 A9         [24]  694 	lcall	_UART_TxChar
      00058B D0 06            [24]  695 	pop	ar6
                                    696 ;	src/libs/uart.c:261: v_numOfDigitsToTransmit_u8--;
      00058D 8E 3E            [24]  697 	mov	_UART_TxNumber_PARM_3,r6
      00058F 80 B5            [24]  698 	sjmp	00101$
      000591                        699 00120$:
                                    700 ;	src/libs/uart.c:264: else if(v_number_u32==0)
      000591 E5 3A            [12]  701 	mov	a,_UART_TxNumber_PARM_2
      000593 45 3B            [12]  702 	orl	a,(_UART_TxNumber_PARM_2 + 1)
      000595 45 3C            [12]  703 	orl	a,(_UART_TxNumber_PARM_2 + 2)
      000597 45 3D            [12]  704 	orl	a,(_UART_TxNumber_PARM_2 + 3)
                                    705 ;	src/libs/uart.c:267: for(i=0;((i<v_numOfDigitsToTransmit_u8) && (i<C_MaxDigitsToTransmit_U8)) ;i++)
      000599 70 1B            [24]  706 	jnz	00143$
      00059B FE               [12]  707 	mov	r6,a
      00059C                        708 00124$:
      00059C C3               [12]  709 	clr	c
      00059D EE               [12]  710 	mov	a,r6
      00059E 95 3E            [12]  711 	subb	a,_UART_TxNumber_PARM_3
      0005A0 40 01            [24]  712 	jc	00200$
      0005A2 22               [24]  713 	ret
      0005A3                        714 00200$:
      0005A3 BE 0A 00         [24]  715 	cjne	r6,#0x0a,00201$
      0005A6                        716 00201$:
      0005A6 40 01            [24]  717 	jc	00202$
      0005A8 22               [24]  718 	ret
      0005A9                        719 00202$:
                                    720 ;	src/libs/uart.c:268: UART_TxChar('0');
      0005A9 75 82 30         [24]  721 	mov	dpl,#0x30
      0005AC C0 06            [24]  722 	push	ar6
      0005AE 12 04 A9         [24]  723 	lcall	_UART_TxChar
      0005B1 D0 06            [24]  724 	pop	ar6
                                    725 ;	src/libs/uart.c:267: for(i=0;((i<v_numOfDigitsToTransmit_u8) && (i<C_MaxDigitsToTransmit_U8)) ;i++)
      0005B3 0E               [12]  726 	inc	r6
                                    727 ;	src/libs/uart.c:272: for(i=0;i<v_numOfDigitsToTransmit_u8;i++)
      0005B4 80 E6            [24]  728 	sjmp	00124$
      0005B6                        729 00143$:
      0005B6 74 FF            [12]  730 	mov	a,#0xff
      0005B8 B5 3E 04         [24]  731 	cjne	a,_UART_TxNumber_PARM_3,00203$
      0005BB 74 01            [12]  732 	mov	a,#0x01
      0005BD 80 01            [24]  733 	sjmp	00204$
      0005BF                        734 00203$:
      0005BF E4               [12]  735 	clr	a
      0005C0                        736 00204$:
      0005C0 F5 4B            [12]  737 	mov	_UART_TxNumber_sloc0_1_0,a
      0005C2 C3               [12]  738 	clr	c
      0005C3 74 0A            [12]  739 	mov	a,#0x0a
      0005C5 95 3E            [12]  740 	subb	a,_UART_TxNumber_PARM_3
      0005C7 E4               [12]  741 	clr	a
      0005C8 33               [12]  742 	rlc	a
      0005C9 FD               [12]  743 	mov	r5,a
      0005CA 75 40 00         [24]  744 	mov	_UART_TxNumber_i_65536_29,#0x00
      0005CD                        745 00127$:
      0005CD C3               [12]  746 	clr	c
      0005CE E5 40            [12]  747 	mov	a,_UART_TxNumber_i_65536_29
      0005D0 95 3E            [12]  748 	subb	a,_UART_TxNumber_PARM_3
      0005D2 50 66            [24]  749 	jnc	00146$
                                    750 ;	src/libs/uart.c:276: if(v_number_u32!=0)
      0005D4 E5 3A            [12]  751 	mov	a,_UART_TxNumber_PARM_2
      0005D6 45 3B            [12]  752 	orl	a,(_UART_TxNumber_PARM_2 + 1)
      0005D8 45 3C            [12]  753 	orl	a,(_UART_TxNumber_PARM_2 + 2)
      0005DA 45 3D            [12]  754 	orl	a,(_UART_TxNumber_PARM_2 + 3)
      0005DC 60 4A            [24]  755 	jz	00110$
                                    756 ;	src/libs/uart.c:284: a[i]=util_GetMod32(v_number_u32,v_numericSystem_u8);
      0005DE C0 05            [24]  757 	push	ar5
      0005E0 E5 40            [12]  758 	mov	a,_UART_TxNumber_i_65536_29
      0005E2 24 41            [12]  759 	add	a,#_UART_TxNumber_a_65536_29
      0005E4 F9               [12]  760 	mov	r1,a
      0005E5 85 3F 4D         [24]  761 	mov	__divulong_PARM_2,_UART_TxNumber_v_numericSystem_u8_65536_28
      0005E8 75 4E 00         [24]  762 	mov	(__divulong_PARM_2 + 1),#0x00
      0005EB 75 4F 00         [24]  763 	mov	(__divulong_PARM_2 + 2),#0x00
      0005EE 75 50 00         [24]  764 	mov	(__divulong_PARM_2 + 3),#0x00
      0005F1 85 3A 82         [24]  765 	mov	dpl,_UART_TxNumber_PARM_2
      0005F4 85 3B 83         [24]  766 	mov	dph,(_UART_TxNumber_PARM_2 + 1)
      0005F7 85 3C F0         [24]  767 	mov	b,(_UART_TxNumber_PARM_2 + 2)
      0005FA E5 3D            [12]  768 	mov	a,(_UART_TxNumber_PARM_2 + 3)
      0005FC C0 05            [24]  769 	push	ar5
      0005FE C0 01            [24]  770 	push	ar1
      000600 12 09 E3         [24]  771 	lcall	__divulong
      000603 AA 82            [24]  772 	mov	r2,dpl
      000605 AB 83            [24]  773 	mov	r3,dph
      000607 AC F0            [24]  774 	mov	r4,b
      000609 FF               [12]  775 	mov	r7,a
      00060A D0 01            [24]  776 	pop	ar1
      00060C D0 05            [24]  777 	pop	ar5
      00060E 8A 05            [24]  778 	mov	ar5,r2
      000610 85 3F F0         [24]  779 	mov	b,_UART_TxNumber_v_numericSystem_u8_65536_28
      000613 ED               [12]  780 	mov	a,r5
      000614 A4               [48]  781 	mul	ab
      000615 FD               [12]  782 	mov	r5,a
      000616 E5 3A            [12]  783 	mov	a,_UART_TxNumber_PARM_2
      000618 FE               [12]  784 	mov	r6,a
      000619 C3               [12]  785 	clr	c
      00061A 9D               [12]  786 	subb	a,r5
      00061B F7               [12]  787 	mov	@r1,a
                                    788 ;	src/libs/uart.c:285: v_number_u32=v_number_u32/v_numericSystem_u8;
      00061C 8A 3A            [24]  789 	mov	_UART_TxNumber_PARM_2,r2
      00061E 8B 3B            [24]  790 	mov	(_UART_TxNumber_PARM_2 + 1),r3
      000620 8C 3C            [24]  791 	mov	(_UART_TxNumber_PARM_2 + 2),r4
      000622 8F 3D            [24]  792 	mov	(_UART_TxNumber_PARM_2 + 3),r7
      000624 D0 05            [24]  793 	pop	ar5
      000626 80 0E            [24]  794 	sjmp	00128$
      000628                        795 00110$:
                                    796 ;	src/libs/uart.c:287: else if( (v_numOfDigitsToTransmit_u8 == C_DefaultDigitsToTransmit_U8) ||
      000628 E5 4B            [12]  797 	mov	a,_UART_TxNumber_sloc0_1_0
      00062A 70 0E            [24]  798 	jnz	00146$
                                    799 ;	src/libs/uart.c:288: (v_numOfDigitsToTransmit_u8 > C_MaxDigitsToTransmit_U8))
      00062C ED               [12]  800 	mov	a,r5
      00062D 70 0B            [24]  801 	jnz	00146$
                                    802 ;	src/libs/uart.c:299: a[i]=0;
      00062F E5 40            [12]  803 	mov	a,_UART_TxNumber_i_65536_29
      000631 24 41            [12]  804 	add	a,#_UART_TxNumber_a_65536_29
      000633 F8               [12]  805 	mov	r0,a
      000634 76 00            [12]  806 	mov	@r0,#0x00
      000636                        807 00128$:
                                    808 ;	src/libs/uart.c:272: for(i=0;i<v_numOfDigitsToTransmit_u8;i++)
      000636 05 40            [12]  809 	inc	_UART_TxNumber_i_65536_29
                                    810 ;	src/libs/uart.c:303: while(i)
      000638 80 93            [24]  811 	sjmp	00127$
      00063A                        812 00146$:
      00063A AF 40            [24]  813 	mov	r7,_UART_TxNumber_i_65536_29
      00063C                        814 00113$:
      00063C EF               [12]  815 	mov	a,r7
      00063D 60 30            [24]  816 	jz	00129$
                                    817 ;	src/libs/uart.c:306: UART_TxChar(util_Hex2Ascii(a[i-1]));
      00063F 8F 06            [24]  818 	mov	ar6,r7
      000641 EE               [12]  819 	mov	a,r6
      000642 14               [12]  820 	dec	a
      000643 24 41            [12]  821 	add	a,#_UART_TxNumber_a_65536_29
      000645 F9               [12]  822 	mov	r1,a
      000646 E7               [12]  823 	mov	a,@r1
      000647 24 F6            [12]  824 	add	a,#0xff - 0x09
      000649 50 0D            [24]  825 	jnc	00131$
      00064B EE               [12]  826 	mov	a,r6
      00064C 14               [12]  827 	dec	a
      00064D 24 41            [12]  828 	add	a,#_UART_TxNumber_a_65536_29
      00064F F9               [12]  829 	mov	r1,a
      000650 87 05            [24]  830 	mov	ar5,@r1
      000652 74 37            [12]  831 	mov	a,#0x37
      000654 2D               [12]  832 	add	a,r5
      000655 FD               [12]  833 	mov	r5,a
      000656 80 0B            [24]  834 	sjmp	00132$
      000658                        835 00131$:
      000658 EE               [12]  836 	mov	a,r6
      000659 14               [12]  837 	dec	a
      00065A 24 41            [12]  838 	add	a,#_UART_TxNumber_a_65536_29
      00065C F9               [12]  839 	mov	r1,a
      00065D 87 06            [24]  840 	mov	ar6,@r1
      00065F 74 30            [12]  841 	mov	a,#0x30
      000661 2E               [12]  842 	add	a,r6
      000662 FD               [12]  843 	mov	r5,a
      000663                        844 00132$:
      000663 8D 82            [24]  845 	mov	dpl,r5
      000665 C0 07            [24]  846 	push	ar7
      000667 12 04 A9         [24]  847 	lcall	_UART_TxChar
      00066A D0 07            [24]  848 	pop	ar7
                                    849 ;	src/libs/uart.c:307: i--;
      00066C 1F               [12]  850 	dec	r7
      00066D 80 CD            [24]  851 	sjmp	00113$
      00066F                        852 00129$:
                                    853 ;	src/libs/uart.c:312: }
      00066F 22               [24]  854 	ret
                                    855 ;------------------------------------------------------------
                                    856 ;Allocation info for local variables in function 'UART_Printf'
                                    857 ;------------------------------------------------------------
                                    858 ;argList                   Allocated to stack - _bp -5
                                    859 ;ptr                       Allocated to stack - _bp +2
                                    860 ;argp                      Allocated to stack - _bp +5
                                    861 ;v_num_s16                 Allocated to registers r6 r7 
                                    862 ;v_num_s32                 Allocated to registers r4 r5 r6 r7 
                                    863 ;v_num_u16                 Allocated to registers r6 r7 
                                    864 ;v_num_u32                 Allocated to registers 
                                    865 ;str                       Allocated to registers r5 r6 r7 
                                    866 ;ch                        Allocated to registers r3 
                                    867 ;v_numOfDigitsToTransmit_u8 Allocated to stack - _bp +1
                                    868 ;------------------------------------------------------------
                                    869 ;	src/libs/uart.c:401: void UART_Printf(const char *argList, ...)
                                    870 ;	-----------------------------------------
                                    871 ;	 function UART_Printf
                                    872 ;	-----------------------------------------
      000670                        873 _UART_Printf:
      000670 C0 4C            [24]  874 	push	_bp
      000672 E5 81            [12]  875 	mov	a,sp
      000674 F5 4C            [12]  876 	mov	_bp,a
      000676 24 05            [12]  877 	add	a,#0x05
      000678 F5 81            [12]  878 	mov	sp,a
                                    879 ;	src/libs/uart.c:417: va_start(argp, argList);
      00067A E5 4C            [12]  880 	mov	a,_bp
      00067C 24 FB            [12]  881 	add	a,#0xfb
      00067E FF               [12]  882 	mov	r7,a
      00067F E5 4C            [12]  883 	mov	a,_bp
      000681 24 05            [12]  884 	add	a,#0x05
      000683 F8               [12]  885 	mov	r0,a
      000684 A6 07            [24]  886 	mov	@r0,ar7
                                    887 ;	src/libs/uart.c:420: for(ptr = argList; *ptr != '\0'; ptr++)
      000686 E5 4C            [12]  888 	mov	a,_bp
      000688 24 FB            [12]  889 	add	a,#0xfb
      00068A F8               [12]  890 	mov	r0,a
      00068B A9 4C            [24]  891 	mov	r1,_bp
      00068D 09               [12]  892 	inc	r1
      00068E 09               [12]  893 	inc	r1
      00068F E6               [12]  894 	mov	a,@r0
      000690 F7               [12]  895 	mov	@r1,a
      000691 08               [12]  896 	inc	r0
      000692 09               [12]  897 	inc	r1
      000693 E6               [12]  898 	mov	a,@r0
      000694 F7               [12]  899 	mov	@r1,a
      000695 08               [12]  900 	inc	r0
      000696 09               [12]  901 	inc	r1
      000697 E6               [12]  902 	mov	a,@r0
      000698 F7               [12]  903 	mov	@r1,a
      000699                        904 00138$:
      000699 A8 4C            [24]  905 	mov	r0,_bp
      00069B 08               [12]  906 	inc	r0
      00069C 08               [12]  907 	inc	r0
      00069D 86 82            [24]  908 	mov	dpl,@r0
      00069F 08               [12]  909 	inc	r0
      0006A0 86 83            [24]  910 	mov	dph,@r0
      0006A2 08               [12]  911 	inc	r0
      0006A3 86 F0            [24]  912 	mov	b,@r0
      0006A5 12 0B 60         [24]  913 	lcall	__gptrget
      0006A8 FB               [12]  914 	mov	r3,a
      0006A9 70 03            [24]  915 	jnz	00278$
      0006AB 02 09 C0         [24]  916 	ljmp	00140$
      0006AE                        917 00278$:
                                    918 ;	src/libs/uart.c:423: ch= *ptr;
                                    919 ;	src/libs/uart.c:424: if(ch == '%')         /*Check for '%' as there will be format specifier after it */
      0006AE BB 25 02         [24]  920 	cjne	r3,#0x25,00279$
      0006B1 80 03            [24]  921 	sjmp	00280$
      0006B3                        922 00279$:
      0006B3 02 09 AE         [24]  923 	ljmp	00134$
      0006B6                        924 00280$:
                                    925 ;	src/libs/uart.c:426: ptr++;
      0006B6 A8 4C            [24]  926 	mov	r0,_bp
      0006B8 08               [12]  927 	inc	r0
      0006B9 08               [12]  928 	inc	r0
      0006BA 06               [12]  929 	inc	@r0
      0006BB B6 00 02         [24]  930 	cjne	@r0,#0x00,00281$
      0006BE 08               [12]  931 	inc	r0
      0006BF 06               [12]  932 	inc	@r0
      0006C0                        933 00281$:
                                    934 ;	src/libs/uart.c:427: ch = *ptr;
      0006C0 A8 4C            [24]  935 	mov	r0,_bp
      0006C2 08               [12]  936 	inc	r0
      0006C3 08               [12]  937 	inc	r0
      0006C4 86 82            [24]  938 	mov	dpl,@r0
      0006C6 08               [12]  939 	inc	r0
      0006C7 86 83            [24]  940 	mov	dph,@r0
      0006C9 08               [12]  941 	inc	r0
      0006CA 86 F0            [24]  942 	mov	b,@r0
      0006CC 12 0B 60         [24]  943 	lcall	__gptrget
      0006CF FB               [12]  944 	mov	r3,a
                                    945 ;	src/libs/uart.c:428: if((ch>=0x30) && (ch<=0x39))
      0006D0 BB 30 00         [24]  946 	cjne	r3,#0x30,00282$
      0006D3                        947 00282$:
      0006D3 40 46            [24]  948 	jc	00106$
      0006D5 EB               [12]  949 	mov	a,r3
      0006D6 24 C6            [12]  950 	add	a,#0xff - 0x39
      0006D8 40 41            [24]  951 	jc	00106$
                                    952 ;	src/libs/uart.c:430: v_numOfDigitsToTransmit_u8 = 0;
      0006DA A8 4C            [24]  953 	mov	r0,_bp
      0006DC 08               [12]  954 	inc	r0
      0006DD 76 00            [12]  955 	mov	@r0,#0x00
                                    956 ;	src/libs/uart.c:431: while((ch>=0x30) && (ch<=0x39))
      0006DF A8 4C            [24]  957 	mov	r0,_bp
      0006E1 08               [12]  958 	inc	r0
      0006E2 08               [12]  959 	inc	r0
      0006E3 86 02            [24]  960 	mov	ar2,@r0
      0006E5 08               [12]  961 	inc	r0
      0006E6 86 07            [24]  962 	mov	ar7,@r0
      0006E8 08               [12]  963 	inc	r0
      0006E9 86 06            [24]  964 	mov	ar6,@r0
      0006EB                        965 00102$:
      0006EB BB 30 00         [24]  966 	cjne	r3,#0x30,00285$
      0006EE                        967 00285$:
      0006EE 40 32            [24]  968 	jc	00169$
      0006F0 EB               [12]  969 	mov	a,r3
      0006F1 24 C6            [12]  970 	add	a,#0xff - 0x39
      0006F3 40 2D            [24]  971 	jc	00169$
                                    972 ;	src/libs/uart.c:433: v_numOfDigitsToTransmit_u8 = (v_numOfDigitsToTransmit_u8 * 10) + (ch-0x30);
      0006F5 A8 4C            [24]  973 	mov	r0,_bp
      0006F7 08               [12]  974 	inc	r0
      0006F8 E6               [12]  975 	mov	a,@r0
      0006F9 75 F0 0A         [24]  976 	mov	b,#0x0a
      0006FC A4               [48]  977 	mul	ab
      0006FD FD               [12]  978 	mov	r5,a
      0006FE 8B 04            [24]  979 	mov	ar4,r3
      000700 EC               [12]  980 	mov	a,r4
      000701 24 D0            [12]  981 	add	a,#0xd0
      000703 2D               [12]  982 	add	a,r5
      000704 FD               [12]  983 	mov	r5,a
      000705 A8 4C            [24]  984 	mov	r0,_bp
      000707 08               [12]  985 	inc	r0
      000708 A6 05            [24]  986 	mov	@r0,ar5
                                    987 ;	src/libs/uart.c:434: ptr++;
      00070A 0A               [12]  988 	inc	r2
      00070B BA 00 01         [24]  989 	cjne	r2,#0x00,00288$
      00070E 0F               [12]  990 	inc	r7
      00070F                        991 00288$:
                                    992 ;	src/libs/uart.c:435: ch = *ptr;
      00070F 8A 82            [24]  993 	mov	dpl,r2
      000711 8F 83            [24]  994 	mov	dph,r7
      000713 8E F0            [24]  995 	mov	b,r6
      000715 12 0B 60         [24]  996 	lcall	__gptrget
      000718 FB               [12]  997 	mov	r3,a
      000719 80 D0            [24]  998 	sjmp	00102$
      00071B                        999 00106$:
                                   1000 ;	src/libs/uart.c:440: v_numOfDigitsToTransmit_u8 = C_MaxDigitsToTransmitUsingPrintf_U8;
      00071B A8 4C            [24] 1001 	mov	r0,_bp
      00071D 08               [12] 1002 	inc	r0
      00071E 76 FF            [12] 1003 	mov	@r0,#0xff
                                   1004 ;	src/libs/uart.c:539: va_end(argp);
                                   1005 ;	src/libs/uart.c:440: v_numOfDigitsToTransmit_u8 = C_MaxDigitsToTransmitUsingPrintf_U8;
      000720 80 0C            [24] 1006 	sjmp	00107$
      000722                       1007 00169$:
      000722 A8 4C            [24] 1008 	mov	r0,_bp
      000724 08               [12] 1009 	inc	r0
      000725 08               [12] 1010 	inc	r0
      000726 A6 02            [24] 1011 	mov	@r0,ar2
      000728 08               [12] 1012 	inc	r0
      000729 A6 07            [24] 1013 	mov	@r0,ar7
      00072B 08               [12] 1014 	inc	r0
      00072C A6 06            [24] 1015 	mov	@r0,ar6
      00072E                       1016 00107$:
                                   1017 ;	src/libs/uart.c:444: switch(ch)       /* Decode the type of the argument */
      00072E BB 25 03         [24] 1018 	cjne	r3,#0x25,00289$
      000731 02 09 A6         [24] 1019 	ljmp	00131$
      000734                       1020 00289$:
      000734 BB 42 03         [24] 1021 	cjne	r3,#0x42,00290$
      000737 02 09 3F         [24] 1022 	ljmp	00124$
      00073A                       1023 00290$:
      00073A BB 43 02         [24] 1024 	cjne	r3,#0x43,00291$
      00073D 80 49            [24] 1025 	sjmp	00110$
      00073F                       1026 00291$:
      00073F BB 44 03         [24] 1027 	cjne	r3,#0x44,00292$
      000742 02 07 EC         [24] 1028 	ljmp	00114$
      000745                       1029 00292$:
      000745 BB 46 03         [24] 1030 	cjne	r3,#0x46,00293$
      000748 02 09 B3         [24] 1031 	ljmp	00139$
      00074B                       1032 00293$:
      00074B BB 53 03         [24] 1033 	cjne	r3,#0x53,00294$
      00074E 02 09 7F         [24] 1034 	ljmp	00130$
      000751                       1035 00294$:
      000751 BB 55 03         [24] 1036 	cjne	r3,#0x55,00295$
      000754 02 08 79         [24] 1037 	ljmp	00118$
      000757                       1038 00295$:
      000757 BB 58 03         [24] 1039 	cjne	r3,#0x58,00296$
      00075A 02 08 D7         [24] 1040 	ljmp	00120$
      00075D                       1041 00296$:
      00075D BB 62 03         [24] 1042 	cjne	r3,#0x62,00297$
      000760 02 09 05         [24] 1043 	ljmp	00121$
      000763                       1044 00297$:
      000763 BB 63 02         [24] 1045 	cjne	r3,#0x63,00298$
      000766 80 20            [24] 1046 	sjmp	00110$
      000768                       1047 00298$:
      000768 BB 64 02         [24] 1048 	cjne	r3,#0x64,00299$
      00076B 80 34            [24] 1049 	sjmp	00111$
      00076D                       1050 00299$:
      00076D BB 66 03         [24] 1051 	cjne	r3,#0x66,00300$
      000770 02 09 B3         [24] 1052 	ljmp	00139$
      000773                       1053 00300$:
      000773 BB 73 03         [24] 1054 	cjne	r3,#0x73,00301$
      000776 02 09 7F         [24] 1055 	ljmp	00130$
      000779                       1056 00301$:
      000779 BB 75 03         [24] 1057 	cjne	r3,#0x75,00302$
      00077C 02 08 49         [24] 1058 	ljmp	00117$
      00077F                       1059 00302$:
      00077F BB 78 03         [24] 1060 	cjne	r3,#0x78,00303$
      000782 02 08 A7         [24] 1061 	ljmp	00119$
      000785                       1062 00303$:
      000785 02 09 B3         [24] 1063 	ljmp	00139$
                                   1064 ;	src/libs/uart.c:447: case 'c':     /* Argument type is of char, hence read char data from the argp */
      000788                       1065 00110$:
                                   1066 ;	src/libs/uart.c:448: ch = va_arg(argp, uint8_t);
      000788 E5 4C            [12] 1067 	mov	a,_bp
      00078A 24 05            [12] 1068 	add	a,#0x05
      00078C F8               [12] 1069 	mov	r0,a
      00078D E6               [12] 1070 	mov	a,@r0
      00078E 14               [12] 1071 	dec	a
      00078F F9               [12] 1072 	mov	r1,a
      000790 E5 4C            [12] 1073 	mov	a,_bp
      000792 24 05            [12] 1074 	add	a,#0x05
      000794 F8               [12] 1075 	mov	r0,a
      000795 A6 01            [24] 1076 	mov	@r0,ar1
      000797 87 07            [24] 1077 	mov	ar7,@r1
                                   1078 ;	src/libs/uart.c:449: UART_TxChar(ch);
      000799 8F 82            [24] 1079 	mov	dpl,r7
      00079B 12 04 A9         [24] 1080 	lcall	_UART_TxChar
                                   1081 ;	src/libs/uart.c:450: break;
      00079E 02 09 B3         [24] 1082 	ljmp	00139$
                                   1083 ;	src/libs/uart.c:452: case 'd':    /* Argument type is of signed integer, hence read 16bit data from the argp */
      0007A1                       1084 00111$:
                                   1085 ;	src/libs/uart.c:453: v_num_s16 = va_arg(argp, sint16_t);
      0007A1 E5 4C            [12] 1086 	mov	a,_bp
      0007A3 24 05            [12] 1087 	add	a,#0x05
      0007A5 F8               [12] 1088 	mov	r0,a
      0007A6 E6               [12] 1089 	mov	a,@r0
      0007A7 24 FE            [12] 1090 	add	a,#0xfe
      0007A9 FF               [12] 1091 	mov	r7,a
      0007AA E5 4C            [12] 1092 	mov	a,_bp
      0007AC 24 05            [12] 1093 	add	a,#0x05
      0007AE F8               [12] 1094 	mov	r0,a
      0007AF A6 07            [24] 1095 	mov	@r0,ar7
      0007B1 8F 01            [24] 1096 	mov	ar1,r7
      0007B3 87 06            [24] 1097 	mov	ar6,@r1
      0007B5 09               [12] 1098 	inc	r1
      0007B6 87 07            [24] 1099 	mov	ar7,@r1
      0007B8 19               [12] 1100 	dec	r1
                                   1101 ;	src/libs/uart.c:454: if(v_num_s16<0)
      0007B9 EF               [12] 1102 	mov	a,r7
      0007BA 30 E7 15         [24] 1103 	jnb	acc.7,00113$
                                   1104 ;	src/libs/uart.c:456: v_num_s16 = -v_num_s16;
      0007BD C3               [12] 1105 	clr	c
      0007BE E4               [12] 1106 	clr	a
      0007BF 9E               [12] 1107 	subb	a,r6
      0007C0 FE               [12] 1108 	mov	r6,a
      0007C1 E4               [12] 1109 	clr	a
      0007C2 9F               [12] 1110 	subb	a,r7
      0007C3 FF               [12] 1111 	mov	r7,a
                                   1112 ;	src/libs/uart.c:457: UART_TxChar('-');
      0007C4 75 82 2D         [24] 1113 	mov	dpl,#0x2d
      0007C7 C0 07            [24] 1114 	push	ar7
      0007C9 C0 06            [24] 1115 	push	ar6
      0007CB 12 04 A9         [24] 1116 	lcall	_UART_TxChar
      0007CE D0 06            [24] 1117 	pop	ar6
      0007D0 D0 07            [24] 1118 	pop	ar7
      0007D2                       1119 00113$:
                                   1120 ;	src/libs/uart.c:459: UART_TxNumber(C_DECIMAL_U8,v_num_s16,v_numOfDigitsToTransmit_u8);
      0007D2 8E 3A            [24] 1121 	mov	_UART_TxNumber_PARM_2,r6
      0007D4 EF               [12] 1122 	mov	a,r7
      0007D5 F5 3B            [12] 1123 	mov	(_UART_TxNumber_PARM_2 + 1),a
      0007D7 33               [12] 1124 	rlc	a
      0007D8 95 E0            [12] 1125 	subb	a,acc
      0007DA F5 3C            [12] 1126 	mov	(_UART_TxNumber_PARM_2 + 2),a
      0007DC F5 3D            [12] 1127 	mov	(_UART_TxNumber_PARM_2 + 3),a
      0007DE A8 4C            [24] 1128 	mov	r0,_bp
      0007E0 08               [12] 1129 	inc	r0
      0007E1 86 3E            [24] 1130 	mov	_UART_TxNumber_PARM_3,@r0
      0007E3 75 82 0A         [24] 1131 	mov	dpl,#0x0a
      0007E6 12 05 3E         [24] 1132 	lcall	_UART_TxNumber
                                   1133 ;	src/libs/uart.c:460: break;
      0007E9 02 09 B3         [24] 1134 	ljmp	00139$
                                   1135 ;	src/libs/uart.c:462: case 'D':    /* Argument type is of integer, hence read 16bit data from the argp */
      0007EC                       1136 00114$:
                                   1137 ;	src/libs/uart.c:463: v_num_s32 = va_arg(argp, sint32_t);                
      0007EC E5 4C            [12] 1138 	mov	a,_bp
      0007EE 24 05            [12] 1139 	add	a,#0x05
      0007F0 F8               [12] 1140 	mov	r0,a
      0007F1 E6               [12] 1141 	mov	a,@r0
      0007F2 24 FC            [12] 1142 	add	a,#0xfc
      0007F4 FF               [12] 1143 	mov	r7,a
      0007F5 E5 4C            [12] 1144 	mov	a,_bp
      0007F7 24 05            [12] 1145 	add	a,#0x05
      0007F9 F8               [12] 1146 	mov	r0,a
      0007FA A6 07            [24] 1147 	mov	@r0,ar7
      0007FC 8F 01            [24] 1148 	mov	ar1,r7
      0007FE 87 04            [24] 1149 	mov	ar4,@r1
      000800 09               [12] 1150 	inc	r1
      000801 87 05            [24] 1151 	mov	ar5,@r1
      000803 09               [12] 1152 	inc	r1
      000804 87 06            [24] 1153 	mov	ar6,@r1
      000806 09               [12] 1154 	inc	r1
      000807 87 07            [24] 1155 	mov	ar7,@r1
      000809 19               [12] 1156 	dec	r1
      00080A 19               [12] 1157 	dec	r1
      00080B 19               [12] 1158 	dec	r1
                                   1159 ;	src/libs/uart.c:464: if(v_num_s32<0)
      00080C EF               [12] 1160 	mov	a,r7
      00080D 30 E7 23         [24] 1161 	jnb	acc.7,00116$
                                   1162 ;	src/libs/uart.c:466: v_num_s32 = -v_num_s32;
      000810 C3               [12] 1163 	clr	c
      000811 E4               [12] 1164 	clr	a
      000812 9C               [12] 1165 	subb	a,r4
      000813 FC               [12] 1166 	mov	r4,a
      000814 E4               [12] 1167 	clr	a
      000815 9D               [12] 1168 	subb	a,r5
      000816 FD               [12] 1169 	mov	r5,a
      000817 E4               [12] 1170 	clr	a
      000818 9E               [12] 1171 	subb	a,r6
      000819 FE               [12] 1172 	mov	r6,a
      00081A E4               [12] 1173 	clr	a
      00081B 9F               [12] 1174 	subb	a,r7
      00081C FF               [12] 1175 	mov	r7,a
                                   1176 ;	src/libs/uart.c:467: UART_TxChar('-');
      00081D 75 82 2D         [24] 1177 	mov	dpl,#0x2d
      000820 C0 07            [24] 1178 	push	ar7
      000822 C0 06            [24] 1179 	push	ar6
      000824 C0 05            [24] 1180 	push	ar5
      000826 C0 04            [24] 1181 	push	ar4
      000828 12 04 A9         [24] 1182 	lcall	_UART_TxChar
      00082B D0 04            [24] 1183 	pop	ar4
      00082D D0 05            [24] 1184 	pop	ar5
      00082F D0 06            [24] 1185 	pop	ar6
      000831 D0 07            [24] 1186 	pop	ar7
      000833                       1187 00116$:
                                   1188 ;	src/libs/uart.c:469: UART_TxNumber(C_DECIMAL_U8,v_num_s32,v_numOfDigitsToTransmit_u8);            
      000833 8C 3A            [24] 1189 	mov	_UART_TxNumber_PARM_2,r4
      000835 8D 3B            [24] 1190 	mov	(_UART_TxNumber_PARM_2 + 1),r5
      000837 8E 3C            [24] 1191 	mov	(_UART_TxNumber_PARM_2 + 2),r6
      000839 8F 3D            [24] 1192 	mov	(_UART_TxNumber_PARM_2 + 3),r7
      00083B A8 4C            [24] 1193 	mov	r0,_bp
      00083D 08               [12] 1194 	inc	r0
      00083E 86 3E            [24] 1195 	mov	_UART_TxNumber_PARM_3,@r0
      000840 75 82 0A         [24] 1196 	mov	dpl,#0x0a
      000843 12 05 3E         [24] 1197 	lcall	_UART_TxNumber
                                   1198 ;	src/libs/uart.c:470: break;    
      000846 02 09 B3         [24] 1199 	ljmp	00139$
                                   1200 ;	src/libs/uart.c:472: case 'u':    /* Argument type is of unsigned integer, hence read 16bit unsigned data */
      000849                       1201 00117$:
                                   1202 ;	src/libs/uart.c:473: v_num_u16 = va_arg(argp, uint16_t);            
      000849 E5 4C            [12] 1203 	mov	a,_bp
      00084B 24 05            [12] 1204 	add	a,#0x05
      00084D F8               [12] 1205 	mov	r0,a
      00084E E6               [12] 1206 	mov	a,@r0
      00084F 24 FE            [12] 1207 	add	a,#0xfe
      000851 FF               [12] 1208 	mov	r7,a
      000852 E5 4C            [12] 1209 	mov	a,_bp
      000854 24 05            [12] 1210 	add	a,#0x05
      000856 F8               [12] 1211 	mov	r0,a
      000857 A6 07            [24] 1212 	mov	@r0,ar7
      000859 8F 01            [24] 1213 	mov	ar1,r7
      00085B 87 06            [24] 1214 	mov	ar6,@r1
      00085D 09               [12] 1215 	inc	r1
      00085E 87 07            [24] 1216 	mov	ar7,@r1
      000860 19               [12] 1217 	dec	r1
                                   1218 ;	src/libs/uart.c:474: UART_TxNumber(C_DECIMAL_U8,v_num_u16,v_numOfDigitsToTransmit_u8);                
      000861 8E 3A            [24] 1219 	mov	_UART_TxNumber_PARM_2,r6
      000863 8F 3B            [24] 1220 	mov	(_UART_TxNumber_PARM_2 + 1),r7
      000865 75 3C 00         [24] 1221 	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
      000868 75 3D 00         [24] 1222 	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
      00086B A8 4C            [24] 1223 	mov	r0,_bp
      00086D 08               [12] 1224 	inc	r0
      00086E 86 3E            [24] 1225 	mov	_UART_TxNumber_PARM_3,@r0
      000870 75 82 0A         [24] 1226 	mov	dpl,#0x0a
      000873 12 05 3E         [24] 1227 	lcall	_UART_TxNumber
                                   1228 ;	src/libs/uart.c:475: break;
      000876 02 09 B3         [24] 1229 	ljmp	00139$
                                   1230 ;	src/libs/uart.c:477: case 'U':    /* Argument type is of integer, hence read 32bit unsigend data */
      000879                       1231 00118$:
                                   1232 ;	src/libs/uart.c:478: v_num_u32 = va_arg(argp, uint32_t);            
      000879 E5 4C            [12] 1233 	mov	a,_bp
      00087B 24 05            [12] 1234 	add	a,#0x05
      00087D F8               [12] 1235 	mov	r0,a
      00087E E6               [12] 1236 	mov	a,@r0
      00087F 24 FC            [12] 1237 	add	a,#0xfc
      000881 FF               [12] 1238 	mov	r7,a
      000882 E5 4C            [12] 1239 	mov	a,_bp
      000884 24 05            [12] 1240 	add	a,#0x05
      000886 F8               [12] 1241 	mov	r0,a
      000887 A6 07            [24] 1242 	mov	@r0,ar7
      000889 8F 01            [24] 1243 	mov	ar1,r7
      00088B 87 3A            [24] 1244 	mov	_UART_TxNumber_PARM_2,@r1
      00088D 09               [12] 1245 	inc	r1
      00088E 87 3B            [24] 1246 	mov	(_UART_TxNumber_PARM_2 + 1),@r1
      000890 09               [12] 1247 	inc	r1
      000891 87 3C            [24] 1248 	mov	(_UART_TxNumber_PARM_2 + 2),@r1
      000893 09               [12] 1249 	inc	r1
      000894 87 3D            [24] 1250 	mov	(_UART_TxNumber_PARM_2 + 3),@r1
      000896 19               [12] 1251 	dec	r1
      000897 19               [12] 1252 	dec	r1
      000898 19               [12] 1253 	dec	r1
                                   1254 ;	src/libs/uart.c:479: UART_TxNumber(C_DECIMAL_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
      000899 A8 4C            [24] 1255 	mov	r0,_bp
      00089B 08               [12] 1256 	inc	r0
      00089C 86 3E            [24] 1257 	mov	_UART_TxNumber_PARM_3,@r0
      00089E 75 82 0A         [24] 1258 	mov	dpl,#0x0a
      0008A1 12 05 3E         [24] 1259 	lcall	_UART_TxNumber
                                   1260 ;	src/libs/uart.c:480: break;            
      0008A4 02 09 B3         [24] 1261 	ljmp	00139$
                                   1262 ;	src/libs/uart.c:482: case 'x':  /* Argument type is of hex, hence hexadecimal data from the argp */
      0008A7                       1263 00119$:
                                   1264 ;	src/libs/uart.c:483: v_num_u16 = va_arg(argp, uint16_t);                
      0008A7 E5 4C            [12] 1265 	mov	a,_bp
      0008A9 24 05            [12] 1266 	add	a,#0x05
      0008AB F8               [12] 1267 	mov	r0,a
      0008AC E6               [12] 1268 	mov	a,@r0
      0008AD 24 FE            [12] 1269 	add	a,#0xfe
      0008AF FF               [12] 1270 	mov	r7,a
      0008B0 E5 4C            [12] 1271 	mov	a,_bp
      0008B2 24 05            [12] 1272 	add	a,#0x05
      0008B4 F8               [12] 1273 	mov	r0,a
      0008B5 A6 07            [24] 1274 	mov	@r0,ar7
      0008B7 8F 01            [24] 1275 	mov	ar1,r7
      0008B9 87 06            [24] 1276 	mov	ar6,@r1
      0008BB 09               [12] 1277 	inc	r1
      0008BC 87 07            [24] 1278 	mov	ar7,@r1
      0008BE 19               [12] 1279 	dec	r1
                                   1280 ;	src/libs/uart.c:484: UART_TxNumber(C_HEX_U8,v_num_u16,v_numOfDigitsToTransmit_u8);            
      0008BF 8E 3A            [24] 1281 	mov	_UART_TxNumber_PARM_2,r6
      0008C1 8F 3B            [24] 1282 	mov	(_UART_TxNumber_PARM_2 + 1),r7
      0008C3 75 3C 00         [24] 1283 	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
      0008C6 75 3D 00         [24] 1284 	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
      0008C9 A8 4C            [24] 1285 	mov	r0,_bp
      0008CB 08               [12] 1286 	inc	r0
      0008CC 86 3E            [24] 1287 	mov	_UART_TxNumber_PARM_3,@r0
      0008CE 75 82 10         [24] 1288 	mov	dpl,#0x10
      0008D1 12 05 3E         [24] 1289 	lcall	_UART_TxNumber
                                   1290 ;	src/libs/uart.c:485: break;
      0008D4 02 09 B3         [24] 1291 	ljmp	00139$
                                   1292 ;	src/libs/uart.c:487: case 'X':  /* Argument type is of hex, hence hexadecimal data from the argp */
      0008D7                       1293 00120$:
                                   1294 ;	src/libs/uart.c:488: v_num_u32 = va_arg(argp, uint32_t);                        
      0008D7 E5 4C            [12] 1295 	mov	a,_bp
      0008D9 24 05            [12] 1296 	add	a,#0x05
      0008DB F8               [12] 1297 	mov	r0,a
      0008DC E6               [12] 1298 	mov	a,@r0
      0008DD 24 FC            [12] 1299 	add	a,#0xfc
      0008DF FF               [12] 1300 	mov	r7,a
      0008E0 E5 4C            [12] 1301 	mov	a,_bp
      0008E2 24 05            [12] 1302 	add	a,#0x05
      0008E4 F8               [12] 1303 	mov	r0,a
      0008E5 A6 07            [24] 1304 	mov	@r0,ar7
      0008E7 8F 01            [24] 1305 	mov	ar1,r7
      0008E9 87 3A            [24] 1306 	mov	_UART_TxNumber_PARM_2,@r1
      0008EB 09               [12] 1307 	inc	r1
      0008EC 87 3B            [24] 1308 	mov	(_UART_TxNumber_PARM_2 + 1),@r1
      0008EE 09               [12] 1309 	inc	r1
      0008EF 87 3C            [24] 1310 	mov	(_UART_TxNumber_PARM_2 + 2),@r1
      0008F1 09               [12] 1311 	inc	r1
      0008F2 87 3D            [24] 1312 	mov	(_UART_TxNumber_PARM_2 + 3),@r1
      0008F4 19               [12] 1313 	dec	r1
      0008F5 19               [12] 1314 	dec	r1
      0008F6 19               [12] 1315 	dec	r1
                                   1316 ;	src/libs/uart.c:489: UART_TxNumber(C_HEX_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
      0008F7 A8 4C            [24] 1317 	mov	r0,_bp
      0008F9 08               [12] 1318 	inc	r0
      0008FA 86 3E            [24] 1319 	mov	_UART_TxNumber_PARM_3,@r0
      0008FC 75 82 10         [24] 1320 	mov	dpl,#0x10
      0008FF 12 05 3E         [24] 1321 	lcall	_UART_TxNumber
                                   1322 ;	src/libs/uart.c:490: break;
      000902 02 09 B3         [24] 1323 	ljmp	00139$
                                   1324 ;	src/libs/uart.c:493: case 'b':  /* Argument type is of binary,Read int and convert to binary */
      000905                       1325 00121$:
                                   1326 ;	src/libs/uart.c:494: v_num_u16 = va_arg(argp, uint16_t);        
      000905 E5 4C            [12] 1327 	mov	a,_bp
      000907 24 05            [12] 1328 	add	a,#0x05
      000909 F8               [12] 1329 	mov	r0,a
      00090A E6               [12] 1330 	mov	a,@r0
      00090B 24 FE            [12] 1331 	add	a,#0xfe
      00090D FF               [12] 1332 	mov	r7,a
      00090E E5 4C            [12] 1333 	mov	a,_bp
      000910 24 05            [12] 1334 	add	a,#0x05
      000912 F8               [12] 1335 	mov	r0,a
      000913 A6 07            [24] 1336 	mov	@r0,ar7
      000915 8F 01            [24] 1337 	mov	ar1,r7
      000917 87 06            [24] 1338 	mov	ar6,@r1
      000919 09               [12] 1339 	inc	r1
      00091A 87 07            [24] 1340 	mov	ar7,@r1
      00091C 19               [12] 1341 	dec	r1
                                   1342 ;	src/libs/uart.c:496: if(v_numOfDigitsToTransmit_u8 == C_MaxDigitsToTransmitUsingPrintf_U8)
      00091D A8 4C            [24] 1343 	mov	r0,_bp
      00091F 08               [12] 1344 	inc	r0
      000920 B6 FF 05         [24] 1345 	cjne	@r0,#0xff,00123$
                                   1346 ;	src/libs/uart.c:497: v_numOfDigitsToTransmit_u8 = 16;
      000923 A8 4C            [24] 1347 	mov	r0,_bp
      000925 08               [12] 1348 	inc	r0
      000926 76 10            [12] 1349 	mov	@r0,#0x10
      000928                       1350 00123$:
                                   1351 ;	src/libs/uart.c:499: UART_TxNumber(C_BINARY_U8,v_num_u16,v_numOfDigitsToTransmit_u8);            
      000928 8E 3A            [24] 1352 	mov	_UART_TxNumber_PARM_2,r6
      00092A 8F 3B            [24] 1353 	mov	(_UART_TxNumber_PARM_2 + 1),r7
      00092C 75 3C 00         [24] 1354 	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
      00092F 75 3D 00         [24] 1355 	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
      000932 A8 4C            [24] 1356 	mov	r0,_bp
      000934 08               [12] 1357 	inc	r0
      000935 86 3E            [24] 1358 	mov	_UART_TxNumber_PARM_3,@r0
      000937 75 82 02         [24] 1359 	mov	dpl,#0x02
      00093A 12 05 3E         [24] 1360 	lcall	_UART_TxNumber
                                   1361 ;	src/libs/uart.c:500: break;
                                   1362 ;	src/libs/uart.c:502: case 'B':  /* Argument type is of binary,Read int and convert to binary */
      00093D 80 74            [24] 1363 	sjmp	00139$
      00093F                       1364 00124$:
                                   1365 ;	src/libs/uart.c:503: v_num_u32 = va_arg(argp, uint32_t);            
      00093F E5 4C            [12] 1366 	mov	a,_bp
      000941 24 05            [12] 1367 	add	a,#0x05
      000943 F8               [12] 1368 	mov	r0,a
      000944 E6               [12] 1369 	mov	a,@r0
      000945 24 FC            [12] 1370 	add	a,#0xfc
      000947 FF               [12] 1371 	mov	r7,a
      000948 E5 4C            [12] 1372 	mov	a,_bp
      00094A 24 05            [12] 1373 	add	a,#0x05
      00094C F8               [12] 1374 	mov	r0,a
      00094D A6 07            [24] 1375 	mov	@r0,ar7
      00094F 8F 01            [24] 1376 	mov	ar1,r7
      000951 87 04            [24] 1377 	mov	ar4,@r1
      000953 09               [12] 1378 	inc	r1
      000954 87 05            [24] 1379 	mov	ar5,@r1
      000956 09               [12] 1380 	inc	r1
      000957 87 06            [24] 1381 	mov	ar6,@r1
      000959 09               [12] 1382 	inc	r1
      00095A 87 07            [24] 1383 	mov	ar7,@r1
      00095C 19               [12] 1384 	dec	r1
      00095D 19               [12] 1385 	dec	r1
      00095E 19               [12] 1386 	dec	r1
                                   1387 ;	src/libs/uart.c:505: if(v_numOfDigitsToTransmit_u8 == C_MaxDigitsToTransmitUsingPrintf_U8)
      00095F A8 4C            [24] 1388 	mov	r0,_bp
      000961 08               [12] 1389 	inc	r0
      000962 B6 FF 05         [24] 1390 	cjne	@r0,#0xff,00126$
                                   1391 ;	src/libs/uart.c:506: v_numOfDigitsToTransmit_u8 = 32;        
      000965 A8 4C            [24] 1392 	mov	r0,_bp
      000967 08               [12] 1393 	inc	r0
      000968 76 20            [12] 1394 	mov	@r0,#0x20
      00096A                       1395 00126$:
                                   1396 ;	src/libs/uart.c:508: UART_TxNumber(C_BINARY_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
      00096A 8C 3A            [24] 1397 	mov	_UART_TxNumber_PARM_2,r4
      00096C 8D 3B            [24] 1398 	mov	(_UART_TxNumber_PARM_2 + 1),r5
      00096E 8E 3C            [24] 1399 	mov	(_UART_TxNumber_PARM_2 + 2),r6
      000970 8F 3D            [24] 1400 	mov	(_UART_TxNumber_PARM_2 + 3),r7
      000972 A8 4C            [24] 1401 	mov	r0,_bp
      000974 08               [12] 1402 	inc	r0
      000975 86 3E            [24] 1403 	mov	_UART_TxNumber_PARM_3,@r0
      000977 75 82 02         [24] 1404 	mov	dpl,#0x02
      00097A 12 05 3E         [24] 1405 	lcall	_UART_TxNumber
                                   1406 ;	src/libs/uart.c:509: break;
                                   1407 ;	src/libs/uart.c:522: case 's': /* Argument type is of string, hence get the pointer to sting passed */
      00097D 80 34            [24] 1408 	sjmp	00139$
      00097F                       1409 00130$:
                                   1410 ;	src/libs/uart.c:523: str = va_arg(argp, char *);
      00097F E5 4C            [12] 1411 	mov	a,_bp
      000981 24 05            [12] 1412 	add	a,#0x05
      000983 F8               [12] 1413 	mov	r0,a
      000984 E6               [12] 1414 	mov	a,@r0
      000985 24 FD            [12] 1415 	add	a,#0xfd
      000987 FF               [12] 1416 	mov	r7,a
      000988 E5 4C            [12] 1417 	mov	a,_bp
      00098A 24 05            [12] 1418 	add	a,#0x05
      00098C F8               [12] 1419 	mov	r0,a
      00098D A6 07            [24] 1420 	mov	@r0,ar7
      00098F 8F 01            [24] 1421 	mov	ar1,r7
      000991 87 05            [24] 1422 	mov	ar5,@r1
      000993 09               [12] 1423 	inc	r1
      000994 87 06            [24] 1424 	mov	ar6,@r1
      000996 09               [12] 1425 	inc	r1
      000997 87 07            [24] 1426 	mov	ar7,@r1
      000999 19               [12] 1427 	dec	r1
      00099A 19               [12] 1428 	dec	r1
                                   1429 ;	src/libs/uart.c:524: UART_TxString(str);            
      00099B 8D 82            [24] 1430 	mov	dpl,r5
      00099D 8E 83            [24] 1431 	mov	dph,r6
      00099F 8F F0            [24] 1432 	mov	b,r7
      0009A1 12 04 B2         [24] 1433 	lcall	_UART_TxString
                                   1434 ;	src/libs/uart.c:525: break;
                                   1435 ;	src/libs/uart.c:527: case '%':
      0009A4 80 0D            [24] 1436 	sjmp	00139$
      0009A6                       1437 00131$:
                                   1438 ;	src/libs/uart.c:528: UART_TxChar('%');
      0009A6 75 82 25         [24] 1439 	mov	dpl,#0x25
      0009A9 12 04 A9         [24] 1440 	lcall	_UART_TxChar
                                   1441 ;	src/libs/uart.c:530: }
      0009AC 80 05            [24] 1442 	sjmp	00139$
      0009AE                       1443 00134$:
                                   1444 ;	src/libs/uart.c:535: UART_TxChar(ch);
      0009AE 8B 82            [24] 1445 	mov	dpl,r3
      0009B0 12 04 A9         [24] 1446 	lcall	_UART_TxChar
      0009B3                       1447 00139$:
                                   1448 ;	src/libs/uart.c:420: for(ptr = argList; *ptr != '\0'; ptr++)
      0009B3 A8 4C            [24] 1449 	mov	r0,_bp
      0009B5 08               [12] 1450 	inc	r0
      0009B6 08               [12] 1451 	inc	r0
      0009B7 06               [12] 1452 	inc	@r0
      0009B8 B6 00 02         [24] 1453 	cjne	@r0,#0x00,00310$
      0009BB 08               [12] 1454 	inc	r0
      0009BC 06               [12] 1455 	inc	@r0
      0009BD                       1456 00310$:
      0009BD 02 06 99         [24] 1457 	ljmp	00138$
                                   1458 ;	src/libs/uart.c:539: va_end(argp);
      0009C0                       1459 00140$:
                                   1460 ;	src/libs/uart.c:540: }
      0009C0 85 4C 81         [24] 1461 	mov	sp,_bp
      0009C3 D0 4C            [24] 1462 	pop	_bp
      0009C5 22               [24] 1463 	ret
                                   1464 	.area CSEG    (CODE)
                                   1465 	.area CONST   (CODE)
                                   1466 	.area XINIT   (CODE)
                                   1467 	.area CABS    (ABS,CODE)
