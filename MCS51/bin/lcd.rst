                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _reverse_PARM_3
                                     12 	.globl _reverse_PARM_2
                                     13 	.globl _swap_PARM_2
                                     14 	.globl _DELAY_us
                                     15 	.globl _abs
                                     16 	.globl _EN
                                     17 	.globl _RW
                                     18 	.globl _RS
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _FL
                                     26 	.globl _P
                                     27 	.globl _TF2
                                     28 	.globl _EXF2
                                     29 	.globl _RCLK
                                     30 	.globl _TCLK
                                     31 	.globl _EXEN2
                                     32 	.globl _TR2
                                     33 	.globl _C_T2
                                     34 	.globl _CP_RL2
                                     35 	.globl _T2CON_7
                                     36 	.globl _T2CON_6
                                     37 	.globl _T2CON_5
                                     38 	.globl _T2CON_4
                                     39 	.globl _T2CON_3
                                     40 	.globl _T2CON_2
                                     41 	.globl _T2CON_1
                                     42 	.globl _T2CON_0
                                     43 	.globl _PT2
                                     44 	.globl _PS
                                     45 	.globl _PT1
                                     46 	.globl _PX1
                                     47 	.globl _PT0
                                     48 	.globl _PX0
                                     49 	.globl _RD
                                     50 	.globl _WR
                                     51 	.globl _T1
                                     52 	.globl _T0
                                     53 	.globl _INT1
                                     54 	.globl _INT0
                                     55 	.globl _TXD
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _EA
                                     66 	.globl _ET2
                                     67 	.globl _ES
                                     68 	.globl _ET1
                                     69 	.globl _EX1
                                     70 	.globl _ET0
                                     71 	.globl _EX0
                                     72 	.globl _P2_7
                                     73 	.globl _P2_6
                                     74 	.globl _P2_5
                                     75 	.globl _P2_4
                                     76 	.globl _P2_3
                                     77 	.globl _P2_2
                                     78 	.globl _P2_1
                                     79 	.globl _P2_0
                                     80 	.globl _SM0
                                     81 	.globl _SM1
                                     82 	.globl _SM2
                                     83 	.globl _REN
                                     84 	.globl _TB8
                                     85 	.globl _RB8
                                     86 	.globl _TI
                                     87 	.globl _RI
                                     88 	.globl _T2EX
                                     89 	.globl _T2
                                     90 	.globl _P1_7
                                     91 	.globl _P1_6
                                     92 	.globl _P1_5
                                     93 	.globl _P1_4
                                     94 	.globl _P1_3
                                     95 	.globl _P1_2
                                     96 	.globl _P1_1
                                     97 	.globl _P1_0
                                     98 	.globl _TF1
                                     99 	.globl _TR1
                                    100 	.globl _TF0
                                    101 	.globl _TR0
                                    102 	.globl _IE1
                                    103 	.globl _IT1
                                    104 	.globl _IE0
                                    105 	.globl _IT0
                                    106 	.globl _P0_7
                                    107 	.globl _P0_6
                                    108 	.globl _P0_5
                                    109 	.globl _P0_4
                                    110 	.globl _P0_3
                                    111 	.globl _P0_2
                                    112 	.globl _P0_1
                                    113 	.globl _P0_0
                                    114 	.globl _B
                                    115 	.globl _A
                                    116 	.globl _ACC
                                    117 	.globl _PSW
                                    118 	.globl _TH2
                                    119 	.globl _TL2
                                    120 	.globl _RCAP2H
                                    121 	.globl _RCAP2L
                                    122 	.globl _T2MOD
                                    123 	.globl _T2CON
                                    124 	.globl _IP
                                    125 	.globl _P3
                                    126 	.globl _IE
                                    127 	.globl _P2
                                    128 	.globl _SBUF
                                    129 	.globl _SCON
                                    130 	.globl _P1
                                    131 	.globl _TH1
                                    132 	.globl _TH0
                                    133 	.globl _TL1
                                    134 	.globl _TL0
                                    135 	.globl _TMOD
                                    136 	.globl _TCON
                                    137 	.globl _PCON
                                    138 	.globl _DPH
                                    139 	.globl _DPL
                                    140 	.globl _SP
                                    141 	.globl _P0
                                    142 	.globl _itoa_PARM_3
                                    143 	.globl _itoa_PARM_2
                                    144 	.globl _LCDDisplayNumber_PARM_3
                                    145 	.globl _LCDDisplayNumber_PARM_2
                                    146 	.globl _LCDPrintString_PARM_2
                                    147 	.globl _LCDInit
                                    148 	.globl _LCDCmdWrite
                                    149 	.globl _LCDDataWrite
                                    150 	.globl _LCDPrintString
                                    151 	.globl _LCDDisplayNumber
                                    152 	.globl _swap
                                    153 	.globl _reverse
                                    154 	.globl _itoa
                                    155 ;--------------------------------------------------------
                                    156 ; special function registers
                                    157 ;--------------------------------------------------------
                                    158 	.area RSEG    (ABS,DATA)
      000000                        159 	.org 0x0000
                           000080   160 _P0	=	0x0080
                           000081   161 _SP	=	0x0081
                           000082   162 _DPL	=	0x0082
                           000083   163 _DPH	=	0x0083
                           000087   164 _PCON	=	0x0087
                           000088   165 _TCON	=	0x0088
                           000089   166 _TMOD	=	0x0089
                           00008A   167 _TL0	=	0x008a
                           00008B   168 _TL1	=	0x008b
                           00008C   169 _TH0	=	0x008c
                           00008D   170 _TH1	=	0x008d
                           000090   171 _P1	=	0x0090
                           000098   172 _SCON	=	0x0098
                           000099   173 _SBUF	=	0x0099
                           0000A0   174 _P2	=	0x00a0
                           0000A8   175 _IE	=	0x00a8
                           0000B0   176 _P3	=	0x00b0
                           0000B8   177 _IP	=	0x00b8
                           0000C8   178 _T2CON	=	0x00c8
                           0000C9   179 _T2MOD	=	0x00c9
                           0000CA   180 _RCAP2L	=	0x00ca
                           0000CB   181 _RCAP2H	=	0x00cb
                           0000CC   182 _TL2	=	0x00cc
                           0000CD   183 _TH2	=	0x00cd
                           0000D0   184 _PSW	=	0x00d0
                           0000E0   185 _ACC	=	0x00e0
                           0000E0   186 _A	=	0x00e0
                           0000F0   187 _B	=	0x00f0
                                    188 ;--------------------------------------------------------
                                    189 ; special function bits
                                    190 ;--------------------------------------------------------
                                    191 	.area RSEG    (ABS,DATA)
      000000                        192 	.org 0x0000
                           000080   193 _P0_0	=	0x0080
                           000081   194 _P0_1	=	0x0081
                           000082   195 _P0_2	=	0x0082
                           000083   196 _P0_3	=	0x0083
                           000084   197 _P0_4	=	0x0084
                           000085   198 _P0_5	=	0x0085
                           000086   199 _P0_6	=	0x0086
                           000087   200 _P0_7	=	0x0087
                           000088   201 _IT0	=	0x0088
                           000089   202 _IE0	=	0x0089
                           00008A   203 _IT1	=	0x008a
                           00008B   204 _IE1	=	0x008b
                           00008C   205 _TR0	=	0x008c
                           00008D   206 _TF0	=	0x008d
                           00008E   207 _TR1	=	0x008e
                           00008F   208 _TF1	=	0x008f
                           000090   209 _P1_0	=	0x0090
                           000091   210 _P1_1	=	0x0091
                           000092   211 _P1_2	=	0x0092
                           000093   212 _P1_3	=	0x0093
                           000094   213 _P1_4	=	0x0094
                           000095   214 _P1_5	=	0x0095
                           000096   215 _P1_6	=	0x0096
                           000097   216 _P1_7	=	0x0097
                           000090   217 _T2	=	0x0090
                           000091   218 _T2EX	=	0x0091
                           000098   219 _RI	=	0x0098
                           000099   220 _TI	=	0x0099
                           00009A   221 _RB8	=	0x009a
                           00009B   222 _TB8	=	0x009b
                           00009C   223 _REN	=	0x009c
                           00009D   224 _SM2	=	0x009d
                           00009E   225 _SM1	=	0x009e
                           00009F   226 _SM0	=	0x009f
                           0000A0   227 _P2_0	=	0x00a0
                           0000A1   228 _P2_1	=	0x00a1
                           0000A2   229 _P2_2	=	0x00a2
                           0000A3   230 _P2_3	=	0x00a3
                           0000A4   231 _P2_4	=	0x00a4
                           0000A5   232 _P2_5	=	0x00a5
                           0000A6   233 _P2_6	=	0x00a6
                           0000A7   234 _P2_7	=	0x00a7
                           0000A8   235 _EX0	=	0x00a8
                           0000A9   236 _ET0	=	0x00a9
                           0000AA   237 _EX1	=	0x00aa
                           0000AB   238 _ET1	=	0x00ab
                           0000AC   239 _ES	=	0x00ac
                           0000AD   240 _ET2	=	0x00ad
                           0000AF   241 _EA	=	0x00af
                           0000B0   242 _P3_0	=	0x00b0
                           0000B1   243 _P3_1	=	0x00b1
                           0000B2   244 _P3_2	=	0x00b2
                           0000B3   245 _P3_3	=	0x00b3
                           0000B4   246 _P3_4	=	0x00b4
                           0000B5   247 _P3_5	=	0x00b5
                           0000B6   248 _P3_6	=	0x00b6
                           0000B7   249 _P3_7	=	0x00b7
                           0000B0   250 _RXD	=	0x00b0
                           0000B1   251 _TXD	=	0x00b1
                           0000B2   252 _INT0	=	0x00b2
                           0000B3   253 _INT1	=	0x00b3
                           0000B4   254 _T0	=	0x00b4
                           0000B5   255 _T1	=	0x00b5
                           0000B6   256 _WR	=	0x00b6
                           0000B7   257 _RD	=	0x00b7
                           0000B8   258 _PX0	=	0x00b8
                           0000B9   259 _PT0	=	0x00b9
                           0000BA   260 _PX1	=	0x00ba
                           0000BB   261 _PT1	=	0x00bb
                           0000BC   262 _PS	=	0x00bc
                           0000BD   263 _PT2	=	0x00bd
                           0000C8   264 _T2CON_0	=	0x00c8
                           0000C9   265 _T2CON_1	=	0x00c9
                           0000CA   266 _T2CON_2	=	0x00ca
                           0000CB   267 _T2CON_3	=	0x00cb
                           0000CC   268 _T2CON_4	=	0x00cc
                           0000CD   269 _T2CON_5	=	0x00cd
                           0000CE   270 _T2CON_6	=	0x00ce
                           0000CF   271 _T2CON_7	=	0x00cf
                           0000C8   272 _CP_RL2	=	0x00c8
                           0000C9   273 _C_T2	=	0x00c9
                           0000CA   274 _TR2	=	0x00ca
                           0000CB   275 _EXEN2	=	0x00cb
                           0000CC   276 _TCLK	=	0x00cc
                           0000CD   277 _RCLK	=	0x00cd
                           0000CE   278 _EXF2	=	0x00ce
                           0000CF   279 _TF2	=	0x00cf
                           0000D0   280 _P	=	0x00d0
                           0000D1   281 _FL	=	0x00d1
                           0000D2   282 _OV	=	0x00d2
                           0000D3   283 _RS0	=	0x00d3
                           0000D4   284 _RS1	=	0x00d4
                           0000D5   285 _F0	=	0x00d5
                           0000D6   286 _AC	=	0x00d6
                           0000D7   287 _CY	=	0x00d7
                           0000A0   288 _RS	=	0x00a0
                           0000A1   289 _RW	=	0x00a1
                           0000A2   290 _EN	=	0x00a2
                                    291 ;--------------------------------------------------------
                                    292 ; overlayable register banks
                                    293 ;--------------------------------------------------------
                                    294 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        295 	.ds 8
                                    296 ;--------------------------------------------------------
                                    297 ; internal ram data
                                    298 ;--------------------------------------------------------
                                    299 	.area DSEG    (DATA)
      00000A                        300 _LCDPrintString_PARM_2:
      00000A                        301 	.ds 3
      00000D                        302 _LCDDisplayNumber_PARM_2:
      00000D                        303 	.ds 2
      00000F                        304 _LCDDisplayNumber_PARM_3:
      00000F                        305 	.ds 1
      000010                        306 _LCDDisplayNumber_buffer_65536_83:
      000010                        307 	.ds 33
      000031                        308 _itoa_PARM_2:
      000031                        309 	.ds 3
      000034                        310 _itoa_PARM_3:
      000034                        311 	.ds 2
      000036                        312 _itoa_value_65536_91:
      000036                        313 	.ds 2
      000038                        314 _itoa_r_131073_94:
      000038                        315 	.ds 2
                                    316 ;--------------------------------------------------------
                                    317 ; overlayable items in internal ram 
                                    318 ;--------------------------------------------------------
                                    319 	.area	OSEG    (OVR,DATA)
      00004D                        320 _swap_PARM_2:
      00004D                        321 	.ds 3
                                    322 	.area	OSEG    (OVR,DATA)
      00004D                        323 _reverse_PARM_2:
      00004D                        324 	.ds 2
      00004F                        325 _reverse_PARM_3:
      00004F                        326 	.ds 2
      000051                        327 _reverse___1310720001_131072_88:
      000051                        328 	.ds 3
      000054                        329 _reverse___1310720002_131072_88:
      000054                        330 	.ds 3
      000057                        331 _reverse_t_262144_90:
      000057                        332 	.ds 1
                                    333 ;--------------------------------------------------------
                                    334 ; indirectly addressable internal ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area ISEG    (DATA)
                                    337 ;--------------------------------------------------------
                                    338 ; absolute internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area IABS    (ABS,DATA)
                                    341 	.area IABS    (ABS,DATA)
                                    342 ;--------------------------------------------------------
                                    343 ; bit data
                                    344 ;--------------------------------------------------------
                                    345 	.area BSEG    (BIT)
                                    346 ;--------------------------------------------------------
                                    347 ; paged external ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area PSEG    (PAG,XDATA)
                                    350 ;--------------------------------------------------------
                                    351 ; external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area XSEG    (XDATA)
                                    354 ;--------------------------------------------------------
                                    355 ; absolute external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area XABS    (ABS,XDATA)
                                    358 ;--------------------------------------------------------
                                    359 ; external initialized ram data
                                    360 ;--------------------------------------------------------
                                    361 	.area XISEG   (XDATA)
                                    362 	.area HOME    (CODE)
                                    363 	.area GSINIT0 (CODE)
                                    364 	.area GSINIT1 (CODE)
                                    365 	.area GSINIT2 (CODE)
                                    366 	.area GSINIT3 (CODE)
                                    367 	.area GSINIT4 (CODE)
                                    368 	.area GSINIT5 (CODE)
                                    369 	.area GSINIT  (CODE)
                                    370 	.area GSFINAL (CODE)
                                    371 	.area CSEG    (CODE)
                                    372 ;--------------------------------------------------------
                                    373 ; global & static initialisations
                                    374 ;--------------------------------------------------------
                                    375 	.area HOME    (CODE)
                                    376 	.area GSINIT  (CODE)
                                    377 	.area GSFINAL (CODE)
                                    378 	.area GSINIT  (CODE)
                                    379 ;--------------------------------------------------------
                                    380 ; Home
                                    381 ;--------------------------------------------------------
                                    382 	.area HOME    (CODE)
                                    383 	.area HOME    (CODE)
                                    384 ;--------------------------------------------------------
                                    385 ; code
                                    386 ;--------------------------------------------------------
                                    387 	.area CSEG    (CODE)
                                    388 ;------------------------------------------------------------
                                    389 ;Allocation info for local variables in function 'LCDInit'
                                    390 ;------------------------------------------------------------
                                    391 ;	src/libs/lcd.c:4: void LCDInit(){
                                    392 ;	-----------------------------------------
                                    393 ;	 function LCDInit
                                    394 ;	-----------------------------------------
      00010D                        395 _LCDInit:
                           000007   396 	ar7 = 0x07
                           000006   397 	ar6 = 0x06
                           000005   398 	ar5 = 0x05
                           000004   399 	ar4 = 0x04
                           000003   400 	ar3 = 0x03
                           000002   401 	ar2 = 0x02
                           000001   402 	ar1 = 0x01
                           000000   403 	ar0 = 0x00
                                    404 ;	src/libs/lcd.c:6: LCDCmdWrite(RETURN_HOME);
      00010D 75 82 02         [24]  405 	mov	dpl,#0x02
      000110 12 01 25         [24]  406 	lcall	_LCDCmdWrite
                                    407 ;	src/libs/lcd.c:7: LCDCmdWrite(CMD_LCD_FOUR_BIT_MODE);             // Set data bus in 4-bit mode
      000113 75 82 28         [24]  408 	mov	dpl,#0x28
      000116 12 01 25         [24]  409 	lcall	_LCDCmdWrite
                                    410 ;	src/libs/lcd.c:8: LCDCmdWrite(DISPLAY_ON_CURSOR_BLINK_1);
      000119 75 82 0E         [24]  411 	mov	dpl,#0x0e
      00011C 12 01 25         [24]  412 	lcall	_LCDCmdWrite
                                    413 ;	src/libs/lcd.c:9: LCDCmdWrite(CLEAR_SCREEN);
      00011F 75 82 01         [24]  414 	mov	dpl,#0x01
                                    415 ;	src/libs/lcd.c:11: }
      000122 02 01 25         [24]  416 	ljmp	_LCDCmdWrite
                                    417 ;------------------------------------------------------------
                                    418 ;Allocation info for local variables in function 'LCDCmdWrite'
                                    419 ;------------------------------------------------------------
                                    420 ;cmd                       Allocated to registers r7 
                                    421 ;------------------------------------------------------------
                                    422 ;	src/libs/lcd.c:13: int LCDCmdWrite(char cmd){
                                    423 ;	-----------------------------------------
                                    424 ;	 function LCDCmdWrite
                                    425 ;	-----------------------------------------
      000125                        426 _LCDCmdWrite:
      000125 AF 82            [24]  427 	mov	r7,dpl
                                    428 ;	src/libs/lcd.c:15: LcdDatabus_P2 = (cmd & 0xF0);
      000127 74 F0            [12]  429 	mov	a,#0xf0
      000129 5F               [12]  430 	anl	a,r7
      00012A F5 A0            [12]  431 	mov	_P2,a
                                    432 ;	src/libs/lcd.c:16: RS = LOW;
                                    433 ;	assignBit
      00012C C2 A0            [12]  434 	clr	_RS
                                    435 ;	src/libs/lcd.c:17: RW = LOW;
                                    436 ;	assignBit
      00012E C2 A1            [12]  437 	clr	_RW
                                    438 ;	src/libs/lcd.c:18: EN = HIGH;
                                    439 ;	assignBit
      000130 D2 A2            [12]  440 	setb	_EN
                                    441 ;	src/libs/lcd.c:19: DELAY_us(1000);
      000132 90 03 E8         [24]  442 	mov	dptr,#0x03e8
      000135 C0 07            [24]  443 	push	ar7
      000137 12 00 DF         [24]  444 	lcall	_DELAY_us
                                    445 ;	src/libs/lcd.c:20: EN = LOW;
                                    446 ;	assignBit
      00013A C2 A2            [12]  447 	clr	_EN
                                    448 ;	src/libs/lcd.c:22: DELAY_us(10000);
      00013C 90 27 10         [24]  449 	mov	dptr,#0x2710
      00013F 12 00 DF         [24]  450 	lcall	_DELAY_us
      000142 D0 07            [24]  451 	pop	ar7
                                    452 ;	src/libs/lcd.c:24: LcdDatabus_P2 = ((cmd<<4) & 0xF0);
      000144 EF               [12]  453 	mov	a,r7
      000145 C4               [12]  454 	swap	a
      000146 54 F0            [12]  455 	anl	a,#0xf0
      000148 FF               [12]  456 	mov	r7,a
      000149 74 F0            [12]  457 	mov	a,#0xf0
      00014B 5F               [12]  458 	anl	a,r7
      00014C F5 A0            [12]  459 	mov	_P2,a
                                    460 ;	src/libs/lcd.c:25: RS = LOW;
                                    461 ;	assignBit
      00014E C2 A0            [12]  462 	clr	_RS
                                    463 ;	src/libs/lcd.c:26: RW = LOW;
                                    464 ;	assignBit
      000150 C2 A1            [12]  465 	clr	_RW
                                    466 ;	src/libs/lcd.c:27: EN = HIGH;
                                    467 ;	assignBit
      000152 D2 A2            [12]  468 	setb	_EN
                                    469 ;	src/libs/lcd.c:28: DELAY_us(1000);
      000154 90 03 E8         [24]  470 	mov	dptr,#0x03e8
      000157 12 00 DF         [24]  471 	lcall	_DELAY_us
                                    472 ;	src/libs/lcd.c:29: EN = LOW;
                                    473 ;	assignBit
      00015A C2 A2            [12]  474 	clr	_EN
                                    475 ;	src/libs/lcd.c:31: DELAY_us(10000);
      00015C 90 27 10         [24]  476 	mov	dptr,#0x2710
      00015F 12 00 DF         [24]  477 	lcall	_DELAY_us
                                    478 ;	src/libs/lcd.c:32: return 0;
      000162 90 00 00         [24]  479 	mov	dptr,#0x0000
                                    480 ;	src/libs/lcd.c:33: }
      000165 22               [24]  481 	ret
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'LCDDataWrite'
                                    484 ;------------------------------------------------------------
                                    485 ;data                      Allocated to registers r7 
                                    486 ;------------------------------------------------------------
                                    487 ;	src/libs/lcd.c:35: int LCDDataWrite(char data){
                                    488 ;	-----------------------------------------
                                    489 ;	 function LCDDataWrite
                                    490 ;	-----------------------------------------
      000166                        491 _LCDDataWrite:
      000166 AF 82            [24]  492 	mov	r7,dpl
                                    493 ;	src/libs/lcd.c:37: LcdDatabus_P2 = (data & 0xF0);
      000168 74 F0            [12]  494 	mov	a,#0xf0
      00016A 5F               [12]  495 	anl	a,r7
      00016B F5 A0            [12]  496 	mov	_P2,a
                                    497 ;	src/libs/lcd.c:38: RS = HIGH;
                                    498 ;	assignBit
      00016D D2 A0            [12]  499 	setb	_RS
                                    500 ;	src/libs/lcd.c:39: RW = LOW;
                                    501 ;	assignBit
      00016F C2 A1            [12]  502 	clr	_RW
                                    503 ;	src/libs/lcd.c:40: EN = HIGH;
                                    504 ;	assignBit
      000171 D2 A2            [12]  505 	setb	_EN
                                    506 ;	src/libs/lcd.c:41: DELAY_us(1000);
      000173 90 03 E8         [24]  507 	mov	dptr,#0x03e8
      000176 C0 07            [24]  508 	push	ar7
      000178 12 00 DF         [24]  509 	lcall	_DELAY_us
                                    510 ;	src/libs/lcd.c:42: EN = LOW;
                                    511 ;	assignBit
      00017B C2 A2            [12]  512 	clr	_EN
                                    513 ;	src/libs/lcd.c:44: DELAY_us(10000);
      00017D 90 27 10         [24]  514 	mov	dptr,#0x2710
      000180 12 00 DF         [24]  515 	lcall	_DELAY_us
      000183 D0 07            [24]  516 	pop	ar7
                                    517 ;	src/libs/lcd.c:46: LcdDatabus_P2 = ((data<<4) & 0xF0);
      000185 EF               [12]  518 	mov	a,r7
      000186 C4               [12]  519 	swap	a
      000187 54 F0            [12]  520 	anl	a,#0xf0
      000189 FF               [12]  521 	mov	r7,a
      00018A 74 F0            [12]  522 	mov	a,#0xf0
      00018C 5F               [12]  523 	anl	a,r7
      00018D F5 A0            [12]  524 	mov	_P2,a
                                    525 ;	src/libs/lcd.c:47: RS = HIGH;
                                    526 ;	assignBit
      00018F D2 A0            [12]  527 	setb	_RS
                                    528 ;	src/libs/lcd.c:48: RW = LOW;
                                    529 ;	assignBit
      000191 C2 A1            [12]  530 	clr	_RW
                                    531 ;	src/libs/lcd.c:49: EN = HIGH;
                                    532 ;	assignBit
      000193 D2 A2            [12]  533 	setb	_EN
                                    534 ;	src/libs/lcd.c:50: DELAY_us(1000);
      000195 90 03 E8         [24]  535 	mov	dptr,#0x03e8
      000198 12 00 DF         [24]  536 	lcall	_DELAY_us
                                    537 ;	src/libs/lcd.c:51: EN = LOW;
                                    538 ;	assignBit
      00019B C2 A2            [12]  539 	clr	_EN
                                    540 ;	src/libs/lcd.c:53: DELAY_us(10000);
      00019D 90 27 10         [24]  541 	mov	dptr,#0x2710
      0001A0 12 00 DF         [24]  542 	lcall	_DELAY_us
                                    543 ;	src/libs/lcd.c:54: return 0;
      0001A3 90 00 00         [24]  544 	mov	dptr,#0x0000
                                    545 ;	src/libs/lcd.c:55: }
      0001A6 22               [24]  546 	ret
                                    547 ;------------------------------------------------------------
                                    548 ;Allocation info for local variables in function 'LCDPrintString'
                                    549 ;------------------------------------------------------------
                                    550 ;string                    Allocated with name '_LCDPrintString_PARM_2'
                                    551 ;line                      Allocated to registers r7 
                                    552 ;------------------------------------------------------------
                                    553 ;	src/libs/lcd.c:57: void LCDPrintString(uint8_t line, char* string){
                                    554 ;	-----------------------------------------
                                    555 ;	 function LCDPrintString
                                    556 ;	-----------------------------------------
      0001A7                        557 _LCDPrintString:
                                    558 ;	src/libs/lcd.c:58: switch (line)
      0001A7 E5 82            [12]  559 	mov	a,dpl
      0001A9 FF               [12]  560 	mov	r7,a
      0001AA 24 FC            [12]  561 	add	a,#0xff - 0x03
      0001AC 40 2C            [24]  562 	jc	00114$
      0001AE EF               [12]  563 	mov	a,r7
      0001AF 2F               [12]  564 	add	a,r7
                                    565 ;	src/libs/lcd.c:60: case FIRST_LINE:
      0001B0 90 01 B4         [24]  566 	mov	dptr,#00126$
      0001B3 73               [24]  567 	jmp	@a+dptr
      0001B4                        568 00126$:
      0001B4 80 06            [24]  569 	sjmp	00101$
      0001B6 80 0C            [24]  570 	sjmp	00102$
      0001B8 80 12            [24]  571 	sjmp	00103$
      0001BA 80 18            [24]  572 	sjmp	00104$
      0001BC                        573 00101$:
                                    574 ;	src/libs/lcd.c:61: LCDCmdWrite(CURSOR_TO_FIRST_LINE);
      0001BC 75 82 80         [24]  575 	mov	dpl,#0x80
      0001BF 12 01 25         [24]  576 	lcall	_LCDCmdWrite
                                    577 ;	src/libs/lcd.c:62: break;
                                    578 ;	src/libs/lcd.c:63: case SECOND_LINE:
      0001C2 80 16            [24]  579 	sjmp	00114$
      0001C4                        580 00102$:
                                    581 ;	src/libs/lcd.c:64: LCDCmdWrite(CURSOR_TO_SECOND_LINE);
      0001C4 75 82 C0         [24]  582 	mov	dpl,#0xc0
      0001C7 12 01 25         [24]  583 	lcall	_LCDCmdWrite
                                    584 ;	src/libs/lcd.c:65: break;
                                    585 ;	src/libs/lcd.c:66: case THIRD_LINE:
      0001CA 80 0E            [24]  586 	sjmp	00114$
      0001CC                        587 00103$:
                                    588 ;	src/libs/lcd.c:67: LCDCmdWrite(CURSOR_TO_THIRD_LINE);
      0001CC 75 82 90         [24]  589 	mov	dpl,#0x90
      0001CF 12 01 25         [24]  590 	lcall	_LCDCmdWrite
                                    591 ;	src/libs/lcd.c:68: break;
                                    592 ;	src/libs/lcd.c:69: case FORTH_LINE:
      0001D2 80 06            [24]  593 	sjmp	00114$
      0001D4                        594 00104$:
                                    595 ;	src/libs/lcd.c:70: LCDCmdWrite(CURSOR_TO_FORTH_LINE);
      0001D4 75 82 D0         [24]  596 	mov	dpl,#0xd0
      0001D7 12 01 25         [24]  597 	lcall	_LCDCmdWrite
                                    598 ;	src/libs/lcd.c:76: while(*string){
      0001DA                        599 00114$:
      0001DA AD 0A            [24]  600 	mov	r5,_LCDPrintString_PARM_2
      0001DC AE 0B            [24]  601 	mov	r6,(_LCDPrintString_PARM_2 + 1)
      0001DE AF 0C            [24]  602 	mov	r7,(_LCDPrintString_PARM_2 + 2)
      0001E0                        603 00107$:
      0001E0 8D 82            [24]  604 	mov	dpl,r5
      0001E2 8E 83            [24]  605 	mov	dph,r6
      0001E4 8F F0            [24]  606 	mov	b,r7
      0001E6 12 0B 60         [24]  607 	lcall	__gptrget
      0001E9 FC               [12]  608 	mov	r4,a
      0001EA 60 18            [24]  609 	jz	00110$
                                    610 ;	src/libs/lcd.c:77: LCDDataWrite(*string++);
      0001EC 8C 82            [24]  611 	mov	dpl,r4
      0001EE 0D               [12]  612 	inc	r5
      0001EF BD 00 01         [24]  613 	cjne	r5,#0x00,00128$
      0001F2 0E               [12]  614 	inc	r6
      0001F3                        615 00128$:
      0001F3 C0 07            [24]  616 	push	ar7
      0001F5 C0 06            [24]  617 	push	ar6
      0001F7 C0 05            [24]  618 	push	ar5
      0001F9 12 01 66         [24]  619 	lcall	_LCDDataWrite
      0001FC D0 05            [24]  620 	pop	ar5
      0001FE D0 06            [24]  621 	pop	ar6
      000200 D0 07            [24]  622 	pop	ar7
      000202 80 DC            [24]  623 	sjmp	00107$
      000204                        624 00110$:
                                    625 ;	src/libs/lcd.c:79: }
      000204 22               [24]  626 	ret
                                    627 ;------------------------------------------------------------
                                    628 ;Allocation info for local variables in function 'LCDDisplayNumber'
                                    629 ;------------------------------------------------------------
                                    630 ;number                    Allocated with name '_LCDDisplayNumber_PARM_2'
                                    631 ;radix                     Allocated with name '_LCDDisplayNumber_PARM_3'
                                    632 ;line                      Allocated to registers r7 
                                    633 ;buffer                    Allocated with name '_LCDDisplayNumber_buffer_65536_83'
                                    634 ;------------------------------------------------------------
                                    635 ;	src/libs/lcd.c:81: void LCDDisplayNumber(uint8_t line,int number,unsigned char radix)
                                    636 ;	-----------------------------------------
                                    637 ;	 function LCDDisplayNumber
                                    638 ;	-----------------------------------------
      000205                        639 _LCDDisplayNumber:
      000205 AF 82            [24]  640 	mov	r7,dpl
                                    641 ;	src/libs/lcd.c:84: itoa(number,buffer,radix);
      000207 75 31 10         [24]  642 	mov	_itoa_PARM_2,#_LCDDisplayNumber_buffer_65536_83
      00020A 75 32 00         [24]  643 	mov	(_itoa_PARM_2 + 1),#0x00
      00020D 75 33 40         [24]  644 	mov	(_itoa_PARM_2 + 2),#0x40
      000210 85 0F 34         [24]  645 	mov	_itoa_PARM_3,_LCDDisplayNumber_PARM_3
      000213 75 35 00         [24]  646 	mov	(_itoa_PARM_3 + 1),#0x00
      000216 85 0D 82         [24]  647 	mov	dpl,_LCDDisplayNumber_PARM_2
      000219 85 0E 83         [24]  648 	mov	dph,(_LCDDisplayNumber_PARM_2 + 1)
      00021C C0 07            [24]  649 	push	ar7
      00021E 12 02 D6         [24]  650 	lcall	_itoa
      000221 D0 07            [24]  651 	pop	ar7
                                    652 ;	src/libs/lcd.c:85: LCDPrintString(line, buffer);
      000223 75 0A 10         [24]  653 	mov	_LCDPrintString_PARM_2,#_LCDDisplayNumber_buffer_65536_83
      000226 75 0B 00         [24]  654 	mov	(_LCDPrintString_PARM_2 + 1),#0x00
      000229 75 0C 40         [24]  655 	mov	(_LCDPrintString_PARM_2 + 2),#0x40
      00022C 8F 82            [24]  656 	mov	dpl,r7
                                    657 ;	src/libs/lcd.c:86: }
      00022E 02 01 A7         [24]  658 	ljmp	_LCDPrintString
                                    659 ;------------------------------------------------------------
                                    660 ;Allocation info for local variables in function 'swap'
                                    661 ;------------------------------------------------------------
                                    662 ;y                         Allocated with name '_swap_PARM_2'
                                    663 ;x                         Allocated to registers r5 r6 r7 
                                    664 ;t                         Allocated to registers r4 
                                    665 ;------------------------------------------------------------
                                    666 ;	src/libs/lcd.c:90: inline void swap(char *x, char *y) {
                                    667 ;	-----------------------------------------
                                    668 ;	 function swap
                                    669 ;	-----------------------------------------
      000231                        670 _swap:
                                    671 ;	src/libs/lcd.c:91: char t = *x; *x = *y; *y = t;
      000231 AD 82            [24]  672 	mov	r5,dpl
      000233 AE 83            [24]  673 	mov	r6,dph
      000235 AF F0            [24]  674 	mov	r7,b
      000237 12 0B 60         [24]  675 	lcall	__gptrget
      00023A FC               [12]  676 	mov	r4,a
      00023B A9 4D            [24]  677 	mov	r1,_swap_PARM_2
      00023D AA 4E            [24]  678 	mov	r2,(_swap_PARM_2 + 1)
      00023F AB 4F            [24]  679 	mov	r3,(_swap_PARM_2 + 2)
      000241 89 82            [24]  680 	mov	dpl,r1
      000243 8A 83            [24]  681 	mov	dph,r2
      000245 8B F0            [24]  682 	mov	b,r3
      000247 12 0B 60         [24]  683 	lcall	__gptrget
      00024A 8D 82            [24]  684 	mov	dpl,r5
      00024C 8E 83            [24]  685 	mov	dph,r6
      00024E 8F F0            [24]  686 	mov	b,r7
      000250 12 0A 48         [24]  687 	lcall	__gptrput
      000253 89 82            [24]  688 	mov	dpl,r1
      000255 8A 83            [24]  689 	mov	dph,r2
      000257 8B F0            [24]  690 	mov	b,r3
      000259 EC               [12]  691 	mov	a,r4
                                    692 ;	src/libs/lcd.c:92: }
      00025A 02 0A 48         [24]  693 	ljmp	__gptrput
                                    694 ;------------------------------------------------------------
                                    695 ;Allocation info for local variables in function 'reverse'
                                    696 ;------------------------------------------------------------
                                    697 ;i                         Allocated with name '_reverse_PARM_2'
                                    698 ;j                         Allocated with name '_reverse_PARM_3'
                                    699 ;buffer                    Allocated to registers r5 r6 r7 
                                    700 ;__1310720001              Allocated with name '_reverse___1310720001_131072_88'
                                    701 ;__1310720002              Allocated with name '_reverse___1310720002_131072_88'
                                    702 ;x                         Allocated to registers 
                                    703 ;y                         Allocated to registers 
                                    704 ;t                         Allocated with name '_reverse_t_262144_90'
                                    705 ;------------------------------------------------------------
                                    706 ;	src/libs/lcd.c:95: char* reverse(char *buffer, int i, int j)
                                    707 ;	-----------------------------------------
                                    708 ;	 function reverse
                                    709 ;	-----------------------------------------
      00025D                        710 _reverse:
      00025D AD 82            [24]  711 	mov	r5,dpl
      00025F AE 83            [24]  712 	mov	r6,dph
      000261 AF F0            [24]  713 	mov	r7,b
                                    714 ;	src/libs/lcd.c:97: while (i < j)
      000263 AB 4F            [24]  715 	mov	r3,_reverse_PARM_3
      000265 AC 50            [24]  716 	mov	r4,(_reverse_PARM_3 + 1)
      000267 A9 4D            [24]  717 	mov	r1,_reverse_PARM_2
      000269 AA 4E            [24]  718 	mov	r2,(_reverse_PARM_2 + 1)
      00026B                        719 00101$:
      00026B C3               [12]  720 	clr	c
      00026C E9               [12]  721 	mov	a,r1
      00026D 9B               [12]  722 	subb	a,r3
      00026E EA               [12]  723 	mov	a,r2
      00026F 64 80            [12]  724 	xrl	a,#0x80
      000271 8C F0            [24]  725 	mov	b,r4
      000273 63 F0 80         [24]  726 	xrl	b,#0x80
      000276 95 F0            [12]  727 	subb	a,b
      000278 50 55            [24]  728 	jnc	00103$
                                    729 ;	src/libs/lcd.c:98: swap(&buffer[i++], &buffer[j--]);
      00027A EB               [12]  730 	mov	a,r3
      00027B 2D               [12]  731 	add	a,r5
      00027C F5 54            [12]  732 	mov	_reverse___1310720002_131072_88,a
      00027E EC               [12]  733 	mov	a,r4
      00027F 3E               [12]  734 	addc	a,r6
      000280 F5 55            [12]  735 	mov	(_reverse___1310720002_131072_88 + 1),a
      000282 8F 56            [24]  736 	mov	(_reverse___1310720002_131072_88 + 2),r7
      000284 1B               [12]  737 	dec	r3
      000285 BB FF 01         [24]  738 	cjne	r3,#0xff,00117$
      000288 1C               [12]  739 	dec	r4
      000289                        740 00117$:
      000289 E9               [12]  741 	mov	a,r1
      00028A 2D               [12]  742 	add	a,r5
      00028B F5 51            [12]  743 	mov	_reverse___1310720001_131072_88,a
      00028D EA               [12]  744 	mov	a,r2
      00028E 3E               [12]  745 	addc	a,r6
      00028F F5 52            [12]  746 	mov	(_reverse___1310720001_131072_88 + 1),a
      000291 8F 53            [24]  747 	mov	(_reverse___1310720001_131072_88 + 2),r7
      000293 09               [12]  748 	inc	r1
      000294 B9 00 01         [24]  749 	cjne	r1,#0x00,00118$
      000297 0A               [12]  750 	inc	r2
      000298                        751 00118$:
                                    752 ;	src/libs/lcd.c:91: char t = *x; *x = *y; *y = t;
      000298 85 51 82         [24]  753 	mov	dpl,_reverse___1310720001_131072_88
      00029B 85 52 83         [24]  754 	mov	dph,(_reverse___1310720001_131072_88 + 1)
      00029E 85 53 F0         [24]  755 	mov	b,(_reverse___1310720001_131072_88 + 2)
      0002A1 12 0B 60         [24]  756 	lcall	__gptrget
      0002A4 F5 57            [12]  757 	mov	_reverse_t_262144_90,a
      0002A6 85 54 82         [24]  758 	mov	dpl,_reverse___1310720002_131072_88
      0002A9 85 55 83         [24]  759 	mov	dph,(_reverse___1310720002_131072_88 + 1)
      0002AC 85 56 F0         [24]  760 	mov	b,(_reverse___1310720002_131072_88 + 2)
      0002AF 12 0B 60         [24]  761 	lcall	__gptrget
      0002B2 F8               [12]  762 	mov	r0,a
      0002B3 85 51 82         [24]  763 	mov	dpl,_reverse___1310720001_131072_88
      0002B6 85 52 83         [24]  764 	mov	dph,(_reverse___1310720001_131072_88 + 1)
      0002B9 85 53 F0         [24]  765 	mov	b,(_reverse___1310720001_131072_88 + 2)
      0002BC 12 0A 48         [24]  766 	lcall	__gptrput
      0002BF 85 54 82         [24]  767 	mov	dpl,_reverse___1310720002_131072_88
      0002C2 85 55 83         [24]  768 	mov	dph,(_reverse___1310720002_131072_88 + 1)
      0002C5 85 56 F0         [24]  769 	mov	b,(_reverse___1310720002_131072_88 + 2)
      0002C8 E5 57            [12]  770 	mov	a,_reverse_t_262144_90
      0002CA 12 0A 48         [24]  771 	lcall	__gptrput
                                    772 ;	src/libs/lcd.c:98: swap(&buffer[i++], &buffer[j--]);
      0002CD 80 9C            [24]  773 	sjmp	00101$
      0002CF                        774 00103$:
                                    775 ;	src/libs/lcd.c:100: return buffer;
      0002CF 8D 82            [24]  776 	mov	dpl,r5
      0002D1 8E 83            [24]  777 	mov	dph,r6
      0002D3 8F F0            [24]  778 	mov	b,r7
                                    779 ;	src/libs/lcd.c:101: }
      0002D5 22               [24]  780 	ret
                                    781 ;------------------------------------------------------------
                                    782 ;Allocation info for local variables in function 'itoa'
                                    783 ;------------------------------------------------------------
                                    784 ;buffer                    Allocated with name '_itoa_PARM_2'
                                    785 ;base                      Allocated with name '_itoa_PARM_3'
                                    786 ;value                     Allocated with name '_itoa_value_65536_91'
                                    787 ;n                         Allocated to registers r4 r5 
                                    788 ;i                         Allocated to registers r2 r3 
                                    789 ;r                         Allocated with name '_itoa_r_131073_94'
                                    790 ;------------------------------------------------------------
                                    791 ;	src/libs/lcd.c:104: char* itoa(int value, char* buffer, int base)
                                    792 ;	-----------------------------------------
                                    793 ;	 function itoa
                                    794 ;	-----------------------------------------
      0002D6                        795 _itoa:
      0002D6 85 82 36         [24]  796 	mov	_itoa_value_65536_91,dpl
      0002D9 85 83 37         [24]  797 	mov	(_itoa_value_65536_91 + 1),dph
                                    798 ;	src/libs/lcd.c:107: if (base < 2 || base > 32)
      0002DC C3               [12]  799 	clr	c
      0002DD E5 34            [12]  800 	mov	a,_itoa_PARM_3
      0002DF 94 02            [12]  801 	subb	a,#0x02
      0002E1 E5 35            [12]  802 	mov	a,(_itoa_PARM_3 + 1)
      0002E3 64 80            [12]  803 	xrl	a,#0x80
      0002E5 94 80            [12]  804 	subb	a,#0x80
      0002E7 40 10            [24]  805 	jc	00101$
      0002E9 74 20            [12]  806 	mov	a,#0x20
      0002EB 95 34            [12]  807 	subb	a,_itoa_PARM_3
      0002ED 74 80            [12]  808 	mov	a,#(0x00 ^ 0x80)
      0002EF 85 35 F0         [24]  809 	mov	b,(_itoa_PARM_3 + 1)
      0002F2 63 F0 80         [24]  810 	xrl	b,#0x80
      0002F5 95 F0            [12]  811 	subb	a,b
      0002F7 50 0A            [24]  812 	jnc	00102$
      0002F9                        813 00101$:
                                    814 ;	src/libs/lcd.c:108: return buffer;
      0002F9 85 31 82         [24]  815 	mov	dpl,_itoa_PARM_2
      0002FC 85 32 83         [24]  816 	mov	dph,(_itoa_PARM_2 + 1)
      0002FF 85 33 F0         [24]  817 	mov	b,(_itoa_PARM_2 + 2)
      000302 22               [24]  818 	ret
      000303                        819 00102$:
                                    820 ;	src/libs/lcd.c:111: int n = abs(value);
      000303 85 36 82         [24]  821 	mov	dpl,_itoa_value_65536_91
      000306 85 37 83         [24]  822 	mov	dph,(_itoa_value_65536_91 + 1)
      000309 12 0A 63         [24]  823 	lcall	_abs
      00030C AC 82            [24]  824 	mov	r4,dpl
      00030E AD 83            [24]  825 	mov	r5,dph
                                    826 ;	src/libs/lcd.c:113: int i = 0;
      000310 7A 00            [12]  827 	mov	r2,#0x00
      000312 7B 00            [12]  828 	mov	r3,#0x00
                                    829 ;	src/libs/lcd.c:114: while (n)
      000314                        830 00107$:
      000314 EC               [12]  831 	mov	a,r4
      000315 4D               [12]  832 	orl	a,r5
      000316 70 03            [24]  833 	jnz	00147$
      000318 02 03 AD         [24]  834 	ljmp	00109$
      00031B                        835 00147$:
                                    836 ;	src/libs/lcd.c:116: int r = n % base;
      00031B 85 34 4D         [24]  837 	mov	__modsint_PARM_2,_itoa_PARM_3
      00031E 85 35 4E         [24]  838 	mov	(__modsint_PARM_2 + 1),(_itoa_PARM_3 + 1)
      000321 8C 82            [24]  839 	mov	dpl,r4
      000323 8D 83            [24]  840 	mov	dph,r5
      000325 C0 05            [24]  841 	push	ar5
      000327 C0 04            [24]  842 	push	ar4
      000329 C0 03            [24]  843 	push	ar3
      00032B C0 02            [24]  844 	push	ar2
      00032D 12 0B 7C         [24]  845 	lcall	__modsint
      000330 85 82 38         [24]  846 	mov	_itoa_r_131073_94,dpl
      000333 85 83 39         [24]  847 	mov	(_itoa_r_131073_94 + 1),dph
      000336 D0 02            [24]  848 	pop	ar2
      000338 D0 03            [24]  849 	pop	ar3
      00033A D0 04            [24]  850 	pop	ar4
      00033C D0 05            [24]  851 	pop	ar5
                                    852 ;	src/libs/lcd.c:118: if (r >= 10) 
      00033E C3               [12]  853 	clr	c
      00033F E5 38            [12]  854 	mov	a,_itoa_r_131073_94
      000341 94 0A            [12]  855 	subb	a,#0x0a
      000343 E5 39            [12]  856 	mov	a,(_itoa_r_131073_94 + 1)
      000345 64 80            [12]  857 	xrl	a,#0x80
      000347 94 80            [12]  858 	subb	a,#0x80
      000349 40 24            [24]  859 	jc	00105$
                                    860 ;	src/libs/lcd.c:119: buffer[i++] = 65 + (r - 10);
      00034B 8A 06            [24]  861 	mov	ar6,r2
      00034D 8B 07            [24]  862 	mov	ar7,r3
      00034F 0A               [12]  863 	inc	r2
      000350 BA 00 01         [24]  864 	cjne	r2,#0x00,00149$
      000353 0B               [12]  865 	inc	r3
      000354                        866 00149$:
      000354 EE               [12]  867 	mov	a,r6
      000355 25 31            [12]  868 	add	a,_itoa_PARM_2
      000357 FE               [12]  869 	mov	r6,a
      000358 EF               [12]  870 	mov	a,r7
      000359 35 32            [12]  871 	addc	a,(_itoa_PARM_2 + 1)
      00035B F9               [12]  872 	mov	r1,a
      00035C AF 33            [24]  873 	mov	r7,(_itoa_PARM_2 + 2)
      00035E A8 38            [24]  874 	mov	r0,_itoa_r_131073_94
      000360 74 37            [12]  875 	mov	a,#0x37
      000362 28               [12]  876 	add	a,r0
      000363 F8               [12]  877 	mov	r0,a
      000364 8E 82            [24]  878 	mov	dpl,r6
      000366 89 83            [24]  879 	mov	dph,r1
      000368 8F F0            [24]  880 	mov	b,r7
      00036A 12 0A 48         [24]  881 	lcall	__gptrput
      00036D 80 22            [24]  882 	sjmp	00106$
      00036F                        883 00105$:
                                    884 ;	src/libs/lcd.c:121: buffer[i++] = 48 + r;
      00036F 8A 06            [24]  885 	mov	ar6,r2
      000371 8B 07            [24]  886 	mov	ar7,r3
      000373 0A               [12]  887 	inc	r2
      000374 BA 00 01         [24]  888 	cjne	r2,#0x00,00150$
      000377 0B               [12]  889 	inc	r3
      000378                        890 00150$:
      000378 EE               [12]  891 	mov	a,r6
      000379 25 31            [12]  892 	add	a,_itoa_PARM_2
      00037B FE               [12]  893 	mov	r6,a
      00037C EF               [12]  894 	mov	a,r7
      00037D 35 32            [12]  895 	addc	a,(_itoa_PARM_2 + 1)
      00037F F9               [12]  896 	mov	r1,a
      000380 AF 33            [24]  897 	mov	r7,(_itoa_PARM_2 + 2)
      000382 A8 38            [24]  898 	mov	r0,_itoa_r_131073_94
      000384 74 30            [12]  899 	mov	a,#0x30
      000386 28               [12]  900 	add	a,r0
      000387 F8               [12]  901 	mov	r0,a
      000388 8E 82            [24]  902 	mov	dpl,r6
      00038A 89 83            [24]  903 	mov	dph,r1
      00038C 8F F0            [24]  904 	mov	b,r7
      00038E 12 0A 48         [24]  905 	lcall	__gptrput
      000391                        906 00106$:
                                    907 ;	src/libs/lcd.c:123: n = n / base;
      000391 85 34 4D         [24]  908 	mov	__divsint_PARM_2,_itoa_PARM_3
      000394 85 35 4E         [24]  909 	mov	(__divsint_PARM_2 + 1),(_itoa_PARM_3 + 1)
      000397 8C 82            [24]  910 	mov	dpl,r4
      000399 8D 83            [24]  911 	mov	dph,r5
      00039B C0 03            [24]  912 	push	ar3
      00039D C0 02            [24]  913 	push	ar2
      00039F 12 0B C5         [24]  914 	lcall	__divsint
      0003A2 AC 82            [24]  915 	mov	r4,dpl
      0003A4 AD 83            [24]  916 	mov	r5,dph
      0003A6 D0 02            [24]  917 	pop	ar2
      0003A8 D0 03            [24]  918 	pop	ar3
      0003AA 02 03 14         [24]  919 	ljmp	00107$
      0003AD                        920 00109$:
                                    921 ;	src/libs/lcd.c:127: if (i == 0)
      0003AD EA               [12]  922 	mov	a,r2
      0003AE 4B               [12]  923 	orl	a,r3
      0003AF 70 1E            [24]  924 	jnz	00111$
                                    925 ;	src/libs/lcd.c:128: buffer[i++] = '0';
      0003B1 8A 06            [24]  926 	mov	ar6,r2
      0003B3 8B 07            [24]  927 	mov	ar7,r3
      0003B5 0A               [12]  928 	inc	r2
      0003B6 BA 00 01         [24]  929 	cjne	r2,#0x00,00152$
      0003B9 0B               [12]  930 	inc	r3
      0003BA                        931 00152$:
      0003BA EE               [12]  932 	mov	a,r6
      0003BB 25 31            [12]  933 	add	a,_itoa_PARM_2
      0003BD FE               [12]  934 	mov	r6,a
      0003BE EF               [12]  935 	mov	a,r7
      0003BF 35 32            [12]  936 	addc	a,(_itoa_PARM_2 + 1)
      0003C1 FF               [12]  937 	mov	r7,a
      0003C2 AD 33            [24]  938 	mov	r5,(_itoa_PARM_2 + 2)
      0003C4 8E 82            [24]  939 	mov	dpl,r6
      0003C6 8F 83            [24]  940 	mov	dph,r7
      0003C8 8D F0            [24]  941 	mov	b,r5
      0003CA 74 30            [12]  942 	mov	a,#0x30
      0003CC 12 0A 48         [24]  943 	lcall	__gptrput
      0003CF                        944 00111$:
                                    945 ;	src/libs/lcd.c:133: if (value < 0 && base == 10)
      0003CF E5 37            [12]  946 	mov	a,(_itoa_value_65536_91 + 1)
      0003D1 30 E7 2B         [24]  947 	jnb	acc.7,00113$
      0003D4 74 0A            [12]  948 	mov	a,#0x0a
      0003D6 B5 34 06         [24]  949 	cjne	a,_itoa_PARM_3,00154$
      0003D9 E4               [12]  950 	clr	a
      0003DA B5 35 02         [24]  951 	cjne	a,(_itoa_PARM_3 + 1),00154$
      0003DD 80 02            [24]  952 	sjmp	00155$
      0003DF                        953 00154$:
      0003DF 80 1E            [24]  954 	sjmp	00113$
      0003E1                        955 00155$:
                                    956 ;	src/libs/lcd.c:134: buffer[i++] = '-';
      0003E1 8A 06            [24]  957 	mov	ar6,r2
      0003E3 8B 07            [24]  958 	mov	ar7,r3
      0003E5 0A               [12]  959 	inc	r2
      0003E6 BA 00 01         [24]  960 	cjne	r2,#0x00,00156$
      0003E9 0B               [12]  961 	inc	r3
      0003EA                        962 00156$:
      0003EA EE               [12]  963 	mov	a,r6
      0003EB 25 31            [12]  964 	add	a,_itoa_PARM_2
      0003ED FE               [12]  965 	mov	r6,a
      0003EE EF               [12]  966 	mov	a,r7
      0003EF 35 32            [12]  967 	addc	a,(_itoa_PARM_2 + 1)
      0003F1 FF               [12]  968 	mov	r7,a
      0003F2 AD 33            [24]  969 	mov	r5,(_itoa_PARM_2 + 2)
      0003F4 8E 82            [24]  970 	mov	dpl,r6
      0003F6 8F 83            [24]  971 	mov	dph,r7
      0003F8 8D F0            [24]  972 	mov	b,r5
      0003FA 74 2D            [12]  973 	mov	a,#0x2d
      0003FC 12 0A 48         [24]  974 	lcall	__gptrput
      0003FF                        975 00113$:
                                    976 ;	src/libs/lcd.c:136: buffer[i] = '\0'; // null terminate string
      0003FF EA               [12]  977 	mov	a,r2
      000400 25 31            [12]  978 	add	a,_itoa_PARM_2
      000402 FD               [12]  979 	mov	r5,a
      000403 EB               [12]  980 	mov	a,r3
      000404 35 32            [12]  981 	addc	a,(_itoa_PARM_2 + 1)
      000406 FE               [12]  982 	mov	r6,a
      000407 AF 33            [24]  983 	mov	r7,(_itoa_PARM_2 + 2)
      000409 8D 82            [24]  984 	mov	dpl,r5
      00040B 8E 83            [24]  985 	mov	dph,r6
      00040D 8F F0            [24]  986 	mov	b,r7
      00040F E4               [12]  987 	clr	a
      000410 12 0A 48         [24]  988 	lcall	__gptrput
                                    989 ;	src/libs/lcd.c:139: return reverse(buffer, 0, i - 1);
      000413 EA               [12]  990 	mov	a,r2
      000414 24 FF            [12]  991 	add	a,#0xff
      000416 F5 4F            [12]  992 	mov	_reverse_PARM_3,a
      000418 EB               [12]  993 	mov	a,r3
      000419 34 FF            [12]  994 	addc	a,#0xff
      00041B F5 50            [12]  995 	mov	(_reverse_PARM_3 + 1),a
      00041D E4               [12]  996 	clr	a
      00041E F5 4D            [12]  997 	mov	_reverse_PARM_2,a
      000420 F5 4E            [12]  998 	mov	(_reverse_PARM_2 + 1),a
      000422 85 31 82         [24]  999 	mov	dpl,_itoa_PARM_2
      000425 85 32 83         [24] 1000 	mov	dph,(_itoa_PARM_2 + 1)
      000428 85 33 F0         [24] 1001 	mov	b,(_itoa_PARM_2 + 2)
                                   1002 ;	src/libs/lcd.c:140: }
      00042B 02 02 5D         [24] 1003 	ljmp	_reverse
                                   1004 	.area CSEG    (CODE)
                                   1005 	.area CONST   (CODE)
                                   1006 	.area XINIT   (CODE)
                                   1007 	.area CABS    (ABS,CODE)
