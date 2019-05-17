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
      000031                        288 _UART_TxNumber_PARM_2:
      000031                        289 	.ds 4
      000035                        290 _UART_TxNumber_PARM_3:
      000035                        291 	.ds 1
      000036                        292 _UART_TxNumber_v_numericSystem_u8_65536_72:
      000036                        293 	.ds 1
      000037                        294 _UART_TxNumber_i_65536_73:
      000037                        295 	.ds 1
      000038                        296 _UART_TxNumber_a_65536_73:
      000038                        297 	.ds 10
      000042                        298 _UART_TxNumber_sloc0_1_0:
      000042                        299 	.ds 1
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
      000231                        368 _UART_Init:
                           000007   369 	ar7 = 0x07
                           000006   370 	ar6 = 0x06
                           000005   371 	ar5 = 0x05
                           000004   372 	ar4 = 0x04
                           000003   373 	ar3 = 0x03
                           000002   374 	ar2 = 0x02
                           000001   375 	ar1 = 0x01
                           000000   376 	ar0 = 0x00
      000231 AC 82            [24]  377 	mov	r4,dpl
      000233 AD 83            [24]  378 	mov	r5,dph
      000235 AE F0            [24]  379 	mov	r6,b
      000237 FF               [12]  380 	mov	r7,a
                                    381 ;	src/libs/uart.c:56: TMOD |= 0x20; //Timer1 in Mode2.
      000238 43 89 20         [24]  382 	orl	_TMOD,#0x20
                                    383 ;	src/libs/uart.c:57: SCON=0x50;    // Asynchronous mode, 8-bit data and 1-stop bit
      00023B 75 98 50         [24]  384 	mov	_SCON,#0x50
                                    385 ;	src/libs/uart.c:58: TR1=1;        //Turn ON the timer for Baud rate generation
                                    386 ;	assignBit
      00023E D2 8E            [12]  387 	setb	_TR1
                                    388 ;	src/libs/uart.c:59: UART_SetBaudRate(v_baudRate_u32);
      000240 8C 82            [24]  389 	mov	dpl,r4
      000242 8D 83            [24]  390 	mov	dph,r5
      000244 8E F0            [24]  391 	mov	b,r6
      000246 EF               [12]  392 	mov	a,r7
                                    393 ;	src/libs/uart.c:60: }
      000247 02 02 4A         [24]  394 	ljmp	_UART_SetBaudRate
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
      00024A                        405 _UART_SetBaudRate:
      00024A AC 82            [24]  406 	mov	r4,dpl
      00024C AD 83            [24]  407 	mov	r5,dph
      00024E AE F0            [24]  408 	mov	r6,b
      000250 FF               [12]  409 	mov	r7,a
                                    410 ;	src/libs/uart.c:83: if((v_baudRate_u32 >= C_MinBaudRate_U32) && (v_baudRate_u32<=C_MaxBaudRate_U32))
      000251 C3               [12]  411 	clr	c
      000252 EC               [12]  412 	mov	a,r4
      000253 94 60            [12]  413 	subb	a,#0x60
      000255 ED               [12]  414 	mov	a,r5
      000256 94 09            [12]  415 	subb	a,#0x09
      000258 EE               [12]  416 	mov	a,r6
      000259 94 00            [12]  417 	subb	a,#0x00
      00025B EF               [12]  418 	mov	a,r7
      00025C 94 00            [12]  419 	subb	a,#0x00
      00025E 40 3E            [24]  420 	jc	00102$
      000260 E4               [12]  421 	clr	a
      000261 9C               [12]  422 	subb	a,r4
      000262 74 C2            [12]  423 	mov	a,#0xc2
      000264 9D               [12]  424 	subb	a,r5
      000265 74 01            [12]  425 	mov	a,#0x01
      000267 9E               [12]  426 	subb	a,r6
      000268 E4               [12]  427 	clr	a
      000269 9F               [12]  428 	subb	a,r7
      00026A 40 32            [24]  429 	jc	00102$
                                    430 ;	src/libs/uart.c:87: RegValue = M_GetBaudRateGeneratorValue(v_baudRate_u32);
      00026C 8C 4D            [24]  431 	mov	__mullong_PARM_2,r4
      00026E 8D 4E            [24]  432 	mov	(__mullong_PARM_2 + 1),r5
      000270 8E 4F            [24]  433 	mov	(__mullong_PARM_2 + 2),r6
      000272 8F 50            [24]  434 	mov	(__mullong_PARM_2 + 3),r7
      000274 90 01 80         [24]  435 	mov	dptr,#0x0180
      000277 E4               [12]  436 	clr	a
      000278 F5 F0            [12]  437 	mov	b,a
      00027A 12 0A 91         [24]  438 	lcall	__mullong
      00027D 85 82 4D         [24]  439 	mov	__divulong_PARM_2,dpl
      000280 85 83 4E         [24]  440 	mov	(__divulong_PARM_2 + 1),dph
      000283 85 F0 4F         [24]  441 	mov	(__divulong_PARM_2 + 2),b
      000286 F5 50            [12]  442 	mov	(__divulong_PARM_2 + 3),a
      000288 90 C0 00         [24]  443 	mov	dptr,#0xc000
      00028B 75 F0 A8         [24]  444 	mov	b,#0xa8
      00028E E4               [12]  445 	clr	a
      00028F 12 09 B7         [24]  446 	lcall	__divulong
      000292 AC 82            [24]  447 	mov	r4,dpl
      000294 AD 83            [24]  448 	mov	r5,dph
      000296 AE F0            [24]  449 	mov	r6,b
      000298 C3               [12]  450 	clr	c
      000299 E4               [12]  451 	clr	a
      00029A 9C               [12]  452 	subb	a,r4
      00029B FF               [12]  453 	mov	r7,a
      00029C 80 02            [24]  454 	sjmp	00103$
      00029E                        455 00102$:
                                    456 ;	src/libs/uart.c:92: RegValue = M_GetBaudRateGeneratorValue(9600);
      00029E 7F 5D            [12]  457 	mov	r7,#0x5d
      0002A0                        458 00103$:
                                    459 ;	src/libs/uart.c:95: TH1 = RegValue; 
      0002A0 8F 8D            [24]  460 	mov	_TH1,r7
                                    461 ;	src/libs/uart.c:96: }
      0002A2 22               [24]  462 	ret
                                    463 ;------------------------------------------------------------
                                    464 ;Allocation info for local variables in function 'UART_RxChar'
                                    465 ;------------------------------------------------------------
                                    466 ;	src/libs/uart.c:111: char UART_RxChar(void)
                                    467 ;	-----------------------------------------
                                    468 ;	 function UART_RxChar
                                    469 ;	-----------------------------------------
      0002A3                        470 _UART_RxChar:
                                    471 ;	src/libs/uart.c:113: while(RI==0);      // Wait till the data is received
      0002A3                        472 00101$:
                                    473 ;	src/libs/uart.c:114: RI=0;             // Clear Receive Interrupt Flag for next cycle
                                    474 ;	assignBit
      0002A3 10 98 02         [24]  475 	jbc	_RI,00114$
      0002A6 80 FB            [24]  476 	sjmp	00101$
      0002A8                        477 00114$:
                                    478 ;	src/libs/uart.c:116: return(SBUF);      // return the received char
      0002A8 85 99 82         [24]  479 	mov	dpl,_SBUF
                                    480 ;	src/libs/uart.c:117: }
      0002AB 22               [24]  481 	ret
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'UART_TxChar'
                                    484 ;------------------------------------------------------------
                                    485 ;v_uartData_u8             Allocated to registers 
                                    486 ;------------------------------------------------------------
                                    487 ;	src/libs/uart.c:134: void UART_TxChar(char v_uartData_u8)
                                    488 ;	-----------------------------------------
                                    489 ;	 function UART_TxChar
                                    490 ;	-----------------------------------------
      0002AC                        491 _UART_TxChar:
      0002AC 85 82 99         [24]  492 	mov	_SBUF,dpl
                                    493 ;	src/libs/uart.c:137: while(TI==0);       // Wait till the data is trasmitted
      0002AF                        494 00101$:
                                    495 ;	src/libs/uart.c:138: TI=0;                //Clear the Tx flag for next cycle.
                                    496 ;	assignBit
      0002AF 10 99 02         [24]  497 	jbc	_TI,00114$
      0002B2 80 FB            [24]  498 	sjmp	00101$
      0002B4                        499 00114$:
                                    500 ;	src/libs/uart.c:139: }
      0002B4 22               [24]  501 	ret
                                    502 ;------------------------------------------------------------
                                    503 ;Allocation info for local variables in function 'UART_TxString'
                                    504 ;------------------------------------------------------------
                                    505 ;ptr_string                Allocated to registers 
                                    506 ;------------------------------------------------------------
                                    507 ;	src/libs/uart.c:158: void UART_TxString(char *ptr_string)
                                    508 ;	-----------------------------------------
                                    509 ;	 function UART_TxString
                                    510 ;	-----------------------------------------
      0002B5                        511 _UART_TxString:
      0002B5 AD 82            [24]  512 	mov	r5,dpl
      0002B7 AE 83            [24]  513 	mov	r6,dph
      0002B9 AF F0            [24]  514 	mov	r7,b
                                    515 ;	src/libs/uart.c:160: while(*ptr_string)
      0002BB                        516 00101$:
      0002BB 8D 82            [24]  517 	mov	dpl,r5
      0002BD 8E 83            [24]  518 	mov	dph,r6
      0002BF 8F F0            [24]  519 	mov	b,r7
      0002C1 12 0B 34         [24]  520 	lcall	__gptrget
      0002C4 FC               [12]  521 	mov	r4,a
      0002C5 60 18            [24]  522 	jz	00104$
                                    523 ;	src/libs/uart.c:161: UART_TxChar(*ptr_string++);// Loop through the string and transmit char by char
      0002C7 8C 82            [24]  524 	mov	dpl,r4
      0002C9 0D               [12]  525 	inc	r5
      0002CA BD 00 01         [24]  526 	cjne	r5,#0x00,00116$
      0002CD 0E               [12]  527 	inc	r6
      0002CE                        528 00116$:
      0002CE C0 07            [24]  529 	push	ar7
      0002D0 C0 06            [24]  530 	push	ar6
      0002D2 C0 05            [24]  531 	push	ar5
      0002D4 12 02 AC         [24]  532 	lcall	_UART_TxChar
      0002D7 D0 05            [24]  533 	pop	ar5
      0002D9 D0 06            [24]  534 	pop	ar6
      0002DB D0 07            [24]  535 	pop	ar7
      0002DD 80 DC            [24]  536 	sjmp	00101$
      0002DF                        537 00104$:
                                    538 ;	src/libs/uart.c:162: }
      0002DF 22               [24]  539 	ret
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
      0002E0                        551 _UART_RxString:
      0002E0 AD 82            [24]  552 	mov	r5,dpl
      0002E2 AE 83            [24]  553 	mov	r6,dph
      0002E4 AF F0            [24]  554 	mov	r7,b
                                    555 ;	src/libs/uart.c:190: uint8_t len = 0;
      0002E6 7C 00            [12]  556 	mov	r4,#0x00
                                    557 ;	src/libs/uart.c:191: while(1)
      0002E8                        558 00110$:
                                    559 ;	src/libs/uart.c:193: ch=UART_RxChar();    //Receive a char
      0002E8 C0 07            [24]  560 	push	ar7
      0002EA C0 06            [24]  561 	push	ar6
      0002EC C0 05            [24]  562 	push	ar5
      0002EE C0 04            [24]  563 	push	ar4
      0002F0 12 02 A3         [24]  564 	lcall	_UART_RxChar
                                    565 ;	src/libs/uart.c:194: UART_TxChar(ch);     //Echo back the received char
      0002F3 AB 82            [24]  566 	mov  r3,dpl
      0002F5 C0 03            [24]  567 	push	ar3
      0002F7 12 02 AC         [24]  568 	lcall	_UART_TxChar
      0002FA D0 03            [24]  569 	pop	ar3
      0002FC D0 04            [24]  570 	pop	ar4
      0002FE D0 05            [24]  571 	pop	ar5
      000300 D0 06            [24]  572 	pop	ar6
      000302 D0 07            [24]  573 	pop	ar7
                                    574 ;	src/libs/uart.c:196: if((ch=='\r') || (ch=='\n')) //read till enter key is pressed
      000304 BB 0D 02         [24]  575 	cjne	r3,#0x0d,00130$
      000307 80 03            [24]  576 	sjmp	00105$
      000309                        577 00130$:
      000309 BB 0A 14         [24]  578 	cjne	r3,#0x0a,00106$
      00030C                        579 00105$:
                                    580 ;	src/libs/uart.c:198: ptr_string[len]=0;           //and break the loop
      00030C EC               [12]  581 	mov	a,r4
      00030D 2D               [12]  582 	add	a,r5
      00030E F8               [12]  583 	mov	r0,a
      00030F E4               [12]  584 	clr	a
      000310 3E               [12]  585 	addc	a,r6
      000311 F9               [12]  586 	mov	r1,a
      000312 8F 02            [24]  587 	mov	ar2,r7
      000314 88 82            [24]  588 	mov	dpl,r0
      000316 89 83            [24]  589 	mov	dph,r1
      000318 8A F0            [24]  590 	mov	b,r2
      00031A E4               [12]  591 	clr	a
      00031B 12 0A 1C         [24]  592 	lcall	__gptrput
                                    593 ;	src/libs/uart.c:199: break;                  
      00031E 80 1E            [24]  594 	sjmp	00111$
      000320                        595 00106$:
                                    596 ;	src/libs/uart.c:201: else if((ch=='\b') && (len!=0))
      000320 BB 08 06         [24]  597 	cjne	r3,#0x08,00102$
      000323 EC               [12]  598 	mov	a,r4
      000324 60 03            [24]  599 	jz	00102$
                                    600 ;	src/libs/uart.c:203: len--;    //If backspace is pressed then decrement the index to remove the old char
      000326 1C               [12]  601 	dec	r4
      000327 80 BF            [24]  602 	sjmp	00110$
      000329                        603 00102$:
                                    604 ;	src/libs/uart.c:207: ptr_string[len]=ch; //copy the char into string and increment the index
      000329 EC               [12]  605 	mov	a,r4
      00032A 2D               [12]  606 	add	a,r5
      00032B F8               [12]  607 	mov	r0,a
      00032C E4               [12]  608 	clr	a
      00032D 3E               [12]  609 	addc	a,r6
      00032E F9               [12]  610 	mov	r1,a
      00032F 8F 02            [24]  611 	mov	ar2,r7
      000331 88 82            [24]  612 	mov	dpl,r0
      000333 89 83            [24]  613 	mov	dph,r1
      000335 8A F0            [24]  614 	mov	b,r2
      000337 EB               [12]  615 	mov	a,r3
      000338 12 0A 1C         [24]  616 	lcall	__gptrput
                                    617 ;	src/libs/uart.c:208: len++;
      00033B 0C               [12]  618 	inc	r4
      00033C 80 AA            [24]  619 	sjmp	00110$
      00033E                        620 00111$:
                                    621 ;	src/libs/uart.c:211: return len;   
      00033E 8C 82            [24]  622 	mov	dpl,r4
                                    623 ;	src/libs/uart.c:212: }
      000340 22               [24]  624 	ret
                                    625 ;------------------------------------------------------------
                                    626 ;Allocation info for local variables in function 'UART_TxNumber'
                                    627 ;------------------------------------------------------------
                                    628 ;v_number_u32              Allocated with name '_UART_TxNumber_PARM_2'
                                    629 ;v_numOfDigitsToTransmit_u8 Allocated with name '_UART_TxNumber_PARM_3'
                                    630 ;v_numericSystem_u8        Allocated with name '_UART_TxNumber_v_numericSystem_u8_65536_72'
                                    631 ;i                         Allocated with name '_UART_TxNumber_i_65536_73'
                                    632 ;a                         Allocated with name '_UART_TxNumber_a_65536_73'
                                    633 ;sloc0                     Allocated with name '_UART_TxNumber_sloc0_1_0'
                                    634 ;------------------------------------------------------------
                                    635 ;	src/libs/uart.c:249: void UART_TxNumber(uint8_t v_numericSystem_u8, uint32_t v_number_u32, uint8_t v_numOfDigitsToTransmit_u8)
                                    636 ;	-----------------------------------------
                                    637 ;	 function UART_TxNumber
                                    638 ;	-----------------------------------------
      000341                        639 _UART_TxNumber:
      000341 85 82 36         [24]  640 	mov	_UART_TxNumber_v_numericSystem_u8_65536_72,dpl
                                    641 ;	src/libs/uart.c:253: if(C_BINARY_U8 == v_numericSystem_u8)
      000344 74 02            [12]  642 	mov	a,#0x02
      000346 B5 36 4B         [24]  643 	cjne	a,_UART_TxNumber_v_numericSystem_u8_65536_72,00120$
                                    644 ;	src/libs/uart.c:255: while(v_numOfDigitsToTransmit_u8!=0)
      000349                        645 00101$:
      000349 E5 35            [12]  646 	mov	a,_UART_TxNumber_PARM_3
      00034B 70 01            [24]  647 	jnz	00194$
      00034D 22               [24]  648 	ret
      00034E                        649 00194$:
                                    650 ;	src/libs/uart.c:259: i = util_GetBitStatus(v_number_u32,(v_numOfDigitsToTransmit_u8-1));
      00034E E5 35            [12]  651 	mov	a,_UART_TxNumber_PARM_3
      000350 14               [12]  652 	dec	a
      000351 FE               [12]  653 	mov	r6,a
      000352 8E F0            [24]  654 	mov	b,r6
      000354 05 F0            [12]  655 	inc	b
      000356 7C 01            [12]  656 	mov	r4,#0x01
      000358 7D 00            [12]  657 	mov	r5,#0x00
      00035A 80 06            [24]  658 	sjmp	00196$
      00035C                        659 00195$:
      00035C EC               [12]  660 	mov	a,r4
      00035D 2C               [12]  661 	add	a,r4
      00035E FC               [12]  662 	mov	r4,a
      00035F ED               [12]  663 	mov	a,r5
      000360 33               [12]  664 	rlc	a
      000361 FD               [12]  665 	mov	r5,a
      000362                        666 00196$:
      000362 D5 F0 F7         [24]  667 	djnz	b,00195$
      000365 ED               [12]  668 	mov	a,r5
      000366 33               [12]  669 	rlc	a
      000367 95 E0            [12]  670 	subb	a,acc
      000369 FB               [12]  671 	mov	r3,a
      00036A FA               [12]  672 	mov	r2,a
      00036B E5 31            [12]  673 	mov	a,_UART_TxNumber_PARM_2
      00036D 52 04            [12]  674 	anl	ar4,a
      00036F E5 32            [12]  675 	mov	a,(_UART_TxNumber_PARM_2 + 1)
      000371 52 05            [12]  676 	anl	ar5,a
      000373 E5 33            [12]  677 	mov	a,(_UART_TxNumber_PARM_2 + 2)
      000375 52 03            [12]  678 	anl	ar3,a
      000377 E5 34            [12]  679 	mov	a,(_UART_TxNumber_PARM_2 + 3)
      000379 52 02            [12]  680 	anl	ar2,a
      00037B EC               [12]  681 	mov	a,r4
      00037C 4D               [12]  682 	orl	a,r5
      00037D 4B               [12]  683 	orl	a,r3
      00037E 4A               [12]  684 	orl	a,r2
      00037F B4 01 00         [24]  685 	cjne	a,#0x01,00197$
      000382                        686 00197$:
                                    687 ;	src/libs/uart.c:260: UART_TxChar(util_Dec2Ascii(i));
      000382 B3               [12]  688 	cpl	c
      000383 E4               [12]  689 	clr	a
      000384 33               [12]  690 	rlc	a
      000385 24 30            [12]  691 	add	a,#0x30
      000387 F5 82            [12]  692 	mov	dpl,a
      000389 C0 06            [24]  693 	push	ar6
      00038B 12 02 AC         [24]  694 	lcall	_UART_TxChar
      00038E D0 06            [24]  695 	pop	ar6
                                    696 ;	src/libs/uart.c:261: v_numOfDigitsToTransmit_u8--;
      000390 8E 35            [24]  697 	mov	_UART_TxNumber_PARM_3,r6
      000392 80 B5            [24]  698 	sjmp	00101$
      000394                        699 00120$:
                                    700 ;	src/libs/uart.c:264: else if(v_number_u32==0)
      000394 E5 31            [12]  701 	mov	a,_UART_TxNumber_PARM_2
      000396 45 32            [12]  702 	orl	a,(_UART_TxNumber_PARM_2 + 1)
      000398 45 33            [12]  703 	orl	a,(_UART_TxNumber_PARM_2 + 2)
      00039A 45 34            [12]  704 	orl	a,(_UART_TxNumber_PARM_2 + 3)
                                    705 ;	src/libs/uart.c:267: for(i=0;((i<v_numOfDigitsToTransmit_u8) && (i<C_MaxDigitsToTransmit_U8)) ;i++)
      00039C 70 1B            [24]  706 	jnz	00143$
      00039E FE               [12]  707 	mov	r6,a
      00039F                        708 00124$:
      00039F C3               [12]  709 	clr	c
      0003A0 EE               [12]  710 	mov	a,r6
      0003A1 95 35            [12]  711 	subb	a,_UART_TxNumber_PARM_3
      0003A3 40 01            [24]  712 	jc	00200$
      0003A5 22               [24]  713 	ret
      0003A6                        714 00200$:
      0003A6 BE 0A 00         [24]  715 	cjne	r6,#0x0a,00201$
      0003A9                        716 00201$:
      0003A9 40 01            [24]  717 	jc	00202$
      0003AB 22               [24]  718 	ret
      0003AC                        719 00202$:
                                    720 ;	src/libs/uart.c:268: UART_TxChar('0');
      0003AC 75 82 30         [24]  721 	mov	dpl,#0x30
      0003AF C0 06            [24]  722 	push	ar6
      0003B1 12 02 AC         [24]  723 	lcall	_UART_TxChar
      0003B4 D0 06            [24]  724 	pop	ar6
                                    725 ;	src/libs/uart.c:267: for(i=0;((i<v_numOfDigitsToTransmit_u8) && (i<C_MaxDigitsToTransmit_U8)) ;i++)
      0003B6 0E               [12]  726 	inc	r6
                                    727 ;	src/libs/uart.c:272: for(i=0;i<v_numOfDigitsToTransmit_u8;i++)
      0003B7 80 E6            [24]  728 	sjmp	00124$
      0003B9                        729 00143$:
      0003B9 74 FF            [12]  730 	mov	a,#0xff
      0003BB B5 35 04         [24]  731 	cjne	a,_UART_TxNumber_PARM_3,00203$
      0003BE 74 01            [12]  732 	mov	a,#0x01
      0003C0 80 01            [24]  733 	sjmp	00204$
      0003C2                        734 00203$:
      0003C2 E4               [12]  735 	clr	a
      0003C3                        736 00204$:
      0003C3 F5 42            [12]  737 	mov	_UART_TxNumber_sloc0_1_0,a
      0003C5 C3               [12]  738 	clr	c
      0003C6 74 0A            [12]  739 	mov	a,#0x0a
      0003C8 95 35            [12]  740 	subb	a,_UART_TxNumber_PARM_3
      0003CA E4               [12]  741 	clr	a
      0003CB 33               [12]  742 	rlc	a
      0003CC FD               [12]  743 	mov	r5,a
      0003CD 75 37 00         [24]  744 	mov	_UART_TxNumber_i_65536_73,#0x00
      0003D0                        745 00127$:
      0003D0 C3               [12]  746 	clr	c
      0003D1 E5 37            [12]  747 	mov	a,_UART_TxNumber_i_65536_73
      0003D3 95 35            [12]  748 	subb	a,_UART_TxNumber_PARM_3
      0003D5 50 66            [24]  749 	jnc	00146$
                                    750 ;	src/libs/uart.c:276: if(v_number_u32!=0)
      0003D7 E5 31            [12]  751 	mov	a,_UART_TxNumber_PARM_2
      0003D9 45 32            [12]  752 	orl	a,(_UART_TxNumber_PARM_2 + 1)
      0003DB 45 33            [12]  753 	orl	a,(_UART_TxNumber_PARM_2 + 2)
      0003DD 45 34            [12]  754 	orl	a,(_UART_TxNumber_PARM_2 + 3)
      0003DF 60 4A            [24]  755 	jz	00110$
                                    756 ;	src/libs/uart.c:284: a[i]=util_GetMod32(v_number_u32,v_numericSystem_u8);
      0003E1 C0 05            [24]  757 	push	ar5
      0003E3 E5 37            [12]  758 	mov	a,_UART_TxNumber_i_65536_73
      0003E5 24 38            [12]  759 	add	a,#_UART_TxNumber_a_65536_73
      0003E7 F9               [12]  760 	mov	r1,a
      0003E8 85 36 4D         [24]  761 	mov	__divulong_PARM_2,_UART_TxNumber_v_numericSystem_u8_65536_72
      0003EB 75 4E 00         [24]  762 	mov	(__divulong_PARM_2 + 1),#0x00
      0003EE 75 4F 00         [24]  763 	mov	(__divulong_PARM_2 + 2),#0x00
      0003F1 75 50 00         [24]  764 	mov	(__divulong_PARM_2 + 3),#0x00
      0003F4 85 31 82         [24]  765 	mov	dpl,_UART_TxNumber_PARM_2
      0003F7 85 32 83         [24]  766 	mov	dph,(_UART_TxNumber_PARM_2 + 1)
      0003FA 85 33 F0         [24]  767 	mov	b,(_UART_TxNumber_PARM_2 + 2)
      0003FD E5 34            [12]  768 	mov	a,(_UART_TxNumber_PARM_2 + 3)
      0003FF C0 05            [24]  769 	push	ar5
      000401 C0 01            [24]  770 	push	ar1
      000403 12 09 B7         [24]  771 	lcall	__divulong
      000406 AA 82            [24]  772 	mov	r2,dpl
      000408 AB 83            [24]  773 	mov	r3,dph
      00040A AC F0            [24]  774 	mov	r4,b
      00040C FF               [12]  775 	mov	r7,a
      00040D D0 01            [24]  776 	pop	ar1
      00040F D0 05            [24]  777 	pop	ar5
      000411 8A 05            [24]  778 	mov	ar5,r2
      000413 85 36 F0         [24]  779 	mov	b,_UART_TxNumber_v_numericSystem_u8_65536_72
      000416 ED               [12]  780 	mov	a,r5
      000417 A4               [48]  781 	mul	ab
      000418 FD               [12]  782 	mov	r5,a
      000419 E5 31            [12]  783 	mov	a,_UART_TxNumber_PARM_2
      00041B FE               [12]  784 	mov	r6,a
      00041C C3               [12]  785 	clr	c
      00041D 9D               [12]  786 	subb	a,r5
      00041E F7               [12]  787 	mov	@r1,a
                                    788 ;	src/libs/uart.c:285: v_number_u32=v_number_u32/v_numericSystem_u8;
      00041F 8A 31            [24]  789 	mov	_UART_TxNumber_PARM_2,r2
      000421 8B 32            [24]  790 	mov	(_UART_TxNumber_PARM_2 + 1),r3
      000423 8C 33            [24]  791 	mov	(_UART_TxNumber_PARM_2 + 2),r4
      000425 8F 34            [24]  792 	mov	(_UART_TxNumber_PARM_2 + 3),r7
      000427 D0 05            [24]  793 	pop	ar5
      000429 80 0E            [24]  794 	sjmp	00128$
      00042B                        795 00110$:
                                    796 ;	src/libs/uart.c:287: else if( (v_numOfDigitsToTransmit_u8 == C_DefaultDigitsToTransmit_U8) ||
      00042B E5 42            [12]  797 	mov	a,_UART_TxNumber_sloc0_1_0
      00042D 70 0E            [24]  798 	jnz	00146$
                                    799 ;	src/libs/uart.c:288: (v_numOfDigitsToTransmit_u8 > C_MaxDigitsToTransmit_U8))
      00042F ED               [12]  800 	mov	a,r5
      000430 70 0B            [24]  801 	jnz	00146$
                                    802 ;	src/libs/uart.c:299: a[i]=0;
      000432 E5 37            [12]  803 	mov	a,_UART_TxNumber_i_65536_73
      000434 24 38            [12]  804 	add	a,#_UART_TxNumber_a_65536_73
      000436 F8               [12]  805 	mov	r0,a
      000437 76 00            [12]  806 	mov	@r0,#0x00
      000439                        807 00128$:
                                    808 ;	src/libs/uart.c:272: for(i=0;i<v_numOfDigitsToTransmit_u8;i++)
      000439 05 37            [12]  809 	inc	_UART_TxNumber_i_65536_73
                                    810 ;	src/libs/uart.c:303: while(i)
      00043B 80 93            [24]  811 	sjmp	00127$
      00043D                        812 00146$:
      00043D AF 37            [24]  813 	mov	r7,_UART_TxNumber_i_65536_73
      00043F                        814 00113$:
      00043F EF               [12]  815 	mov	a,r7
      000440 60 30            [24]  816 	jz	00129$
                                    817 ;	src/libs/uart.c:306: UART_TxChar(util_Hex2Ascii(a[i-1]));
      000442 8F 06            [24]  818 	mov	ar6,r7
      000444 EE               [12]  819 	mov	a,r6
      000445 14               [12]  820 	dec	a
      000446 24 38            [12]  821 	add	a,#_UART_TxNumber_a_65536_73
      000448 F9               [12]  822 	mov	r1,a
      000449 E7               [12]  823 	mov	a,@r1
      00044A 24 F6            [12]  824 	add	a,#0xff - 0x09
      00044C 50 0D            [24]  825 	jnc	00131$
      00044E EE               [12]  826 	mov	a,r6
      00044F 14               [12]  827 	dec	a
      000450 24 38            [12]  828 	add	a,#_UART_TxNumber_a_65536_73
      000452 F9               [12]  829 	mov	r1,a
      000453 87 05            [24]  830 	mov	ar5,@r1
      000455 74 37            [12]  831 	mov	a,#0x37
      000457 2D               [12]  832 	add	a,r5
      000458 FD               [12]  833 	mov	r5,a
      000459 80 0B            [24]  834 	sjmp	00132$
      00045B                        835 00131$:
      00045B EE               [12]  836 	mov	a,r6
      00045C 14               [12]  837 	dec	a
      00045D 24 38            [12]  838 	add	a,#_UART_TxNumber_a_65536_73
      00045F F9               [12]  839 	mov	r1,a
      000460 87 06            [24]  840 	mov	ar6,@r1
      000462 74 30            [12]  841 	mov	a,#0x30
      000464 2E               [12]  842 	add	a,r6
      000465 FD               [12]  843 	mov	r5,a
      000466                        844 00132$:
      000466 8D 82            [24]  845 	mov	dpl,r5
      000468 C0 07            [24]  846 	push	ar7
      00046A 12 02 AC         [24]  847 	lcall	_UART_TxChar
      00046D D0 07            [24]  848 	pop	ar7
                                    849 ;	src/libs/uart.c:307: i--;
      00046F 1F               [12]  850 	dec	r7
      000470 80 CD            [24]  851 	sjmp	00113$
      000472                        852 00129$:
                                    853 ;	src/libs/uart.c:312: }
      000472 22               [24]  854 	ret
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
      000473                        873 _UART_Printf:
      000473 C0 4C            [24]  874 	push	_bp
      000475 E5 81            [12]  875 	mov	a,sp
      000477 F5 4C            [12]  876 	mov	_bp,a
      000479 24 05            [12]  877 	add	a,#0x05
      00047B F5 81            [12]  878 	mov	sp,a
                                    879 ;	src/libs/uart.c:417: va_start(argp, argList);
      00047D E5 4C            [12]  880 	mov	a,_bp
      00047F 24 FB            [12]  881 	add	a,#0xfb
      000481 FF               [12]  882 	mov	r7,a
      000482 E5 4C            [12]  883 	mov	a,_bp
      000484 24 05            [12]  884 	add	a,#0x05
      000486 F8               [12]  885 	mov	r0,a
      000487 A6 07            [24]  886 	mov	@r0,ar7
                                    887 ;	src/libs/uart.c:420: for(ptr = argList; *ptr != '\0'; ptr++)
      000489 E5 4C            [12]  888 	mov	a,_bp
      00048B 24 FB            [12]  889 	add	a,#0xfb
      00048D F8               [12]  890 	mov	r0,a
      00048E A9 4C            [24]  891 	mov	r1,_bp
      000490 09               [12]  892 	inc	r1
      000491 09               [12]  893 	inc	r1
      000492 E6               [12]  894 	mov	a,@r0
      000493 F7               [12]  895 	mov	@r1,a
      000494 08               [12]  896 	inc	r0
      000495 09               [12]  897 	inc	r1
      000496 E6               [12]  898 	mov	a,@r0
      000497 F7               [12]  899 	mov	@r1,a
      000498 08               [12]  900 	inc	r0
      000499 09               [12]  901 	inc	r1
      00049A E6               [12]  902 	mov	a,@r0
      00049B F7               [12]  903 	mov	@r1,a
      00049C                        904 00138$:
      00049C A8 4C            [24]  905 	mov	r0,_bp
      00049E 08               [12]  906 	inc	r0
      00049F 08               [12]  907 	inc	r0
      0004A0 86 82            [24]  908 	mov	dpl,@r0
      0004A2 08               [12]  909 	inc	r0
      0004A3 86 83            [24]  910 	mov	dph,@r0
      0004A5 08               [12]  911 	inc	r0
      0004A6 86 F0            [24]  912 	mov	b,@r0
      0004A8 12 0B 34         [24]  913 	lcall	__gptrget
      0004AB FB               [12]  914 	mov	r3,a
      0004AC 70 03            [24]  915 	jnz	00278$
      0004AE 02 07 C3         [24]  916 	ljmp	00140$
      0004B1                        917 00278$:
                                    918 ;	src/libs/uart.c:423: ch= *ptr;
                                    919 ;	src/libs/uart.c:424: if(ch == '%')         /*Check for '%' as there will be format specifier after it */
      0004B1 BB 25 02         [24]  920 	cjne	r3,#0x25,00279$
      0004B4 80 03            [24]  921 	sjmp	00280$
      0004B6                        922 00279$:
      0004B6 02 07 B1         [24]  923 	ljmp	00134$
      0004B9                        924 00280$:
                                    925 ;	src/libs/uart.c:426: ptr++;
      0004B9 A8 4C            [24]  926 	mov	r0,_bp
      0004BB 08               [12]  927 	inc	r0
      0004BC 08               [12]  928 	inc	r0
      0004BD 06               [12]  929 	inc	@r0
      0004BE B6 00 02         [24]  930 	cjne	@r0,#0x00,00281$
      0004C1 08               [12]  931 	inc	r0
      0004C2 06               [12]  932 	inc	@r0
      0004C3                        933 00281$:
                                    934 ;	src/libs/uart.c:427: ch = *ptr;
      0004C3 A8 4C            [24]  935 	mov	r0,_bp
      0004C5 08               [12]  936 	inc	r0
      0004C6 08               [12]  937 	inc	r0
      0004C7 86 82            [24]  938 	mov	dpl,@r0
      0004C9 08               [12]  939 	inc	r0
      0004CA 86 83            [24]  940 	mov	dph,@r0
      0004CC 08               [12]  941 	inc	r0
      0004CD 86 F0            [24]  942 	mov	b,@r0
      0004CF 12 0B 34         [24]  943 	lcall	__gptrget
      0004D2 FB               [12]  944 	mov	r3,a
                                    945 ;	src/libs/uart.c:428: if((ch>=0x30) && (ch<=0x39))
      0004D3 BB 30 00         [24]  946 	cjne	r3,#0x30,00282$
      0004D6                        947 00282$:
      0004D6 40 46            [24]  948 	jc	00106$
      0004D8 EB               [12]  949 	mov	a,r3
      0004D9 24 C6            [12]  950 	add	a,#0xff - 0x39
      0004DB 40 41            [24]  951 	jc	00106$
                                    952 ;	src/libs/uart.c:430: v_numOfDigitsToTransmit_u8 = 0;
      0004DD A8 4C            [24]  953 	mov	r0,_bp
      0004DF 08               [12]  954 	inc	r0
      0004E0 76 00            [12]  955 	mov	@r0,#0x00
                                    956 ;	src/libs/uart.c:431: while((ch>=0x30) && (ch<=0x39))
      0004E2 A8 4C            [24]  957 	mov	r0,_bp
      0004E4 08               [12]  958 	inc	r0
      0004E5 08               [12]  959 	inc	r0
      0004E6 86 02            [24]  960 	mov	ar2,@r0
      0004E8 08               [12]  961 	inc	r0
      0004E9 86 07            [24]  962 	mov	ar7,@r0
      0004EB 08               [12]  963 	inc	r0
      0004EC 86 06            [24]  964 	mov	ar6,@r0
      0004EE                        965 00102$:
      0004EE BB 30 00         [24]  966 	cjne	r3,#0x30,00285$
      0004F1                        967 00285$:
      0004F1 40 32            [24]  968 	jc	00169$
      0004F3 EB               [12]  969 	mov	a,r3
      0004F4 24 C6            [12]  970 	add	a,#0xff - 0x39
      0004F6 40 2D            [24]  971 	jc	00169$
                                    972 ;	src/libs/uart.c:433: v_numOfDigitsToTransmit_u8 = (v_numOfDigitsToTransmit_u8 * 10) + (ch-0x30);
      0004F8 A8 4C            [24]  973 	mov	r0,_bp
      0004FA 08               [12]  974 	inc	r0
      0004FB E6               [12]  975 	mov	a,@r0
      0004FC 75 F0 0A         [24]  976 	mov	b,#0x0a
      0004FF A4               [48]  977 	mul	ab
      000500 FD               [12]  978 	mov	r5,a
      000501 8B 04            [24]  979 	mov	ar4,r3
      000503 EC               [12]  980 	mov	a,r4
      000504 24 D0            [12]  981 	add	a,#0xd0
      000506 2D               [12]  982 	add	a,r5
      000507 FD               [12]  983 	mov	r5,a
      000508 A8 4C            [24]  984 	mov	r0,_bp
      00050A 08               [12]  985 	inc	r0
      00050B A6 05            [24]  986 	mov	@r0,ar5
                                    987 ;	src/libs/uart.c:434: ptr++;
      00050D 0A               [12]  988 	inc	r2
      00050E BA 00 01         [24]  989 	cjne	r2,#0x00,00288$
      000511 0F               [12]  990 	inc	r7
      000512                        991 00288$:
                                    992 ;	src/libs/uart.c:435: ch = *ptr;
      000512 8A 82            [24]  993 	mov	dpl,r2
      000514 8F 83            [24]  994 	mov	dph,r7
      000516 8E F0            [24]  995 	mov	b,r6
      000518 12 0B 34         [24]  996 	lcall	__gptrget
      00051B FB               [12]  997 	mov	r3,a
      00051C 80 D0            [24]  998 	sjmp	00102$
      00051E                        999 00106$:
                                   1000 ;	src/libs/uart.c:440: v_numOfDigitsToTransmit_u8 = C_MaxDigitsToTransmitUsingPrintf_U8;
      00051E A8 4C            [24] 1001 	mov	r0,_bp
      000520 08               [12] 1002 	inc	r0
      000521 76 FF            [12] 1003 	mov	@r0,#0xff
                                   1004 ;	src/libs/uart.c:539: va_end(argp);
                                   1005 ;	src/libs/uart.c:440: v_numOfDigitsToTransmit_u8 = C_MaxDigitsToTransmitUsingPrintf_U8;
      000523 80 0C            [24] 1006 	sjmp	00107$
      000525                       1007 00169$:
      000525 A8 4C            [24] 1008 	mov	r0,_bp
      000527 08               [12] 1009 	inc	r0
      000528 08               [12] 1010 	inc	r0
      000529 A6 02            [24] 1011 	mov	@r0,ar2
      00052B 08               [12] 1012 	inc	r0
      00052C A6 07            [24] 1013 	mov	@r0,ar7
      00052E 08               [12] 1014 	inc	r0
      00052F A6 06            [24] 1015 	mov	@r0,ar6
      000531                       1016 00107$:
                                   1017 ;	src/libs/uart.c:444: switch(ch)       /* Decode the type of the argument */
      000531 BB 25 03         [24] 1018 	cjne	r3,#0x25,00289$
      000534 02 07 A9         [24] 1019 	ljmp	00131$
      000537                       1020 00289$:
      000537 BB 42 03         [24] 1021 	cjne	r3,#0x42,00290$
      00053A 02 07 42         [24] 1022 	ljmp	00124$
      00053D                       1023 00290$:
      00053D BB 43 02         [24] 1024 	cjne	r3,#0x43,00291$
      000540 80 49            [24] 1025 	sjmp	00110$
      000542                       1026 00291$:
      000542 BB 44 03         [24] 1027 	cjne	r3,#0x44,00292$
      000545 02 05 EF         [24] 1028 	ljmp	00114$
      000548                       1029 00292$:
      000548 BB 46 03         [24] 1030 	cjne	r3,#0x46,00293$
      00054B 02 07 B6         [24] 1031 	ljmp	00139$
      00054E                       1032 00293$:
      00054E BB 53 03         [24] 1033 	cjne	r3,#0x53,00294$
      000551 02 07 82         [24] 1034 	ljmp	00130$
      000554                       1035 00294$:
      000554 BB 55 03         [24] 1036 	cjne	r3,#0x55,00295$
      000557 02 06 7C         [24] 1037 	ljmp	00118$
      00055A                       1038 00295$:
      00055A BB 58 03         [24] 1039 	cjne	r3,#0x58,00296$
      00055D 02 06 DA         [24] 1040 	ljmp	00120$
      000560                       1041 00296$:
      000560 BB 62 03         [24] 1042 	cjne	r3,#0x62,00297$
      000563 02 07 08         [24] 1043 	ljmp	00121$
      000566                       1044 00297$:
      000566 BB 63 02         [24] 1045 	cjne	r3,#0x63,00298$
      000569 80 20            [24] 1046 	sjmp	00110$
      00056B                       1047 00298$:
      00056B BB 64 02         [24] 1048 	cjne	r3,#0x64,00299$
      00056E 80 34            [24] 1049 	sjmp	00111$
      000570                       1050 00299$:
      000570 BB 66 03         [24] 1051 	cjne	r3,#0x66,00300$
      000573 02 07 B6         [24] 1052 	ljmp	00139$
      000576                       1053 00300$:
      000576 BB 73 03         [24] 1054 	cjne	r3,#0x73,00301$
      000579 02 07 82         [24] 1055 	ljmp	00130$
      00057C                       1056 00301$:
      00057C BB 75 03         [24] 1057 	cjne	r3,#0x75,00302$
      00057F 02 06 4C         [24] 1058 	ljmp	00117$
      000582                       1059 00302$:
      000582 BB 78 03         [24] 1060 	cjne	r3,#0x78,00303$
      000585 02 06 AA         [24] 1061 	ljmp	00119$
      000588                       1062 00303$:
      000588 02 07 B6         [24] 1063 	ljmp	00139$
                                   1064 ;	src/libs/uart.c:447: case 'c':     /* Argument type is of char, hence read char data from the argp */
      00058B                       1065 00110$:
                                   1066 ;	src/libs/uart.c:448: ch = va_arg(argp, uint8_t);
      00058B E5 4C            [12] 1067 	mov	a,_bp
      00058D 24 05            [12] 1068 	add	a,#0x05
      00058F F8               [12] 1069 	mov	r0,a
      000590 E6               [12] 1070 	mov	a,@r0
      000591 14               [12] 1071 	dec	a
      000592 F9               [12] 1072 	mov	r1,a
      000593 E5 4C            [12] 1073 	mov	a,_bp
      000595 24 05            [12] 1074 	add	a,#0x05
      000597 F8               [12] 1075 	mov	r0,a
      000598 A6 01            [24] 1076 	mov	@r0,ar1
      00059A 87 07            [24] 1077 	mov	ar7,@r1
                                   1078 ;	src/libs/uart.c:449: UART_TxChar(ch);
      00059C 8F 82            [24] 1079 	mov	dpl,r7
      00059E 12 02 AC         [24] 1080 	lcall	_UART_TxChar
                                   1081 ;	src/libs/uart.c:450: break;
      0005A1 02 07 B6         [24] 1082 	ljmp	00139$
                                   1083 ;	src/libs/uart.c:452: case 'd':    /* Argument type is of signed integer, hence read 16bit data from the argp */
      0005A4                       1084 00111$:
                                   1085 ;	src/libs/uart.c:453: v_num_s16 = va_arg(argp, sint16_t);
      0005A4 E5 4C            [12] 1086 	mov	a,_bp
      0005A6 24 05            [12] 1087 	add	a,#0x05
      0005A8 F8               [12] 1088 	mov	r0,a
      0005A9 E6               [12] 1089 	mov	a,@r0
      0005AA 24 FE            [12] 1090 	add	a,#0xfe
      0005AC FF               [12] 1091 	mov	r7,a
      0005AD E5 4C            [12] 1092 	mov	a,_bp
      0005AF 24 05            [12] 1093 	add	a,#0x05
      0005B1 F8               [12] 1094 	mov	r0,a
      0005B2 A6 07            [24] 1095 	mov	@r0,ar7
      0005B4 8F 01            [24] 1096 	mov	ar1,r7
      0005B6 87 06            [24] 1097 	mov	ar6,@r1
      0005B8 09               [12] 1098 	inc	r1
      0005B9 87 07            [24] 1099 	mov	ar7,@r1
      0005BB 19               [12] 1100 	dec	r1
                                   1101 ;	src/libs/uart.c:454: if(v_num_s16<0)
      0005BC EF               [12] 1102 	mov	a,r7
      0005BD 30 E7 15         [24] 1103 	jnb	acc.7,00113$
                                   1104 ;	src/libs/uart.c:456: v_num_s16 = -v_num_s16;
      0005C0 C3               [12] 1105 	clr	c
      0005C1 E4               [12] 1106 	clr	a
      0005C2 9E               [12] 1107 	subb	a,r6
      0005C3 FE               [12] 1108 	mov	r6,a
      0005C4 E4               [12] 1109 	clr	a
      0005C5 9F               [12] 1110 	subb	a,r7
      0005C6 FF               [12] 1111 	mov	r7,a
                                   1112 ;	src/libs/uart.c:457: UART_TxChar('-');
      0005C7 75 82 2D         [24] 1113 	mov	dpl,#0x2d
      0005CA C0 07            [24] 1114 	push	ar7
      0005CC C0 06            [24] 1115 	push	ar6
      0005CE 12 02 AC         [24] 1116 	lcall	_UART_TxChar
      0005D1 D0 06            [24] 1117 	pop	ar6
      0005D3 D0 07            [24] 1118 	pop	ar7
      0005D5                       1119 00113$:
                                   1120 ;	src/libs/uart.c:459: UART_TxNumber(C_DECIMAL_U8,v_num_s16,v_numOfDigitsToTransmit_u8);
      0005D5 8E 31            [24] 1121 	mov	_UART_TxNumber_PARM_2,r6
      0005D7 EF               [12] 1122 	mov	a,r7
      0005D8 F5 32            [12] 1123 	mov	(_UART_TxNumber_PARM_2 + 1),a
      0005DA 33               [12] 1124 	rlc	a
      0005DB 95 E0            [12] 1125 	subb	a,acc
      0005DD F5 33            [12] 1126 	mov	(_UART_TxNumber_PARM_2 + 2),a
      0005DF F5 34            [12] 1127 	mov	(_UART_TxNumber_PARM_2 + 3),a
      0005E1 A8 4C            [24] 1128 	mov	r0,_bp
      0005E3 08               [12] 1129 	inc	r0
      0005E4 86 35            [24] 1130 	mov	_UART_TxNumber_PARM_3,@r0
      0005E6 75 82 0A         [24] 1131 	mov	dpl,#0x0a
      0005E9 12 03 41         [24] 1132 	lcall	_UART_TxNumber
                                   1133 ;	src/libs/uart.c:460: break;
      0005EC 02 07 B6         [24] 1134 	ljmp	00139$
                                   1135 ;	src/libs/uart.c:462: case 'D':    /* Argument type is of integer, hence read 16bit data from the argp */
      0005EF                       1136 00114$:
                                   1137 ;	src/libs/uart.c:463: v_num_s32 = va_arg(argp, sint32_t);                
      0005EF E5 4C            [12] 1138 	mov	a,_bp
      0005F1 24 05            [12] 1139 	add	a,#0x05
      0005F3 F8               [12] 1140 	mov	r0,a
      0005F4 E6               [12] 1141 	mov	a,@r0
      0005F5 24 FC            [12] 1142 	add	a,#0xfc
      0005F7 FF               [12] 1143 	mov	r7,a
      0005F8 E5 4C            [12] 1144 	mov	a,_bp
      0005FA 24 05            [12] 1145 	add	a,#0x05
      0005FC F8               [12] 1146 	mov	r0,a
      0005FD A6 07            [24] 1147 	mov	@r0,ar7
      0005FF 8F 01            [24] 1148 	mov	ar1,r7
      000601 87 04            [24] 1149 	mov	ar4,@r1
      000603 09               [12] 1150 	inc	r1
      000604 87 05            [24] 1151 	mov	ar5,@r1
      000606 09               [12] 1152 	inc	r1
      000607 87 06            [24] 1153 	mov	ar6,@r1
      000609 09               [12] 1154 	inc	r1
      00060A 87 07            [24] 1155 	mov	ar7,@r1
      00060C 19               [12] 1156 	dec	r1
      00060D 19               [12] 1157 	dec	r1
      00060E 19               [12] 1158 	dec	r1
                                   1159 ;	src/libs/uart.c:464: if(v_num_s32<0)
      00060F EF               [12] 1160 	mov	a,r7
      000610 30 E7 23         [24] 1161 	jnb	acc.7,00116$
                                   1162 ;	src/libs/uart.c:466: v_num_s32 = -v_num_s32;
      000613 C3               [12] 1163 	clr	c
      000614 E4               [12] 1164 	clr	a
      000615 9C               [12] 1165 	subb	a,r4
      000616 FC               [12] 1166 	mov	r4,a
      000617 E4               [12] 1167 	clr	a
      000618 9D               [12] 1168 	subb	a,r5
      000619 FD               [12] 1169 	mov	r5,a
      00061A E4               [12] 1170 	clr	a
      00061B 9E               [12] 1171 	subb	a,r6
      00061C FE               [12] 1172 	mov	r6,a
      00061D E4               [12] 1173 	clr	a
      00061E 9F               [12] 1174 	subb	a,r7
      00061F FF               [12] 1175 	mov	r7,a
                                   1176 ;	src/libs/uart.c:467: UART_TxChar('-');
      000620 75 82 2D         [24] 1177 	mov	dpl,#0x2d
      000623 C0 07            [24] 1178 	push	ar7
      000625 C0 06            [24] 1179 	push	ar6
      000627 C0 05            [24] 1180 	push	ar5
      000629 C0 04            [24] 1181 	push	ar4
      00062B 12 02 AC         [24] 1182 	lcall	_UART_TxChar
      00062E D0 04            [24] 1183 	pop	ar4
      000630 D0 05            [24] 1184 	pop	ar5
      000632 D0 06            [24] 1185 	pop	ar6
      000634 D0 07            [24] 1186 	pop	ar7
      000636                       1187 00116$:
                                   1188 ;	src/libs/uart.c:469: UART_TxNumber(C_DECIMAL_U8,v_num_s32,v_numOfDigitsToTransmit_u8);            
      000636 8C 31            [24] 1189 	mov	_UART_TxNumber_PARM_2,r4
      000638 8D 32            [24] 1190 	mov	(_UART_TxNumber_PARM_2 + 1),r5
      00063A 8E 33            [24] 1191 	mov	(_UART_TxNumber_PARM_2 + 2),r6
      00063C 8F 34            [24] 1192 	mov	(_UART_TxNumber_PARM_2 + 3),r7
      00063E A8 4C            [24] 1193 	mov	r0,_bp
      000640 08               [12] 1194 	inc	r0
      000641 86 35            [24] 1195 	mov	_UART_TxNumber_PARM_3,@r0
      000643 75 82 0A         [24] 1196 	mov	dpl,#0x0a
      000646 12 03 41         [24] 1197 	lcall	_UART_TxNumber
                                   1198 ;	src/libs/uart.c:470: break;    
      000649 02 07 B6         [24] 1199 	ljmp	00139$
                                   1200 ;	src/libs/uart.c:472: case 'u':    /* Argument type is of unsigned integer, hence read 16bit unsigned data */
      00064C                       1201 00117$:
                                   1202 ;	src/libs/uart.c:473: v_num_u16 = va_arg(argp, uint16_t);            
      00064C E5 4C            [12] 1203 	mov	a,_bp
      00064E 24 05            [12] 1204 	add	a,#0x05
      000650 F8               [12] 1205 	mov	r0,a
      000651 E6               [12] 1206 	mov	a,@r0
      000652 24 FE            [12] 1207 	add	a,#0xfe
      000654 FF               [12] 1208 	mov	r7,a
      000655 E5 4C            [12] 1209 	mov	a,_bp
      000657 24 05            [12] 1210 	add	a,#0x05
      000659 F8               [12] 1211 	mov	r0,a
      00065A A6 07            [24] 1212 	mov	@r0,ar7
      00065C 8F 01            [24] 1213 	mov	ar1,r7
      00065E 87 06            [24] 1214 	mov	ar6,@r1
      000660 09               [12] 1215 	inc	r1
      000661 87 07            [24] 1216 	mov	ar7,@r1
      000663 19               [12] 1217 	dec	r1
                                   1218 ;	src/libs/uart.c:474: UART_TxNumber(C_DECIMAL_U8,v_num_u16,v_numOfDigitsToTransmit_u8);                
      000664 8E 31            [24] 1219 	mov	_UART_TxNumber_PARM_2,r6
      000666 8F 32            [24] 1220 	mov	(_UART_TxNumber_PARM_2 + 1),r7
      000668 75 33 00         [24] 1221 	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
      00066B 75 34 00         [24] 1222 	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
      00066E A8 4C            [24] 1223 	mov	r0,_bp
      000670 08               [12] 1224 	inc	r0
      000671 86 35            [24] 1225 	mov	_UART_TxNumber_PARM_3,@r0
      000673 75 82 0A         [24] 1226 	mov	dpl,#0x0a
      000676 12 03 41         [24] 1227 	lcall	_UART_TxNumber
                                   1228 ;	src/libs/uart.c:475: break;
      000679 02 07 B6         [24] 1229 	ljmp	00139$
                                   1230 ;	src/libs/uart.c:477: case 'U':    /* Argument type is of integer, hence read 32bit unsigend data */
      00067C                       1231 00118$:
                                   1232 ;	src/libs/uart.c:478: v_num_u32 = va_arg(argp, uint32_t);            
      00067C E5 4C            [12] 1233 	mov	a,_bp
      00067E 24 05            [12] 1234 	add	a,#0x05
      000680 F8               [12] 1235 	mov	r0,a
      000681 E6               [12] 1236 	mov	a,@r0
      000682 24 FC            [12] 1237 	add	a,#0xfc
      000684 FF               [12] 1238 	mov	r7,a
      000685 E5 4C            [12] 1239 	mov	a,_bp
      000687 24 05            [12] 1240 	add	a,#0x05
      000689 F8               [12] 1241 	mov	r0,a
      00068A A6 07            [24] 1242 	mov	@r0,ar7
      00068C 8F 01            [24] 1243 	mov	ar1,r7
      00068E 87 31            [24] 1244 	mov	_UART_TxNumber_PARM_2,@r1
      000690 09               [12] 1245 	inc	r1
      000691 87 32            [24] 1246 	mov	(_UART_TxNumber_PARM_2 + 1),@r1
      000693 09               [12] 1247 	inc	r1
      000694 87 33            [24] 1248 	mov	(_UART_TxNumber_PARM_2 + 2),@r1
      000696 09               [12] 1249 	inc	r1
      000697 87 34            [24] 1250 	mov	(_UART_TxNumber_PARM_2 + 3),@r1
      000699 19               [12] 1251 	dec	r1
      00069A 19               [12] 1252 	dec	r1
      00069B 19               [12] 1253 	dec	r1
                                   1254 ;	src/libs/uart.c:479: UART_TxNumber(C_DECIMAL_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
      00069C A8 4C            [24] 1255 	mov	r0,_bp
      00069E 08               [12] 1256 	inc	r0
      00069F 86 35            [24] 1257 	mov	_UART_TxNumber_PARM_3,@r0
      0006A1 75 82 0A         [24] 1258 	mov	dpl,#0x0a
      0006A4 12 03 41         [24] 1259 	lcall	_UART_TxNumber
                                   1260 ;	src/libs/uart.c:480: break;            
      0006A7 02 07 B6         [24] 1261 	ljmp	00139$
                                   1262 ;	src/libs/uart.c:482: case 'x':  /* Argument type is of hex, hence hexadecimal data from the argp */
      0006AA                       1263 00119$:
                                   1264 ;	src/libs/uart.c:483: v_num_u16 = va_arg(argp, uint16_t);                
      0006AA E5 4C            [12] 1265 	mov	a,_bp
      0006AC 24 05            [12] 1266 	add	a,#0x05
      0006AE F8               [12] 1267 	mov	r0,a
      0006AF E6               [12] 1268 	mov	a,@r0
      0006B0 24 FE            [12] 1269 	add	a,#0xfe
      0006B2 FF               [12] 1270 	mov	r7,a
      0006B3 E5 4C            [12] 1271 	mov	a,_bp
      0006B5 24 05            [12] 1272 	add	a,#0x05
      0006B7 F8               [12] 1273 	mov	r0,a
      0006B8 A6 07            [24] 1274 	mov	@r0,ar7
      0006BA 8F 01            [24] 1275 	mov	ar1,r7
      0006BC 87 06            [24] 1276 	mov	ar6,@r1
      0006BE 09               [12] 1277 	inc	r1
      0006BF 87 07            [24] 1278 	mov	ar7,@r1
      0006C1 19               [12] 1279 	dec	r1
                                   1280 ;	src/libs/uart.c:484: UART_TxNumber(C_HEX_U8,v_num_u16,v_numOfDigitsToTransmit_u8);            
      0006C2 8E 31            [24] 1281 	mov	_UART_TxNumber_PARM_2,r6
      0006C4 8F 32            [24] 1282 	mov	(_UART_TxNumber_PARM_2 + 1),r7
      0006C6 75 33 00         [24] 1283 	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
      0006C9 75 34 00         [24] 1284 	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
      0006CC A8 4C            [24] 1285 	mov	r0,_bp
      0006CE 08               [12] 1286 	inc	r0
      0006CF 86 35            [24] 1287 	mov	_UART_TxNumber_PARM_3,@r0
      0006D1 75 82 10         [24] 1288 	mov	dpl,#0x10
      0006D4 12 03 41         [24] 1289 	lcall	_UART_TxNumber
                                   1290 ;	src/libs/uart.c:485: break;
      0006D7 02 07 B6         [24] 1291 	ljmp	00139$
                                   1292 ;	src/libs/uart.c:487: case 'X':  /* Argument type is of hex, hence hexadecimal data from the argp */
      0006DA                       1293 00120$:
                                   1294 ;	src/libs/uart.c:488: v_num_u32 = va_arg(argp, uint32_t);                        
      0006DA E5 4C            [12] 1295 	mov	a,_bp
      0006DC 24 05            [12] 1296 	add	a,#0x05
      0006DE F8               [12] 1297 	mov	r0,a
      0006DF E6               [12] 1298 	mov	a,@r0
      0006E0 24 FC            [12] 1299 	add	a,#0xfc
      0006E2 FF               [12] 1300 	mov	r7,a
      0006E3 E5 4C            [12] 1301 	mov	a,_bp
      0006E5 24 05            [12] 1302 	add	a,#0x05
      0006E7 F8               [12] 1303 	mov	r0,a
      0006E8 A6 07            [24] 1304 	mov	@r0,ar7
      0006EA 8F 01            [24] 1305 	mov	ar1,r7
      0006EC 87 31            [24] 1306 	mov	_UART_TxNumber_PARM_2,@r1
      0006EE 09               [12] 1307 	inc	r1
      0006EF 87 32            [24] 1308 	mov	(_UART_TxNumber_PARM_2 + 1),@r1
      0006F1 09               [12] 1309 	inc	r1
      0006F2 87 33            [24] 1310 	mov	(_UART_TxNumber_PARM_2 + 2),@r1
      0006F4 09               [12] 1311 	inc	r1
      0006F5 87 34            [24] 1312 	mov	(_UART_TxNumber_PARM_2 + 3),@r1
      0006F7 19               [12] 1313 	dec	r1
      0006F8 19               [12] 1314 	dec	r1
      0006F9 19               [12] 1315 	dec	r1
                                   1316 ;	src/libs/uart.c:489: UART_TxNumber(C_HEX_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
      0006FA A8 4C            [24] 1317 	mov	r0,_bp
      0006FC 08               [12] 1318 	inc	r0
      0006FD 86 35            [24] 1319 	mov	_UART_TxNumber_PARM_3,@r0
      0006FF 75 82 10         [24] 1320 	mov	dpl,#0x10
      000702 12 03 41         [24] 1321 	lcall	_UART_TxNumber
                                   1322 ;	src/libs/uart.c:490: break;
      000705 02 07 B6         [24] 1323 	ljmp	00139$
                                   1324 ;	src/libs/uart.c:493: case 'b':  /* Argument type is of binary,Read int and convert to binary */
      000708                       1325 00121$:
                                   1326 ;	src/libs/uart.c:494: v_num_u16 = va_arg(argp, uint16_t);        
      000708 E5 4C            [12] 1327 	mov	a,_bp
      00070A 24 05            [12] 1328 	add	a,#0x05
      00070C F8               [12] 1329 	mov	r0,a
      00070D E6               [12] 1330 	mov	a,@r0
      00070E 24 FE            [12] 1331 	add	a,#0xfe
      000710 FF               [12] 1332 	mov	r7,a
      000711 E5 4C            [12] 1333 	mov	a,_bp
      000713 24 05            [12] 1334 	add	a,#0x05
      000715 F8               [12] 1335 	mov	r0,a
      000716 A6 07            [24] 1336 	mov	@r0,ar7
      000718 8F 01            [24] 1337 	mov	ar1,r7
      00071A 87 06            [24] 1338 	mov	ar6,@r1
      00071C 09               [12] 1339 	inc	r1
      00071D 87 07            [24] 1340 	mov	ar7,@r1
      00071F 19               [12] 1341 	dec	r1
                                   1342 ;	src/libs/uart.c:496: if(v_numOfDigitsToTransmit_u8 == C_MaxDigitsToTransmitUsingPrintf_U8)
      000720 A8 4C            [24] 1343 	mov	r0,_bp
      000722 08               [12] 1344 	inc	r0
      000723 B6 FF 05         [24] 1345 	cjne	@r0,#0xff,00123$
                                   1346 ;	src/libs/uart.c:497: v_numOfDigitsToTransmit_u8 = 16;
      000726 A8 4C            [24] 1347 	mov	r0,_bp
      000728 08               [12] 1348 	inc	r0
      000729 76 10            [12] 1349 	mov	@r0,#0x10
      00072B                       1350 00123$:
                                   1351 ;	src/libs/uart.c:499: UART_TxNumber(C_BINARY_U8,v_num_u16,v_numOfDigitsToTransmit_u8);            
      00072B 8E 31            [24] 1352 	mov	_UART_TxNumber_PARM_2,r6
      00072D 8F 32            [24] 1353 	mov	(_UART_TxNumber_PARM_2 + 1),r7
      00072F 75 33 00         [24] 1354 	mov	(_UART_TxNumber_PARM_2 + 2),#0x00
      000732 75 34 00         [24] 1355 	mov	(_UART_TxNumber_PARM_2 + 3),#0x00
      000735 A8 4C            [24] 1356 	mov	r0,_bp
      000737 08               [12] 1357 	inc	r0
      000738 86 35            [24] 1358 	mov	_UART_TxNumber_PARM_3,@r0
      00073A 75 82 02         [24] 1359 	mov	dpl,#0x02
      00073D 12 03 41         [24] 1360 	lcall	_UART_TxNumber
                                   1361 ;	src/libs/uart.c:500: break;
                                   1362 ;	src/libs/uart.c:502: case 'B':  /* Argument type is of binary,Read int and convert to binary */
      000740 80 74            [24] 1363 	sjmp	00139$
      000742                       1364 00124$:
                                   1365 ;	src/libs/uart.c:503: v_num_u32 = va_arg(argp, uint32_t);            
      000742 E5 4C            [12] 1366 	mov	a,_bp
      000744 24 05            [12] 1367 	add	a,#0x05
      000746 F8               [12] 1368 	mov	r0,a
      000747 E6               [12] 1369 	mov	a,@r0
      000748 24 FC            [12] 1370 	add	a,#0xfc
      00074A FF               [12] 1371 	mov	r7,a
      00074B E5 4C            [12] 1372 	mov	a,_bp
      00074D 24 05            [12] 1373 	add	a,#0x05
      00074F F8               [12] 1374 	mov	r0,a
      000750 A6 07            [24] 1375 	mov	@r0,ar7
      000752 8F 01            [24] 1376 	mov	ar1,r7
      000754 87 04            [24] 1377 	mov	ar4,@r1
      000756 09               [12] 1378 	inc	r1
      000757 87 05            [24] 1379 	mov	ar5,@r1
      000759 09               [12] 1380 	inc	r1
      00075A 87 06            [24] 1381 	mov	ar6,@r1
      00075C 09               [12] 1382 	inc	r1
      00075D 87 07            [24] 1383 	mov	ar7,@r1
      00075F 19               [12] 1384 	dec	r1
      000760 19               [12] 1385 	dec	r1
      000761 19               [12] 1386 	dec	r1
                                   1387 ;	src/libs/uart.c:505: if(v_numOfDigitsToTransmit_u8 == C_MaxDigitsToTransmitUsingPrintf_U8)
      000762 A8 4C            [24] 1388 	mov	r0,_bp
      000764 08               [12] 1389 	inc	r0
      000765 B6 FF 05         [24] 1390 	cjne	@r0,#0xff,00126$
                                   1391 ;	src/libs/uart.c:506: v_numOfDigitsToTransmit_u8 = 32;        
      000768 A8 4C            [24] 1392 	mov	r0,_bp
      00076A 08               [12] 1393 	inc	r0
      00076B 76 20            [12] 1394 	mov	@r0,#0x20
      00076D                       1395 00126$:
                                   1396 ;	src/libs/uart.c:508: UART_TxNumber(C_BINARY_U8,v_num_u32,v_numOfDigitsToTransmit_u8);                
      00076D 8C 31            [24] 1397 	mov	_UART_TxNumber_PARM_2,r4
      00076F 8D 32            [24] 1398 	mov	(_UART_TxNumber_PARM_2 + 1),r5
      000771 8E 33            [24] 1399 	mov	(_UART_TxNumber_PARM_2 + 2),r6
      000773 8F 34            [24] 1400 	mov	(_UART_TxNumber_PARM_2 + 3),r7
      000775 A8 4C            [24] 1401 	mov	r0,_bp
      000777 08               [12] 1402 	inc	r0
      000778 86 35            [24] 1403 	mov	_UART_TxNumber_PARM_3,@r0
      00077A 75 82 02         [24] 1404 	mov	dpl,#0x02
      00077D 12 03 41         [24] 1405 	lcall	_UART_TxNumber
                                   1406 ;	src/libs/uart.c:509: break;
                                   1407 ;	src/libs/uart.c:522: case 's': /* Argument type is of string, hence get the pointer to sting passed */
      000780 80 34            [24] 1408 	sjmp	00139$
      000782                       1409 00130$:
                                   1410 ;	src/libs/uart.c:523: str = va_arg(argp, char *);
      000782 E5 4C            [12] 1411 	mov	a,_bp
      000784 24 05            [12] 1412 	add	a,#0x05
      000786 F8               [12] 1413 	mov	r0,a
      000787 E6               [12] 1414 	mov	a,@r0
      000788 24 FD            [12] 1415 	add	a,#0xfd
      00078A FF               [12] 1416 	mov	r7,a
      00078B E5 4C            [12] 1417 	mov	a,_bp
      00078D 24 05            [12] 1418 	add	a,#0x05
      00078F F8               [12] 1419 	mov	r0,a
      000790 A6 07            [24] 1420 	mov	@r0,ar7
      000792 8F 01            [24] 1421 	mov	ar1,r7
      000794 87 05            [24] 1422 	mov	ar5,@r1
      000796 09               [12] 1423 	inc	r1
      000797 87 06            [24] 1424 	mov	ar6,@r1
      000799 09               [12] 1425 	inc	r1
      00079A 87 07            [24] 1426 	mov	ar7,@r1
      00079C 19               [12] 1427 	dec	r1
      00079D 19               [12] 1428 	dec	r1
                                   1429 ;	src/libs/uart.c:524: UART_TxString(str);            
      00079E 8D 82            [24] 1430 	mov	dpl,r5
      0007A0 8E 83            [24] 1431 	mov	dph,r6
      0007A2 8F F0            [24] 1432 	mov	b,r7
      0007A4 12 02 B5         [24] 1433 	lcall	_UART_TxString
                                   1434 ;	src/libs/uart.c:525: break;
                                   1435 ;	src/libs/uart.c:527: case '%':
      0007A7 80 0D            [24] 1436 	sjmp	00139$
      0007A9                       1437 00131$:
                                   1438 ;	src/libs/uart.c:528: UART_TxChar('%');
      0007A9 75 82 25         [24] 1439 	mov	dpl,#0x25
      0007AC 12 02 AC         [24] 1440 	lcall	_UART_TxChar
                                   1441 ;	src/libs/uart.c:530: }
      0007AF 80 05            [24] 1442 	sjmp	00139$
      0007B1                       1443 00134$:
                                   1444 ;	src/libs/uart.c:535: UART_TxChar(ch);
      0007B1 8B 82            [24] 1445 	mov	dpl,r3
      0007B3 12 02 AC         [24] 1446 	lcall	_UART_TxChar
      0007B6                       1447 00139$:
                                   1448 ;	src/libs/uart.c:420: for(ptr = argList; *ptr != '\0'; ptr++)
      0007B6 A8 4C            [24] 1449 	mov	r0,_bp
      0007B8 08               [12] 1450 	inc	r0
      0007B9 08               [12] 1451 	inc	r0
      0007BA 06               [12] 1452 	inc	@r0
      0007BB B6 00 02         [24] 1453 	cjne	@r0,#0x00,00310$
      0007BE 08               [12] 1454 	inc	r0
      0007BF 06               [12] 1455 	inc	@r0
      0007C0                       1456 00310$:
      0007C0 02 04 9C         [24] 1457 	ljmp	00138$
                                   1458 ;	src/libs/uart.c:539: va_end(argp);
      0007C3                       1459 00140$:
                                   1460 ;	src/libs/uart.c:540: }
      0007C3 85 4C 81         [24] 1461 	mov	sp,_bp
      0007C6 D0 4C            [24] 1462 	pop	_bp
      0007C8 22               [24] 1463 	ret
                                   1464 	.area CSEG    (CODE)
                                   1465 	.area CONST   (CODE)
                                   1466 	.area XINIT   (CODE)
                                   1467 	.area CABS    (ABS,CODE)
