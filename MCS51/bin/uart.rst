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
                                    106 	.globl _B
                                    107 	.globl _A
                                    108 	.globl _ACC
                                    109 	.globl _PSW
                                    110 	.globl _TH2
                                    111 	.globl _TL2
                                    112 	.globl _RCAP2H
                                    113 	.globl _RCAP2L
                                    114 	.globl _T2MOD
                                    115 	.globl _T2CON
                                    116 	.globl _IP
                                    117 	.globl _P3
                                    118 	.globl _IE
                                    119 	.globl _P2
                                    120 	.globl _SBUF
                                    121 	.globl _SCON
                                    122 	.globl _P1
                                    123 	.globl _TH1
                                    124 	.globl _TH0
                                    125 	.globl _TL1
                                    126 	.globl _TL0
                                    127 	.globl _TMOD
                                    128 	.globl _TCON
                                    129 	.globl _PCON
                                    130 	.globl _DPH
                                    131 	.globl _DPL
                                    132 	.globl _SP
                                    133 	.globl _P0
                                    134 	.globl _serial_begin
                                    135 	.globl _rx_char
                                    136 	.globl _tx_char
                                    137 	.globl _tx_string
                                    138 	.globl _rx_string
                                    139 ;--------------------------------------------------------
                                    140 ; special function registers
                                    141 ;--------------------------------------------------------
                                    142 	.area RSEG    (ABS,DATA)
      000000                        143 	.org 0x0000
                           000080   144 _P0	=	0x0080
                           000081   145 _SP	=	0x0081
                           000082   146 _DPL	=	0x0082
                           000083   147 _DPH	=	0x0083
                           000087   148 _PCON	=	0x0087
                           000088   149 _TCON	=	0x0088
                           000089   150 _TMOD	=	0x0089
                           00008A   151 _TL0	=	0x008a
                           00008B   152 _TL1	=	0x008b
                           00008C   153 _TH0	=	0x008c
                           00008D   154 _TH1	=	0x008d
                           000090   155 _P1	=	0x0090
                           000098   156 _SCON	=	0x0098
                           000099   157 _SBUF	=	0x0099
                           0000A0   158 _P2	=	0x00a0
                           0000A8   159 _IE	=	0x00a8
                           0000B0   160 _P3	=	0x00b0
                           0000B8   161 _IP	=	0x00b8
                           0000C8   162 _T2CON	=	0x00c8
                           0000C9   163 _T2MOD	=	0x00c9
                           0000CA   164 _RCAP2L	=	0x00ca
                           0000CB   165 _RCAP2H	=	0x00cb
                           0000CC   166 _TL2	=	0x00cc
                           0000CD   167 _TH2	=	0x00cd
                           0000D0   168 _PSW	=	0x00d0
                           0000E0   169 _ACC	=	0x00e0
                           0000E0   170 _A	=	0x00e0
                           0000F0   171 _B	=	0x00f0
                                    172 ;--------------------------------------------------------
                                    173 ; special function bits
                                    174 ;--------------------------------------------------------
                                    175 	.area RSEG    (ABS,DATA)
      000000                        176 	.org 0x0000
                           000080   177 _P0_0	=	0x0080
                           000081   178 _P0_1	=	0x0081
                           000082   179 _P0_2	=	0x0082
                           000083   180 _P0_3	=	0x0083
                           000084   181 _P0_4	=	0x0084
                           000085   182 _P0_5	=	0x0085
                           000086   183 _P0_6	=	0x0086
                           000087   184 _P0_7	=	0x0087
                           000088   185 _IT0	=	0x0088
                           000089   186 _IE0	=	0x0089
                           00008A   187 _IT1	=	0x008a
                           00008B   188 _IE1	=	0x008b
                           00008C   189 _TR0	=	0x008c
                           00008D   190 _TF0	=	0x008d
                           00008E   191 _TR1	=	0x008e
                           00008F   192 _TF1	=	0x008f
                           000090   193 _P1_0	=	0x0090
                           000091   194 _P1_1	=	0x0091
                           000092   195 _P1_2	=	0x0092
                           000093   196 _P1_3	=	0x0093
                           000094   197 _P1_4	=	0x0094
                           000095   198 _P1_5	=	0x0095
                           000096   199 _P1_6	=	0x0096
                           000097   200 _P1_7	=	0x0097
                           000090   201 _T2	=	0x0090
                           000091   202 _T2EX	=	0x0091
                           000098   203 _RI	=	0x0098
                           000099   204 _TI	=	0x0099
                           00009A   205 _RB8	=	0x009a
                           00009B   206 _TB8	=	0x009b
                           00009C   207 _REN	=	0x009c
                           00009D   208 _SM2	=	0x009d
                           00009E   209 _SM1	=	0x009e
                           00009F   210 _SM0	=	0x009f
                           0000A0   211 _P2_0	=	0x00a0
                           0000A1   212 _P2_1	=	0x00a1
                           0000A2   213 _P2_2	=	0x00a2
                           0000A3   214 _P2_3	=	0x00a3
                           0000A4   215 _P2_4	=	0x00a4
                           0000A5   216 _P2_5	=	0x00a5
                           0000A6   217 _P2_6	=	0x00a6
                           0000A7   218 _P2_7	=	0x00a7
                           0000A8   219 _EX0	=	0x00a8
                           0000A9   220 _ET0	=	0x00a9
                           0000AA   221 _EX1	=	0x00aa
                           0000AB   222 _ET1	=	0x00ab
                           0000AC   223 _ES	=	0x00ac
                           0000AD   224 _ET2	=	0x00ad
                           0000AF   225 _EA	=	0x00af
                           0000B0   226 _P3_0	=	0x00b0
                           0000B1   227 _P3_1	=	0x00b1
                           0000B2   228 _P3_2	=	0x00b2
                           0000B3   229 _P3_3	=	0x00b3
                           0000B4   230 _P3_4	=	0x00b4
                           0000B5   231 _P3_5	=	0x00b5
                           0000B6   232 _P3_6	=	0x00b6
                           0000B7   233 _P3_7	=	0x00b7
                           0000B0   234 _RXD	=	0x00b0
                           0000B1   235 _TXD	=	0x00b1
                           0000B2   236 _INT0	=	0x00b2
                           0000B3   237 _INT1	=	0x00b3
                           0000B4   238 _T0	=	0x00b4
                           0000B5   239 _T1	=	0x00b5
                           0000B6   240 _WR	=	0x00b6
                           0000B7   241 _RD	=	0x00b7
                           0000B8   242 _PX0	=	0x00b8
                           0000B9   243 _PT0	=	0x00b9
                           0000BA   244 _PX1	=	0x00ba
                           0000BB   245 _PT1	=	0x00bb
                           0000BC   246 _PS	=	0x00bc
                           0000BD   247 _PT2	=	0x00bd
                           0000C8   248 _T2CON_0	=	0x00c8
                           0000C9   249 _T2CON_1	=	0x00c9
                           0000CA   250 _T2CON_2	=	0x00ca
                           0000CB   251 _T2CON_3	=	0x00cb
                           0000CC   252 _T2CON_4	=	0x00cc
                           0000CD   253 _T2CON_5	=	0x00cd
                           0000CE   254 _T2CON_6	=	0x00ce
                           0000CF   255 _T2CON_7	=	0x00cf
                           0000C8   256 _CP_RL2	=	0x00c8
                           0000C9   257 _C_T2	=	0x00c9
                           0000CA   258 _TR2	=	0x00ca
                           0000CB   259 _EXEN2	=	0x00cb
                           0000CC   260 _TCLK	=	0x00cc
                           0000CD   261 _RCLK	=	0x00cd
                           0000CE   262 _EXF2	=	0x00ce
                           0000CF   263 _TF2	=	0x00cf
                           0000D0   264 _P	=	0x00d0
                           0000D1   265 _FL	=	0x00d1
                           0000D2   266 _OV	=	0x00d2
                           0000D3   267 _RS0	=	0x00d3
                           0000D4   268 _RS1	=	0x00d4
                           0000D5   269 _F0	=	0x00d5
                           0000D6   270 _AC	=	0x00d6
                           0000D7   271 _CY	=	0x00d7
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable register banks
                                    274 ;--------------------------------------------------------
                                    275 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        276 	.ds 8
                                    277 ;--------------------------------------------------------
                                    278 ; internal ram data
                                    279 ;--------------------------------------------------------
                                    280 	.area DSEG    (DATA)
                                    281 ;--------------------------------------------------------
                                    282 ; overlayable items in internal ram 
                                    283 ;--------------------------------------------------------
                                    284 	.area	OSEG    (OVR,DATA)
                                    285 	.area	OSEG    (OVR,DATA)
                                    286 	.area	OSEG    (OVR,DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; indirectly addressable internal ram data
                                    289 ;--------------------------------------------------------
                                    290 	.area ISEG    (DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; absolute internal ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area IABS    (ABS,DATA)
                                    295 	.area IABS    (ABS,DATA)
                                    296 ;--------------------------------------------------------
                                    297 ; bit data
                                    298 ;--------------------------------------------------------
                                    299 	.area BSEG    (BIT)
                                    300 ;--------------------------------------------------------
                                    301 ; paged external ram data
                                    302 ;--------------------------------------------------------
                                    303 	.area PSEG    (PAG,XDATA)
                                    304 ;--------------------------------------------------------
                                    305 ; external ram data
                                    306 ;--------------------------------------------------------
                                    307 	.area XSEG    (XDATA)
                                    308 ;--------------------------------------------------------
                                    309 ; absolute external ram data
                                    310 ;--------------------------------------------------------
                                    311 	.area XABS    (ABS,XDATA)
                                    312 ;--------------------------------------------------------
                                    313 ; external initialized ram data
                                    314 ;--------------------------------------------------------
                                    315 	.area XISEG   (XDATA)
                                    316 	.area HOME    (CODE)
                                    317 	.area GSINIT0 (CODE)
                                    318 	.area GSINIT1 (CODE)
                                    319 	.area GSINIT2 (CODE)
                                    320 	.area GSINIT3 (CODE)
                                    321 	.area GSINIT4 (CODE)
                                    322 	.area GSINIT5 (CODE)
                                    323 	.area GSINIT  (CODE)
                                    324 	.area GSFINAL (CODE)
                                    325 	.area CSEG    (CODE)
                                    326 ;--------------------------------------------------------
                                    327 ; global & static initialisations
                                    328 ;--------------------------------------------------------
                                    329 	.area HOME    (CODE)
                                    330 	.area GSINIT  (CODE)
                                    331 	.area GSFINAL (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 ;--------------------------------------------------------
                                    334 ; Home
                                    335 ;--------------------------------------------------------
                                    336 	.area HOME    (CODE)
                                    337 	.area HOME    (CODE)
                                    338 ;--------------------------------------------------------
                                    339 ; code
                                    340 ;--------------------------------------------------------
                                    341 	.area CSEG    (CODE)
                                    342 ;------------------------------------------------------------
                                    343 ;Allocation info for local variables in function 'serial_begin'
                                    344 ;------------------------------------------------------------
                                    345 ;baudrate                  Allocated to registers r4 r5 r6 r7 
                                    346 ;------------------------------------------------------------
                                    347 ;	src/libs/uart.c:3: void serial_begin(uint32_t baudrate){
                                    348 ;	-----------------------------------------
                                    349 ;	 function serial_begin
                                    350 ;	-----------------------------------------
      000238                        351 _serial_begin:
                           000007   352 	ar7 = 0x07
                           000006   353 	ar6 = 0x06
                           000005   354 	ar5 = 0x05
                           000004   355 	ar4 = 0x04
                           000003   356 	ar3 = 0x03
                           000002   357 	ar2 = 0x02
                           000001   358 	ar1 = 0x01
                           000000   359 	ar0 = 0x00
      000238 AC 82            [24]  360 	mov	r4,dpl
      00023A AD 83            [24]  361 	mov	r5,dph
      00023C AE F0            [24]  362 	mov	r6,b
      00023E FF               [12]  363 	mov	r7,a
                                    364 ;	src/libs/uart.c:4: TMOD |= 0x20;
      00023F 43 89 20         [24]  365 	orl	_TMOD,#0x20
                                    366 ;	src/libs/uart.c:5: SCON = 0x50;
      000242 75 98 50         [24]  367 	mov	_SCON,#0x50
                                    368 ;	src/libs/uart.c:6: TR1 = 1;
                                    369 ;	assignBit
      000245 D2 8E            [12]  370 	setb	_TR1
                                    371 ;	src/libs/uart.c:7: if (baudrate == 9600){
      000247 BC 80 0D         [24]  372 	cjne	r4,#0x80,00108$
      00024A BD 25 0A         [24]  373 	cjne	r5,#0x25,00108$
      00024D BE 00 07         [24]  374 	cjne	r6,#0x00,00108$
      000250 BF 00 04         [24]  375 	cjne	r7,#0x00,00108$
                                    376 ;	src/libs/uart.c:8: TH1 = GET_TH1_VAL_9600;
      000253 75 8D FD         [24]  377 	mov	_TH1,#0xfd
      000256 22               [24]  378 	ret
      000257                        379 00108$:
                                    380 ;	src/libs/uart.c:9: } else if (baudrate == 4800){
      000257 BC C0 0D         [24]  381 	cjne	r4,#0xc0,00105$
      00025A BD 12 0A         [24]  382 	cjne	r5,#0x12,00105$
      00025D BE 00 07         [24]  383 	cjne	r6,#0x00,00105$
      000260 BF 00 04         [24]  384 	cjne	r7,#0x00,00105$
                                    385 ;	src/libs/uart.c:10: TH1 = GET_TH1_VAL_4800;
      000263 75 8D FA         [24]  386 	mov	_TH1,#0xfa
      000266 22               [24]  387 	ret
      000267                        388 00105$:
                                    389 ;	src/libs/uart.c:11: } else if (baudrate == 2400){
      000267 BC 60 0D         [24]  390 	cjne	r4,#0x60,00102$
      00026A BD 09 0A         [24]  391 	cjne	r5,#0x09,00102$
      00026D BE 00 07         [24]  392 	cjne	r6,#0x00,00102$
      000270 BF 00 04         [24]  393 	cjne	r7,#0x00,00102$
                                    394 ;	src/libs/uart.c:12: TH1 = GET_TH1_VAL_2400;
      000273 75 8D F4         [24]  395 	mov	_TH1,#0xf4
      000276 22               [24]  396 	ret
      000277                        397 00102$:
                                    398 ;	src/libs/uart.c:14: TH1 = GET_TH1_VAL_1200;
      000277 75 8D E8         [24]  399 	mov	_TH1,#0xe8
                                    400 ;	src/libs/uart.c:16: }
      00027A 22               [24]  401 	ret
                                    402 ;------------------------------------------------------------
                                    403 ;Allocation info for local variables in function 'rx_char'
                                    404 ;------------------------------------------------------------
                                    405 ;rx                        Allocated to registers 
                                    406 ;------------------------------------------------------------
                                    407 ;	src/libs/uart.c:18: char rx_char(){
                                    408 ;	-----------------------------------------
                                    409 ;	 function rx_char
                                    410 ;	-----------------------------------------
      00027B                        411 _rx_char:
                                    412 ;	src/libs/uart.c:20: while(RI == 0);
      00027B                        413 00101$:
      00027B 30 98 FD         [24]  414 	jnb	_RI,00101$
                                    415 ;	src/libs/uart.c:21: rx = SBUF;
      00027E 85 99 82         [24]  416 	mov	dpl,_SBUF
                                    417 ;	src/libs/uart.c:22: RI = 0;
                                    418 ;	assignBit
      000281 C2 98            [12]  419 	clr	_RI
                                    420 ;	src/libs/uart.c:24: return rx;
                                    421 ;	src/libs/uart.c:25: }
      000283 22               [24]  422 	ret
                                    423 ;------------------------------------------------------------
                                    424 ;Allocation info for local variables in function 'tx_char'
                                    425 ;------------------------------------------------------------
                                    426 ;data                      Allocated to registers 
                                    427 ;------------------------------------------------------------
                                    428 ;	src/libs/uart.c:27: void tx_char(char data){
                                    429 ;	-----------------------------------------
                                    430 ;	 function tx_char
                                    431 ;	-----------------------------------------
      000284                        432 _tx_char:
      000284 85 82 99         [24]  433 	mov	_SBUF,dpl
                                    434 ;	src/libs/uart.c:29: while(TI == 0);
      000287                        435 00101$:
                                    436 ;	src/libs/uart.c:30: TI = 0;
                                    437 ;	assignBit
      000287 10 99 02         [24]  438 	jbc	_TI,00114$
      00028A 80 FB            [24]  439 	sjmp	00101$
      00028C                        440 00114$:
                                    441 ;	src/libs/uart.c:31: }
      00028C 22               [24]  442 	ret
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'tx_string'
                                    445 ;------------------------------------------------------------
                                    446 ;data                      Allocated to registers 
                                    447 ;------------------------------------------------------------
                                    448 ;	src/libs/uart.c:33: void tx_string(char *data){
                                    449 ;	-----------------------------------------
                                    450 ;	 function tx_string
                                    451 ;	-----------------------------------------
      00028D                        452 _tx_string:
      00028D AD 82            [24]  453 	mov	r5,dpl
      00028F AE 83            [24]  454 	mov	r6,dph
      000291 AF F0            [24]  455 	mov	r7,b
                                    456 ;	src/libs/uart.c:34: while(*data){
      000293                        457 00101$:
      000293 8D 82            [24]  458 	mov	dpl,r5
      000295 8E 83            [24]  459 	mov	dph,r6
      000297 8F F0            [24]  460 	mov	b,r7
      000299 12 05 AA         [24]  461 	lcall	__gptrget
      00029C FC               [12]  462 	mov	r4,a
      00029D 60 18            [24]  463 	jz	00104$
                                    464 ;	src/libs/uart.c:35: tx_char(*data++);
      00029F 8C 82            [24]  465 	mov	dpl,r4
      0002A1 0D               [12]  466 	inc	r5
      0002A2 BD 00 01         [24]  467 	cjne	r5,#0x00,00116$
      0002A5 0E               [12]  468 	inc	r6
      0002A6                        469 00116$:
      0002A6 C0 07            [24]  470 	push	ar7
      0002A8 C0 06            [24]  471 	push	ar6
      0002AA C0 05            [24]  472 	push	ar5
      0002AC 12 02 84         [24]  473 	lcall	_tx_char
      0002AF D0 05            [24]  474 	pop	ar5
      0002B1 D0 06            [24]  475 	pop	ar6
      0002B3 D0 07            [24]  476 	pop	ar7
      0002B5 80 DC            [24]  477 	sjmp	00101$
      0002B7                        478 00104$:
                                    479 ;	src/libs/uart.c:37: }
      0002B7 22               [24]  480 	ret
                                    481 ;------------------------------------------------------------
                                    482 ;Allocation info for local variables in function 'rx_string'
                                    483 ;------------------------------------------------------------
                                    484 ;data                      Allocated to registers r5 r6 r7 
                                    485 ;ch                        Allocated to registers r3 
                                    486 ;len                       Allocated to registers r4 
                                    487 ;------------------------------------------------------------
                                    488 ;	src/libs/uart.c:39: uint8_t rx_string(char *data){
                                    489 ;	-----------------------------------------
                                    490 ;	 function rx_string
                                    491 ;	-----------------------------------------
      0002B8                        492 _rx_string:
      0002B8 AD 82            [24]  493 	mov	r5,dpl
      0002BA AE 83            [24]  494 	mov	r6,dph
      0002BC AF F0            [24]  495 	mov	r7,b
                                    496 ;	src/libs/uart.c:42: uint8_t len = 0;
      0002BE 7C 00            [12]  497 	mov	r4,#0x00
                                    498 ;	src/libs/uart.c:43: while(1)
      0002C0                        499 00111$:
                                    500 ;	src/libs/uart.c:45: ch=rx_char();    //Receive a char
      0002C0 C0 07            [24]  501 	push	ar7
      0002C2 C0 06            [24]  502 	push	ar6
      0002C4 C0 05            [24]  503 	push	ar5
      0002C6 C0 04            [24]  504 	push	ar4
      0002C8 12 02 7B         [24]  505 	lcall	_rx_char
                                    506 ;	src/libs/uart.c:46: tx_char(ch);     //Echo back the received char
      0002CB AB 82            [24]  507 	mov  r3,dpl
      0002CD C0 03            [24]  508 	push	ar3
      0002CF 12 02 84         [24]  509 	lcall	_tx_char
      0002D2 D0 03            [24]  510 	pop	ar3
      0002D4 D0 04            [24]  511 	pop	ar4
      0002D6 D0 05            [24]  512 	pop	ar5
      0002D8 D0 06            [24]  513 	pop	ar6
      0002DA D0 07            [24]  514 	pop	ar7
                                    515 ;	src/libs/uart.c:47: if((ch == '\r') || (ch == '\n') || (ch=='\0')) //read till enter key is pressed
      0002DC BB 0D 02         [24]  516 	cjne	r3,#0x0d,00135$
      0002DF 80 08            [24]  517 	sjmp	00105$
      0002E1                        518 00135$:
      0002E1 BB 0A 02         [24]  519 	cjne	r3,#0x0a,00136$
      0002E4 80 03            [24]  520 	sjmp	00105$
      0002E6                        521 00136$:
      0002E6 EB               [12]  522 	mov	a,r3
      0002E7 70 14            [24]  523 	jnz	00106$
      0002E9                        524 00105$:
                                    525 ;	src/libs/uart.c:49: data[len]=0;           //and break the loop
      0002E9 EC               [12]  526 	mov	a,r4
      0002EA 2D               [12]  527 	add	a,r5
      0002EB F8               [12]  528 	mov	r0,a
      0002EC E4               [12]  529 	clr	a
      0002ED 3E               [12]  530 	addc	a,r6
      0002EE F9               [12]  531 	mov	r1,a
      0002EF 8F 02            [24]  532 	mov	ar2,r7
      0002F1 88 82            [24]  533 	mov	dpl,r0
      0002F3 89 83            [24]  534 	mov	dph,r1
      0002F5 8A F0            [24]  535 	mov	b,r2
      0002F7 E4               [12]  536 	clr	a
      0002F8 12 05 0C         [24]  537 	lcall	__gptrput
                                    538 ;	src/libs/uart.c:50: break;                  
      0002FB 80 1E            [24]  539 	sjmp	00112$
      0002FD                        540 00106$:
                                    541 ;	src/libs/uart.c:52: else if((ch=='\b') && (len!=0))
      0002FD BB 08 06         [24]  542 	cjne	r3,#0x08,00102$
      000300 EC               [12]  543 	mov	a,r4
      000301 60 03            [24]  544 	jz	00102$
                                    545 ;	src/libs/uart.c:54: len--;    //If backspace is pressed then decrement the index to remove the old char
      000303 1C               [12]  546 	dec	r4
      000304 80 BA            [24]  547 	sjmp	00111$
      000306                        548 00102$:
                                    549 ;	src/libs/uart.c:58: data[len]=ch; //copy the char into string and increment the index
      000306 EC               [12]  550 	mov	a,r4
      000307 2D               [12]  551 	add	a,r5
      000308 F8               [12]  552 	mov	r0,a
      000309 E4               [12]  553 	clr	a
      00030A 3E               [12]  554 	addc	a,r6
      00030B F9               [12]  555 	mov	r1,a
      00030C 8F 02            [24]  556 	mov	ar2,r7
      00030E 88 82            [24]  557 	mov	dpl,r0
      000310 89 83            [24]  558 	mov	dph,r1
      000312 8A F0            [24]  559 	mov	b,r2
      000314 EB               [12]  560 	mov	a,r3
      000315 12 05 0C         [24]  561 	lcall	__gptrput
                                    562 ;	src/libs/uart.c:59: len++;
      000318 0C               [12]  563 	inc	r4
      000319 80 A5            [24]  564 	sjmp	00111$
      00031B                        565 00112$:
                                    566 ;	src/libs/uart.c:63: return len;
      00031B 8C 82            [24]  567 	mov	dpl,r4
                                    568 ;	src/libs/uart.c:64: }
      00031D 22               [24]  569 	ret
                                    570 	.area CSEG    (CODE)
                                    571 	.area CONST   (CODE)
                                    572 	.area XINIT   (CODE)
                                    573 	.area CABS    (ABS,CODE)
