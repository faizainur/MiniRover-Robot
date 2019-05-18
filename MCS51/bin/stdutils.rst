                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stdutils
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _reverse_PARM_3
                                     12 	.globl _reverse_PARM_2
                                     13 	.globl _abs
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _FL
                                     21 	.globl _P
                                     22 	.globl _TF2
                                     23 	.globl _EXF2
                                     24 	.globl _RCLK
                                     25 	.globl _TCLK
                                     26 	.globl _EXEN2
                                     27 	.globl _TR2
                                     28 	.globl _C_T2
                                     29 	.globl _CP_RL2
                                     30 	.globl _T2CON_7
                                     31 	.globl _T2CON_6
                                     32 	.globl _T2CON_5
                                     33 	.globl _T2CON_4
                                     34 	.globl _T2CON_3
                                     35 	.globl _T2CON_2
                                     36 	.globl _T2CON_1
                                     37 	.globl _T2CON_0
                                     38 	.globl _PT2
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ET2
                                     62 	.globl _ES
                                     63 	.globl _ET1
                                     64 	.globl _EX1
                                     65 	.globl _ET0
                                     66 	.globl _EX0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _SM0
                                     76 	.globl _SM1
                                     77 	.globl _SM2
                                     78 	.globl _REN
                                     79 	.globl _TB8
                                     80 	.globl _RB8
                                     81 	.globl _TI
                                     82 	.globl _RI
                                     83 	.globl _T2EX
                                     84 	.globl _T2
                                     85 	.globl _P1_7
                                     86 	.globl _P1_6
                                     87 	.globl _P1_5
                                     88 	.globl _P1_4
                                     89 	.globl _P1_3
                                     90 	.globl _P1_2
                                     91 	.globl _P1_1
                                     92 	.globl _P1_0
                                     93 	.globl _TF1
                                     94 	.globl _TR1
                                     95 	.globl _TF0
                                     96 	.globl _TR0
                                     97 	.globl _IE1
                                     98 	.globl _IT1
                                     99 	.globl _IE0
                                    100 	.globl _IT0
                                    101 	.globl _P0_7
                                    102 	.globl _P0_6
                                    103 	.globl _P0_5
                                    104 	.globl _P0_4
                                    105 	.globl _P0_3
                                    106 	.globl _P0_2
                                    107 	.globl _P0_1
                                    108 	.globl _P0_0
                                    109 	.globl _B
                                    110 	.globl _A
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _TH2
                                    114 	.globl _TL2
                                    115 	.globl _RCAP2H
                                    116 	.globl _RCAP2L
                                    117 	.globl _T2MOD
                                    118 	.globl _T2CON
                                    119 	.globl _IP
                                    120 	.globl _P3
                                    121 	.globl _IE
                                    122 	.globl _P2
                                    123 	.globl _SBUF
                                    124 	.globl _SCON
                                    125 	.globl _P1
                                    126 	.globl _TH1
                                    127 	.globl _TH0
                                    128 	.globl _TL1
                                    129 	.globl _TL0
                                    130 	.globl _TMOD
                                    131 	.globl _TCON
                                    132 	.globl _PCON
                                    133 	.globl _DPH
                                    134 	.globl _DPL
                                    135 	.globl _SP
                                    136 	.globl _P0
                                    137 	.globl _itoa_PARM_3
                                    138 	.globl _itoa_PARM_2
                                    139 	.globl _reverse
                                    140 	.globl _itoa
                                    141 ;--------------------------------------------------------
                                    142 ; special function registers
                                    143 ;--------------------------------------------------------
                                    144 	.area RSEG    (ABS,DATA)
      000000                        145 	.org 0x0000
                           000080   146 _P0	=	0x0080
                           000081   147 _SP	=	0x0081
                           000082   148 _DPL	=	0x0082
                           000083   149 _DPH	=	0x0083
                           000087   150 _PCON	=	0x0087
                           000088   151 _TCON	=	0x0088
                           000089   152 _TMOD	=	0x0089
                           00008A   153 _TL0	=	0x008a
                           00008B   154 _TL1	=	0x008b
                           00008C   155 _TH0	=	0x008c
                           00008D   156 _TH1	=	0x008d
                           000090   157 _P1	=	0x0090
                           000098   158 _SCON	=	0x0098
                           000099   159 _SBUF	=	0x0099
                           0000A0   160 _P2	=	0x00a0
                           0000A8   161 _IE	=	0x00a8
                           0000B0   162 _P3	=	0x00b0
                           0000B8   163 _IP	=	0x00b8
                           0000C8   164 _T2CON	=	0x00c8
                           0000C9   165 _T2MOD	=	0x00c9
                           0000CA   166 _RCAP2L	=	0x00ca
                           0000CB   167 _RCAP2H	=	0x00cb
                           0000CC   168 _TL2	=	0x00cc
                           0000CD   169 _TH2	=	0x00cd
                           0000D0   170 _PSW	=	0x00d0
                           0000E0   171 _ACC	=	0x00e0
                           0000E0   172 _A	=	0x00e0
                           0000F0   173 _B	=	0x00f0
                                    174 ;--------------------------------------------------------
                                    175 ; special function bits
                                    176 ;--------------------------------------------------------
                                    177 	.area RSEG    (ABS,DATA)
      000000                        178 	.org 0x0000
                           000080   179 _P0_0	=	0x0080
                           000081   180 _P0_1	=	0x0081
                           000082   181 _P0_2	=	0x0082
                           000083   182 _P0_3	=	0x0083
                           000084   183 _P0_4	=	0x0084
                           000085   184 _P0_5	=	0x0085
                           000086   185 _P0_6	=	0x0086
                           000087   186 _P0_7	=	0x0087
                           000088   187 _IT0	=	0x0088
                           000089   188 _IE0	=	0x0089
                           00008A   189 _IT1	=	0x008a
                           00008B   190 _IE1	=	0x008b
                           00008C   191 _TR0	=	0x008c
                           00008D   192 _TF0	=	0x008d
                           00008E   193 _TR1	=	0x008e
                           00008F   194 _TF1	=	0x008f
                           000090   195 _P1_0	=	0x0090
                           000091   196 _P1_1	=	0x0091
                           000092   197 _P1_2	=	0x0092
                           000093   198 _P1_3	=	0x0093
                           000094   199 _P1_4	=	0x0094
                           000095   200 _P1_5	=	0x0095
                           000096   201 _P1_6	=	0x0096
                           000097   202 _P1_7	=	0x0097
                           000090   203 _T2	=	0x0090
                           000091   204 _T2EX	=	0x0091
                           000098   205 _RI	=	0x0098
                           000099   206 _TI	=	0x0099
                           00009A   207 _RB8	=	0x009a
                           00009B   208 _TB8	=	0x009b
                           00009C   209 _REN	=	0x009c
                           00009D   210 _SM2	=	0x009d
                           00009E   211 _SM1	=	0x009e
                           00009F   212 _SM0	=	0x009f
                           0000A0   213 _P2_0	=	0x00a0
                           0000A1   214 _P2_1	=	0x00a1
                           0000A2   215 _P2_2	=	0x00a2
                           0000A3   216 _P2_3	=	0x00a3
                           0000A4   217 _P2_4	=	0x00a4
                           0000A5   218 _P2_5	=	0x00a5
                           0000A6   219 _P2_6	=	0x00a6
                           0000A7   220 _P2_7	=	0x00a7
                           0000A8   221 _EX0	=	0x00a8
                           0000A9   222 _ET0	=	0x00a9
                           0000AA   223 _EX1	=	0x00aa
                           0000AB   224 _ET1	=	0x00ab
                           0000AC   225 _ES	=	0x00ac
                           0000AD   226 _ET2	=	0x00ad
                           0000AF   227 _EA	=	0x00af
                           0000B0   228 _P3_0	=	0x00b0
                           0000B1   229 _P3_1	=	0x00b1
                           0000B2   230 _P3_2	=	0x00b2
                           0000B3   231 _P3_3	=	0x00b3
                           0000B4   232 _P3_4	=	0x00b4
                           0000B5   233 _P3_5	=	0x00b5
                           0000B6   234 _P3_6	=	0x00b6
                           0000B7   235 _P3_7	=	0x00b7
                           0000B0   236 _RXD	=	0x00b0
                           0000B1   237 _TXD	=	0x00b1
                           0000B2   238 _INT0	=	0x00b2
                           0000B3   239 _INT1	=	0x00b3
                           0000B4   240 _T0	=	0x00b4
                           0000B5   241 _T1	=	0x00b5
                           0000B6   242 _WR	=	0x00b6
                           0000B7   243 _RD	=	0x00b7
                           0000B8   244 _PX0	=	0x00b8
                           0000B9   245 _PT0	=	0x00b9
                           0000BA   246 _PX1	=	0x00ba
                           0000BB   247 _PT1	=	0x00bb
                           0000BC   248 _PS	=	0x00bc
                           0000BD   249 _PT2	=	0x00bd
                           0000C8   250 _T2CON_0	=	0x00c8
                           0000C9   251 _T2CON_1	=	0x00c9
                           0000CA   252 _T2CON_2	=	0x00ca
                           0000CB   253 _T2CON_3	=	0x00cb
                           0000CC   254 _T2CON_4	=	0x00cc
                           0000CD   255 _T2CON_5	=	0x00cd
                           0000CE   256 _T2CON_6	=	0x00ce
                           0000CF   257 _T2CON_7	=	0x00cf
                           0000C8   258 _CP_RL2	=	0x00c8
                           0000C9   259 _C_T2	=	0x00c9
                           0000CA   260 _TR2	=	0x00ca
                           0000CB   261 _EXEN2	=	0x00cb
                           0000CC   262 _TCLK	=	0x00cc
                           0000CD   263 _RCLK	=	0x00cd
                           0000CE   264 _EXF2	=	0x00ce
                           0000CF   265 _TF2	=	0x00cf
                           0000D0   266 _P	=	0x00d0
                           0000D1   267 _FL	=	0x00d1
                           0000D2   268 _OV	=	0x00d2
                           0000D3   269 _RS0	=	0x00d3
                           0000D4   270 _RS1	=	0x00d4
                           0000D5   271 _F0	=	0x00d5
                           0000D6   272 _AC	=	0x00d6
                           0000D7   273 _CY	=	0x00d7
                                    274 ;--------------------------------------------------------
                                    275 ; overlayable register banks
                                    276 ;--------------------------------------------------------
                                    277 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        278 	.ds 8
                                    279 ;--------------------------------------------------------
                                    280 ; internal ram data
                                    281 ;--------------------------------------------------------
                                    282 	.area DSEG    (DATA)
      000031                        283 _itoa_PARM_2:
      000031                        284 	.ds 3
      000034                        285 _itoa_PARM_3:
      000034                        286 	.ds 2
      000036                        287 _itoa_value_65536_52:
      000036                        288 	.ds 2
      000038                        289 _itoa_r_131073_55:
      000038                        290 	.ds 2
                                    291 ;--------------------------------------------------------
                                    292 ; overlayable items in internal ram 
                                    293 ;--------------------------------------------------------
                                    294 	.area	OSEG    (OVR,DATA)
      00003A                        295 _reverse_PARM_2:
      00003A                        296 	.ds 2
      00003C                        297 _reverse_PARM_3:
      00003C                        298 	.ds 2
      00003E                        299 _reverse___1310720001_131072_49:
      00003E                        300 	.ds 3
      000041                        301 _reverse___1310720002_131072_49:
      000041                        302 	.ds 3
      000044                        303 _reverse_t_262144_51:
      000044                        304 	.ds 1
                                    305 ;--------------------------------------------------------
                                    306 ; indirectly addressable internal ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area ISEG    (DATA)
                                    309 ;--------------------------------------------------------
                                    310 ; absolute internal ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area IABS    (ABS,DATA)
                                    313 	.area IABS    (ABS,DATA)
                                    314 ;--------------------------------------------------------
                                    315 ; bit data
                                    316 ;--------------------------------------------------------
                                    317 	.area BSEG    (BIT)
                                    318 ;--------------------------------------------------------
                                    319 ; paged external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area PSEG    (PAG,XDATA)
                                    322 ;--------------------------------------------------------
                                    323 ; external ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XSEG    (XDATA)
                                    326 ;--------------------------------------------------------
                                    327 ; absolute external ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area XABS    (ABS,XDATA)
                                    330 ;--------------------------------------------------------
                                    331 ; external initialized ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area XISEG   (XDATA)
                                    334 	.area HOME    (CODE)
                                    335 	.area GSINIT0 (CODE)
                                    336 	.area GSINIT1 (CODE)
                                    337 	.area GSINIT2 (CODE)
                                    338 	.area GSINIT3 (CODE)
                                    339 	.area GSINIT4 (CODE)
                                    340 	.area GSINIT5 (CODE)
                                    341 	.area GSINIT  (CODE)
                                    342 	.area GSFINAL (CODE)
                                    343 	.area CSEG    (CODE)
                                    344 ;--------------------------------------------------------
                                    345 ; global & static initialisations
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
                                    348 	.area GSINIT  (CODE)
                                    349 	.area GSFINAL (CODE)
                                    350 	.area GSINIT  (CODE)
                                    351 ;--------------------------------------------------------
                                    352 ; Home
                                    353 ;--------------------------------------------------------
                                    354 	.area HOME    (CODE)
                                    355 	.area HOME    (CODE)
                                    356 ;--------------------------------------------------------
                                    357 ; code
                                    358 ;--------------------------------------------------------
                                    359 	.area CSEG    (CODE)
                                    360 ;------------------------------------------------------------
                                    361 ;Allocation info for local variables in function 'reverse'
                                    362 ;------------------------------------------------------------
                                    363 ;i                         Allocated with name '_reverse_PARM_2'
                                    364 ;j                         Allocated with name '_reverse_PARM_3'
                                    365 ;buffer                    Allocated to registers r5 r6 r7 
                                    366 ;__1310720001              Allocated with name '_reverse___1310720001_131072_49'
                                    367 ;__1310720002              Allocated with name '_reverse___1310720002_131072_49'
                                    368 ;x                         Allocated to registers 
                                    369 ;y                         Allocated to registers 
                                    370 ;t                         Allocated with name '_reverse_t_262144_51'
                                    371 ;------------------------------------------------------------
                                    372 ;	src/libs/stdutils.c:9: char* reverse(char *buffer, int i, int j)
                                    373 ;	-----------------------------------------
                                    374 ;	 function reverse
                                    375 ;	-----------------------------------------
      0002D9                        376 _reverse:
                           000007   377 	ar7 = 0x07
                           000006   378 	ar6 = 0x06
                           000005   379 	ar5 = 0x05
                           000004   380 	ar4 = 0x04
                           000003   381 	ar3 = 0x03
                           000002   382 	ar2 = 0x02
                           000001   383 	ar1 = 0x01
                           000000   384 	ar0 = 0x00
      0002D9 AD 82            [24]  385 	mov	r5,dpl
      0002DB AE 83            [24]  386 	mov	r6,dph
      0002DD AF F0            [24]  387 	mov	r7,b
                                    388 ;	src/libs/stdutils.c:11: while (i < j)
      0002DF AB 3C            [24]  389 	mov	r3,_reverse_PARM_3
      0002E1 AC 3D            [24]  390 	mov	r4,(_reverse_PARM_3 + 1)
      0002E3 A9 3A            [24]  391 	mov	r1,_reverse_PARM_2
      0002E5 AA 3B            [24]  392 	mov	r2,(_reverse_PARM_2 + 1)
      0002E7                        393 00101$:
      0002E7 C3               [12]  394 	clr	c
      0002E8 E9               [12]  395 	mov	a,r1
      0002E9 9B               [12]  396 	subb	a,r3
      0002EA EA               [12]  397 	mov	a,r2
      0002EB 64 80            [12]  398 	xrl	a,#0x80
      0002ED 8C F0            [24]  399 	mov	b,r4
      0002EF 63 F0 80         [24]  400 	xrl	b,#0x80
      0002F2 95 F0            [12]  401 	subb	a,b
      0002F4 50 55            [24]  402 	jnc	00103$
                                    403 ;	src/libs/stdutils.c:12: swap(&buffer[i++], &buffer[j--]);
      0002F6 EB               [12]  404 	mov	a,r3
      0002F7 2D               [12]  405 	add	a,r5
      0002F8 F5 41            [12]  406 	mov	_reverse___1310720002_131072_49,a
      0002FA EC               [12]  407 	mov	a,r4
      0002FB 3E               [12]  408 	addc	a,r6
      0002FC F5 42            [12]  409 	mov	(_reverse___1310720002_131072_49 + 1),a
      0002FE 8F 43            [24]  410 	mov	(_reverse___1310720002_131072_49 + 2),r7
      000300 1B               [12]  411 	dec	r3
      000301 BB FF 01         [24]  412 	cjne	r3,#0xff,00117$
      000304 1C               [12]  413 	dec	r4
      000305                        414 00117$:
      000305 E9               [12]  415 	mov	a,r1
      000306 2D               [12]  416 	add	a,r5
      000307 F5 3E            [12]  417 	mov	_reverse___1310720001_131072_49,a
      000309 EA               [12]  418 	mov	a,r2
      00030A 3E               [12]  419 	addc	a,r6
      00030B F5 3F            [12]  420 	mov	(_reverse___1310720001_131072_49 + 1),a
      00030D 8F 40            [24]  421 	mov	(_reverse___1310720001_131072_49 + 2),r7
      00030F 09               [12]  422 	inc	r1
      000310 B9 00 01         [24]  423 	cjne	r1,#0x00,00118$
      000313 0A               [12]  424 	inc	r2
      000314                        425 00118$:
                                    426 ;	src/libs/stdutils.c:5: char t = *x; *x = *y; *y = t;
      000314 85 3E 82         [24]  427 	mov	dpl,_reverse___1310720001_131072_49
      000317 85 3F 83         [24]  428 	mov	dph,(_reverse___1310720001_131072_49 + 1)
      00031A 85 40 F0         [24]  429 	mov	b,(_reverse___1310720001_131072_49 + 2)
      00031D 12 05 48         [24]  430 	lcall	__gptrget
      000320 F5 44            [12]  431 	mov	_reverse_t_262144_51,a
      000322 85 41 82         [24]  432 	mov	dpl,_reverse___1310720002_131072_49
      000325 85 42 83         [24]  433 	mov	dph,(_reverse___1310720002_131072_49 + 1)
      000328 85 43 F0         [24]  434 	mov	b,(_reverse___1310720002_131072_49 + 2)
      00032B 12 05 48         [24]  435 	lcall	__gptrget
      00032E F8               [12]  436 	mov	r0,a
      00032F 85 3E 82         [24]  437 	mov	dpl,_reverse___1310720001_131072_49
      000332 85 3F 83         [24]  438 	mov	dph,(_reverse___1310720001_131072_49 + 1)
      000335 85 40 F0         [24]  439 	mov	b,(_reverse___1310720001_131072_49 + 2)
      000338 12 04 AA         [24]  440 	lcall	__gptrput
      00033B 85 41 82         [24]  441 	mov	dpl,_reverse___1310720002_131072_49
      00033E 85 42 83         [24]  442 	mov	dph,(_reverse___1310720002_131072_49 + 1)
      000341 85 43 F0         [24]  443 	mov	b,(_reverse___1310720002_131072_49 + 2)
      000344 E5 44            [12]  444 	mov	a,_reverse_t_262144_51
      000346 12 04 AA         [24]  445 	lcall	__gptrput
                                    446 ;	src/libs/stdutils.c:12: swap(&buffer[i++], &buffer[j--]);
      000349 80 9C            [24]  447 	sjmp	00101$
      00034B                        448 00103$:
                                    449 ;	src/libs/stdutils.c:14: return buffer;
      00034B 8D 82            [24]  450 	mov	dpl,r5
      00034D 8E 83            [24]  451 	mov	dph,r6
      00034F 8F F0            [24]  452 	mov	b,r7
                                    453 ;	src/libs/stdutils.c:15: }
      000351 22               [24]  454 	ret
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function 'itoa'
                                    457 ;------------------------------------------------------------
                                    458 ;buffer                    Allocated with name '_itoa_PARM_2'
                                    459 ;base                      Allocated with name '_itoa_PARM_3'
                                    460 ;value                     Allocated with name '_itoa_value_65536_52'
                                    461 ;n                         Allocated to registers r4 r5 
                                    462 ;i                         Allocated to registers r2 r3 
                                    463 ;r                         Allocated with name '_itoa_r_131073_55'
                                    464 ;------------------------------------------------------------
                                    465 ;	src/libs/stdutils.c:18: char* itoa(int value, char* buffer, int base)
                                    466 ;	-----------------------------------------
                                    467 ;	 function itoa
                                    468 ;	-----------------------------------------
      000352                        469 _itoa:
      000352 85 82 36         [24]  470 	mov	_itoa_value_65536_52,dpl
      000355 85 83 37         [24]  471 	mov	(_itoa_value_65536_52 + 1),dph
                                    472 ;	src/libs/stdutils.c:21: if (base < 2 || base > 32)
      000358 C3               [12]  473 	clr	c
      000359 E5 34            [12]  474 	mov	a,_itoa_PARM_3
      00035B 94 02            [12]  475 	subb	a,#0x02
      00035D E5 35            [12]  476 	mov	a,(_itoa_PARM_3 + 1)
      00035F 64 80            [12]  477 	xrl	a,#0x80
      000361 94 80            [12]  478 	subb	a,#0x80
      000363 40 10            [24]  479 	jc	00101$
      000365 74 20            [12]  480 	mov	a,#0x20
      000367 95 34            [12]  481 	subb	a,_itoa_PARM_3
      000369 74 80            [12]  482 	mov	a,#(0x00 ^ 0x80)
      00036B 85 35 F0         [24]  483 	mov	b,(_itoa_PARM_3 + 1)
      00036E 63 F0 80         [24]  484 	xrl	b,#0x80
      000371 95 F0            [12]  485 	subb	a,b
      000373 50 0A            [24]  486 	jnc	00102$
      000375                        487 00101$:
                                    488 ;	src/libs/stdutils.c:22: return buffer;
      000375 85 31 82         [24]  489 	mov	dpl,_itoa_PARM_2
      000378 85 32 83         [24]  490 	mov	dph,(_itoa_PARM_2 + 1)
      00037B 85 33 F0         [24]  491 	mov	b,(_itoa_PARM_2 + 2)
      00037E 22               [24]  492 	ret
      00037F                        493 00102$:
                                    494 ;	src/libs/stdutils.c:25: int n = abs(value);
      00037F 85 36 82         [24]  495 	mov	dpl,_itoa_value_65536_52
      000382 85 37 83         [24]  496 	mov	dph,(_itoa_value_65536_52 + 1)
      000385 12 04 C5         [24]  497 	lcall	_abs
      000388 AC 82            [24]  498 	mov	r4,dpl
      00038A AD 83            [24]  499 	mov	r5,dph
                                    500 ;	src/libs/stdutils.c:27: int i = 0;
      00038C 7A 00            [12]  501 	mov	r2,#0x00
      00038E 7B 00            [12]  502 	mov	r3,#0x00
                                    503 ;	src/libs/stdutils.c:28: while (n)
      000390                        504 00107$:
      000390 EC               [12]  505 	mov	a,r4
      000391 4D               [12]  506 	orl	a,r5
      000392 70 03            [24]  507 	jnz	00147$
      000394 02 04 29         [24]  508 	ljmp	00109$
      000397                        509 00147$:
                                    510 ;	src/libs/stdutils.c:30: int r = n % base;
      000397 85 34 3A         [24]  511 	mov	__modsint_PARM_2,_itoa_PARM_3
      00039A 85 35 3B         [24]  512 	mov	(__modsint_PARM_2 + 1),(_itoa_PARM_3 + 1)
      00039D 8C 82            [24]  513 	mov	dpl,r4
      00039F 8D 83            [24]  514 	mov	dph,r5
      0003A1 C0 05            [24]  515 	push	ar5
      0003A3 C0 04            [24]  516 	push	ar4
      0003A5 C0 03            [24]  517 	push	ar3
      0003A7 C0 02            [24]  518 	push	ar2
      0003A9 12 05 64         [24]  519 	lcall	__modsint
      0003AC 85 82 38         [24]  520 	mov	_itoa_r_131073_55,dpl
      0003AF 85 83 39         [24]  521 	mov	(_itoa_r_131073_55 + 1),dph
      0003B2 D0 02            [24]  522 	pop	ar2
      0003B4 D0 03            [24]  523 	pop	ar3
      0003B6 D0 04            [24]  524 	pop	ar4
      0003B8 D0 05            [24]  525 	pop	ar5
                                    526 ;	src/libs/stdutils.c:32: if (r >= 10) 
      0003BA C3               [12]  527 	clr	c
      0003BB E5 38            [12]  528 	mov	a,_itoa_r_131073_55
      0003BD 94 0A            [12]  529 	subb	a,#0x0a
      0003BF E5 39            [12]  530 	mov	a,(_itoa_r_131073_55 + 1)
      0003C1 64 80            [12]  531 	xrl	a,#0x80
      0003C3 94 80            [12]  532 	subb	a,#0x80
      0003C5 40 24            [24]  533 	jc	00105$
                                    534 ;	src/libs/stdutils.c:33: buffer[i++] = 65 + (r - 10);
      0003C7 8A 06            [24]  535 	mov	ar6,r2
      0003C9 8B 07            [24]  536 	mov	ar7,r3
      0003CB 0A               [12]  537 	inc	r2
      0003CC BA 00 01         [24]  538 	cjne	r2,#0x00,00149$
      0003CF 0B               [12]  539 	inc	r3
      0003D0                        540 00149$:
      0003D0 EE               [12]  541 	mov	a,r6
      0003D1 25 31            [12]  542 	add	a,_itoa_PARM_2
      0003D3 FE               [12]  543 	mov	r6,a
      0003D4 EF               [12]  544 	mov	a,r7
      0003D5 35 32            [12]  545 	addc	a,(_itoa_PARM_2 + 1)
      0003D7 F9               [12]  546 	mov	r1,a
      0003D8 AF 33            [24]  547 	mov	r7,(_itoa_PARM_2 + 2)
      0003DA A8 38            [24]  548 	mov	r0,_itoa_r_131073_55
      0003DC 74 37            [12]  549 	mov	a,#0x37
      0003DE 28               [12]  550 	add	a,r0
      0003DF F8               [12]  551 	mov	r0,a
      0003E0 8E 82            [24]  552 	mov	dpl,r6
      0003E2 89 83            [24]  553 	mov	dph,r1
      0003E4 8F F0            [24]  554 	mov	b,r7
      0003E6 12 04 AA         [24]  555 	lcall	__gptrput
      0003E9 80 22            [24]  556 	sjmp	00106$
      0003EB                        557 00105$:
                                    558 ;	src/libs/stdutils.c:35: buffer[i++] = 48 + r;
      0003EB 8A 06            [24]  559 	mov	ar6,r2
      0003ED 8B 07            [24]  560 	mov	ar7,r3
      0003EF 0A               [12]  561 	inc	r2
      0003F0 BA 00 01         [24]  562 	cjne	r2,#0x00,00150$
      0003F3 0B               [12]  563 	inc	r3
      0003F4                        564 00150$:
      0003F4 EE               [12]  565 	mov	a,r6
      0003F5 25 31            [12]  566 	add	a,_itoa_PARM_2
      0003F7 FE               [12]  567 	mov	r6,a
      0003F8 EF               [12]  568 	mov	a,r7
      0003F9 35 32            [12]  569 	addc	a,(_itoa_PARM_2 + 1)
      0003FB F9               [12]  570 	mov	r1,a
      0003FC AF 33            [24]  571 	mov	r7,(_itoa_PARM_2 + 2)
      0003FE A8 38            [24]  572 	mov	r0,_itoa_r_131073_55
      000400 74 30            [12]  573 	mov	a,#0x30
      000402 28               [12]  574 	add	a,r0
      000403 F8               [12]  575 	mov	r0,a
      000404 8E 82            [24]  576 	mov	dpl,r6
      000406 89 83            [24]  577 	mov	dph,r1
      000408 8F F0            [24]  578 	mov	b,r7
      00040A 12 04 AA         [24]  579 	lcall	__gptrput
      00040D                        580 00106$:
                                    581 ;	src/libs/stdutils.c:37: n = n / base;
      00040D 85 34 3A         [24]  582 	mov	__divsint_PARM_2,_itoa_PARM_3
      000410 85 35 3B         [24]  583 	mov	(__divsint_PARM_2 + 1),(_itoa_PARM_3 + 1)
      000413 8C 82            [24]  584 	mov	dpl,r4
      000415 8D 83            [24]  585 	mov	dph,r5
      000417 C0 03            [24]  586 	push	ar3
      000419 C0 02            [24]  587 	push	ar2
      00041B 12 05 9A         [24]  588 	lcall	__divsint
      00041E AC 82            [24]  589 	mov	r4,dpl
      000420 AD 83            [24]  590 	mov	r5,dph
      000422 D0 02            [24]  591 	pop	ar2
      000424 D0 03            [24]  592 	pop	ar3
      000426 02 03 90         [24]  593 	ljmp	00107$
      000429                        594 00109$:
                                    595 ;	src/libs/stdutils.c:41: if (i == 0)
      000429 EA               [12]  596 	mov	a,r2
      00042A 4B               [12]  597 	orl	a,r3
      00042B 70 1E            [24]  598 	jnz	00111$
                                    599 ;	src/libs/stdutils.c:42: buffer[i++] = '0';
      00042D 8A 06            [24]  600 	mov	ar6,r2
      00042F 8B 07            [24]  601 	mov	ar7,r3
      000431 0A               [12]  602 	inc	r2
      000432 BA 00 01         [24]  603 	cjne	r2,#0x00,00152$
      000435 0B               [12]  604 	inc	r3
      000436                        605 00152$:
      000436 EE               [12]  606 	mov	a,r6
      000437 25 31            [12]  607 	add	a,_itoa_PARM_2
      000439 FE               [12]  608 	mov	r6,a
      00043A EF               [12]  609 	mov	a,r7
      00043B 35 32            [12]  610 	addc	a,(_itoa_PARM_2 + 1)
      00043D FF               [12]  611 	mov	r7,a
      00043E AD 33            [24]  612 	mov	r5,(_itoa_PARM_2 + 2)
      000440 8E 82            [24]  613 	mov	dpl,r6
      000442 8F 83            [24]  614 	mov	dph,r7
      000444 8D F0            [24]  615 	mov	b,r5
      000446 74 30            [12]  616 	mov	a,#0x30
      000448 12 04 AA         [24]  617 	lcall	__gptrput
      00044B                        618 00111$:
                                    619 ;	src/libs/stdutils.c:47: if (value < 0 && base == 10)
      00044B E5 37            [12]  620 	mov	a,(_itoa_value_65536_52 + 1)
      00044D 30 E7 2B         [24]  621 	jnb	acc.7,00113$
      000450 74 0A            [12]  622 	mov	a,#0x0a
      000452 B5 34 06         [24]  623 	cjne	a,_itoa_PARM_3,00154$
      000455 E4               [12]  624 	clr	a
      000456 B5 35 02         [24]  625 	cjne	a,(_itoa_PARM_3 + 1),00154$
      000459 80 02            [24]  626 	sjmp	00155$
      00045B                        627 00154$:
      00045B 80 1E            [24]  628 	sjmp	00113$
      00045D                        629 00155$:
                                    630 ;	src/libs/stdutils.c:48: buffer[i++] = '-';
      00045D 8A 06            [24]  631 	mov	ar6,r2
      00045F 8B 07            [24]  632 	mov	ar7,r3
      000461 0A               [12]  633 	inc	r2
      000462 BA 00 01         [24]  634 	cjne	r2,#0x00,00156$
      000465 0B               [12]  635 	inc	r3
      000466                        636 00156$:
      000466 EE               [12]  637 	mov	a,r6
      000467 25 31            [12]  638 	add	a,_itoa_PARM_2
      000469 FE               [12]  639 	mov	r6,a
      00046A EF               [12]  640 	mov	a,r7
      00046B 35 32            [12]  641 	addc	a,(_itoa_PARM_2 + 1)
      00046D FF               [12]  642 	mov	r7,a
      00046E AD 33            [24]  643 	mov	r5,(_itoa_PARM_2 + 2)
      000470 8E 82            [24]  644 	mov	dpl,r6
      000472 8F 83            [24]  645 	mov	dph,r7
      000474 8D F0            [24]  646 	mov	b,r5
      000476 74 2D            [12]  647 	mov	a,#0x2d
      000478 12 04 AA         [24]  648 	lcall	__gptrput
      00047B                        649 00113$:
                                    650 ;	src/libs/stdutils.c:50: buffer[i] = '\0'; // null terminate string
      00047B EA               [12]  651 	mov	a,r2
      00047C 25 31            [12]  652 	add	a,_itoa_PARM_2
      00047E FD               [12]  653 	mov	r5,a
      00047F EB               [12]  654 	mov	a,r3
      000480 35 32            [12]  655 	addc	a,(_itoa_PARM_2 + 1)
      000482 FE               [12]  656 	mov	r6,a
      000483 AF 33            [24]  657 	mov	r7,(_itoa_PARM_2 + 2)
      000485 8D 82            [24]  658 	mov	dpl,r5
      000487 8E 83            [24]  659 	mov	dph,r6
      000489 8F F0            [24]  660 	mov	b,r7
      00048B E4               [12]  661 	clr	a
      00048C 12 04 AA         [24]  662 	lcall	__gptrput
                                    663 ;	src/libs/stdutils.c:53: return reverse(buffer, 0, i - 1);
      00048F EA               [12]  664 	mov	a,r2
      000490 24 FF            [12]  665 	add	a,#0xff
      000492 F5 3C            [12]  666 	mov	_reverse_PARM_3,a
      000494 EB               [12]  667 	mov	a,r3
      000495 34 FF            [12]  668 	addc	a,#0xff
      000497 F5 3D            [12]  669 	mov	(_reverse_PARM_3 + 1),a
      000499 E4               [12]  670 	clr	a
      00049A F5 3A            [12]  671 	mov	_reverse_PARM_2,a
      00049C F5 3B            [12]  672 	mov	(_reverse_PARM_2 + 1),a
      00049E 85 31 82         [24]  673 	mov	dpl,_itoa_PARM_2
      0004A1 85 32 83         [24]  674 	mov	dph,(_itoa_PARM_2 + 1)
      0004A4 85 33 F0         [24]  675 	mov	b,(_itoa_PARM_2 + 2)
                                    676 ;	src/libs/stdutils.c:54: }
      0004A7 02 02 D9         [24]  677 	ljmp	_reverse
                                    678 	.area CSEG    (CODE)
                                    679 	.area CONST   (CODE)
                                    680 	.area XINIT   (CODE)
                                    681 	.area CABS    (ABS,CODE)
