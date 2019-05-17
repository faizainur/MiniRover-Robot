                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module hcsr04
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _DELAY_us
                                     12 	.globl _echoPin4
                                     13 	.globl _echoPin3
                                     14 	.globl _echoPin2
                                     15 	.globl _echoPin1
                                     16 	.globl _triggerPin
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _FL
                                     24 	.globl _P
                                     25 	.globl _TF2
                                     26 	.globl _EXF2
                                     27 	.globl _RCLK
                                     28 	.globl _TCLK
                                     29 	.globl _EXEN2
                                     30 	.globl _TR2
                                     31 	.globl _C_T2
                                     32 	.globl _CP_RL2
                                     33 	.globl _T2CON_7
                                     34 	.globl _T2CON_6
                                     35 	.globl _T2CON_5
                                     36 	.globl _T2CON_4
                                     37 	.globl _T2CON_3
                                     38 	.globl _T2CON_2
                                     39 	.globl _T2CON_1
                                     40 	.globl _T2CON_0
                                     41 	.globl _PT2
                                     42 	.globl _PS
                                     43 	.globl _PT1
                                     44 	.globl _PX1
                                     45 	.globl _PT0
                                     46 	.globl _PX0
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD
                                     54 	.globl _RXD
                                     55 	.globl _P3_7
                                     56 	.globl _P3_6
                                     57 	.globl _P3_5
                                     58 	.globl _P3_4
                                     59 	.globl _P3_3
                                     60 	.globl _P3_2
                                     61 	.globl _P3_1
                                     62 	.globl _P3_0
                                     63 	.globl _EA
                                     64 	.globl _ET2
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _SM0
                                     79 	.globl _SM1
                                     80 	.globl _SM2
                                     81 	.globl _REN
                                     82 	.globl _TB8
                                     83 	.globl _RB8
                                     84 	.globl _TI
                                     85 	.globl _RI
                                     86 	.globl _T2EX
                                     87 	.globl _T2
                                     88 	.globl _P1_7
                                     89 	.globl _P1_6
                                     90 	.globl _P1_5
                                     91 	.globl _P1_4
                                     92 	.globl _P1_3
                                     93 	.globl _P1_2
                                     94 	.globl _P1_1
                                     95 	.globl _P1_0
                                     96 	.globl _TF1
                                     97 	.globl _TR1
                                     98 	.globl _TF0
                                     99 	.globl _TR0
                                    100 	.globl _IE1
                                    101 	.globl _IT1
                                    102 	.globl _IE0
                                    103 	.globl _IT0
                                    104 	.globl _P0_7
                                    105 	.globl _P0_6
                                    106 	.globl _P0_5
                                    107 	.globl _P0_4
                                    108 	.globl _P0_3
                                    109 	.globl _P0_2
                                    110 	.globl _P0_1
                                    111 	.globl _P0_0
                                    112 	.globl _B
                                    113 	.globl _A
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _TH2
                                    117 	.globl _TL2
                                    118 	.globl _RCAP2H
                                    119 	.globl _RCAP2L
                                    120 	.globl _T2MOD
                                    121 	.globl _T2CON
                                    122 	.globl _IP
                                    123 	.globl _P3
                                    124 	.globl _IE
                                    125 	.globl _P2
                                    126 	.globl _SBUF
                                    127 	.globl _SCON
                                    128 	.globl _P1
                                    129 	.globl _TH1
                                    130 	.globl _TH0
                                    131 	.globl _TL1
                                    132 	.globl _TL0
                                    133 	.globl _TMOD
                                    134 	.globl _TCON
                                    135 	.globl _PCON
                                    136 	.globl _DPH
                                    137 	.globl _DPL
                                    138 	.globl _SP
                                    139 	.globl _P0
                                    140 	.globl _sendTriggerPulse
                                    141 	.globl _measureDistance
                                    142 ;--------------------------------------------------------
                                    143 ; special function registers
                                    144 ;--------------------------------------------------------
                                    145 	.area RSEG    (ABS,DATA)
      000000                        146 	.org 0x0000
                           000080   147 _P0	=	0x0080
                           000081   148 _SP	=	0x0081
                           000082   149 _DPL	=	0x0082
                           000083   150 _DPH	=	0x0083
                           000087   151 _PCON	=	0x0087
                           000088   152 _TCON	=	0x0088
                           000089   153 _TMOD	=	0x0089
                           00008A   154 _TL0	=	0x008a
                           00008B   155 _TL1	=	0x008b
                           00008C   156 _TH0	=	0x008c
                           00008D   157 _TH1	=	0x008d
                           000090   158 _P1	=	0x0090
                           000098   159 _SCON	=	0x0098
                           000099   160 _SBUF	=	0x0099
                           0000A0   161 _P2	=	0x00a0
                           0000A8   162 _IE	=	0x00a8
                           0000B0   163 _P3	=	0x00b0
                           0000B8   164 _IP	=	0x00b8
                           0000C8   165 _T2CON	=	0x00c8
                           0000C9   166 _T2MOD	=	0x00c9
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                           0000D0   171 _PSW	=	0x00d0
                           0000E0   172 _ACC	=	0x00e0
                           0000E0   173 _A	=	0x00e0
                           0000F0   174 _B	=	0x00f0
                                    175 ;--------------------------------------------------------
                                    176 ; special function bits
                                    177 ;--------------------------------------------------------
                                    178 	.area RSEG    (ABS,DATA)
      000000                        179 	.org 0x0000
                           000080   180 _P0_0	=	0x0080
                           000081   181 _P0_1	=	0x0081
                           000082   182 _P0_2	=	0x0082
                           000083   183 _P0_3	=	0x0083
                           000084   184 _P0_4	=	0x0084
                           000085   185 _P0_5	=	0x0085
                           000086   186 _P0_6	=	0x0086
                           000087   187 _P0_7	=	0x0087
                           000088   188 _IT0	=	0x0088
                           000089   189 _IE0	=	0x0089
                           00008A   190 _IT1	=	0x008a
                           00008B   191 _IE1	=	0x008b
                           00008C   192 _TR0	=	0x008c
                           00008D   193 _TF0	=	0x008d
                           00008E   194 _TR1	=	0x008e
                           00008F   195 _TF1	=	0x008f
                           000090   196 _P1_0	=	0x0090
                           000091   197 _P1_1	=	0x0091
                           000092   198 _P1_2	=	0x0092
                           000093   199 _P1_3	=	0x0093
                           000094   200 _P1_4	=	0x0094
                           000095   201 _P1_5	=	0x0095
                           000096   202 _P1_6	=	0x0096
                           000097   203 _P1_7	=	0x0097
                           000090   204 _T2	=	0x0090
                           000091   205 _T2EX	=	0x0091
                           000098   206 _RI	=	0x0098
                           000099   207 _TI	=	0x0099
                           00009A   208 _RB8	=	0x009a
                           00009B   209 _TB8	=	0x009b
                           00009C   210 _REN	=	0x009c
                           00009D   211 _SM2	=	0x009d
                           00009E   212 _SM1	=	0x009e
                           00009F   213 _SM0	=	0x009f
                           0000A0   214 _P2_0	=	0x00a0
                           0000A1   215 _P2_1	=	0x00a1
                           0000A2   216 _P2_2	=	0x00a2
                           0000A3   217 _P2_3	=	0x00a3
                           0000A4   218 _P2_4	=	0x00a4
                           0000A5   219 _P2_5	=	0x00a5
                           0000A6   220 _P2_6	=	0x00a6
                           0000A7   221 _P2_7	=	0x00a7
                           0000A8   222 _EX0	=	0x00a8
                           0000A9   223 _ET0	=	0x00a9
                           0000AA   224 _EX1	=	0x00aa
                           0000AB   225 _ET1	=	0x00ab
                           0000AC   226 _ES	=	0x00ac
                           0000AD   227 _ET2	=	0x00ad
                           0000AF   228 _EA	=	0x00af
                           0000B0   229 _P3_0	=	0x00b0
                           0000B1   230 _P3_1	=	0x00b1
                           0000B2   231 _P3_2	=	0x00b2
                           0000B3   232 _P3_3	=	0x00b3
                           0000B4   233 _P3_4	=	0x00b4
                           0000B5   234 _P3_5	=	0x00b5
                           0000B6   235 _P3_6	=	0x00b6
                           0000B7   236 _P3_7	=	0x00b7
                           0000B0   237 _RXD	=	0x00b0
                           0000B1   238 _TXD	=	0x00b1
                           0000B2   239 _INT0	=	0x00b2
                           0000B3   240 _INT1	=	0x00b3
                           0000B4   241 _T0	=	0x00b4
                           0000B5   242 _T1	=	0x00b5
                           0000B6   243 _WR	=	0x00b6
                           0000B7   244 _RD	=	0x00b7
                           0000B8   245 _PX0	=	0x00b8
                           0000B9   246 _PT0	=	0x00b9
                           0000BA   247 _PX1	=	0x00ba
                           0000BB   248 _PT1	=	0x00bb
                           0000BC   249 _PS	=	0x00bc
                           0000BD   250 _PT2	=	0x00bd
                           0000C8   251 _T2CON_0	=	0x00c8
                           0000C9   252 _T2CON_1	=	0x00c9
                           0000CA   253 _T2CON_2	=	0x00ca
                           0000CB   254 _T2CON_3	=	0x00cb
                           0000CC   255 _T2CON_4	=	0x00cc
                           0000CD   256 _T2CON_5	=	0x00cd
                           0000CE   257 _T2CON_6	=	0x00ce
                           0000CF   258 _T2CON_7	=	0x00cf
                           0000C8   259 _CP_RL2	=	0x00c8
                           0000C9   260 _C_T2	=	0x00c9
                           0000CA   261 _TR2	=	0x00ca
                           0000CB   262 _EXEN2	=	0x00cb
                           0000CC   263 _TCLK	=	0x00cc
                           0000CD   264 _RCLK	=	0x00cd
                           0000CE   265 _EXF2	=	0x00ce
                           0000CF   266 _TF2	=	0x00cf
                           0000D0   267 _P	=	0x00d0
                           0000D1   268 _FL	=	0x00d1
                           0000D2   269 _OV	=	0x00d2
                           0000D3   270 _RS0	=	0x00d3
                           0000D4   271 _RS1	=	0x00d4
                           0000D5   272 _F0	=	0x00d5
                           0000D6   273 _AC	=	0x00d6
                           0000D7   274 _CY	=	0x00d7
                           0000B6   275 _triggerPin	=	0x00b6
                           0000B2   276 _echoPin1	=	0x00b2
                           0000B3   277 _echoPin2	=	0x00b3
                           0000B4   278 _echoPin3	=	0x00b4
                           0000B5   279 _echoPin4	=	0x00b5
                                    280 ;--------------------------------------------------------
                                    281 ; overlayable register banks
                                    282 ;--------------------------------------------------------
                                    283 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        284 	.ds 8
                                    285 ;--------------------------------------------------------
                                    286 ; internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area DSEG    (DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; overlayable items in internal ram 
                                    291 ;--------------------------------------------------------
                                    292 	.area	OSEG    (OVR,DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; indirectly addressable internal ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area ISEG    (DATA)
                                    297 ;--------------------------------------------------------
                                    298 ; absolute internal ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area IABS    (ABS,DATA)
                                    301 	.area IABS    (ABS,DATA)
                                    302 ;--------------------------------------------------------
                                    303 ; bit data
                                    304 ;--------------------------------------------------------
                                    305 	.area BSEG    (BIT)
                                    306 ;--------------------------------------------------------
                                    307 ; paged external ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area PSEG    (PAG,XDATA)
                                    310 ;--------------------------------------------------------
                                    311 ; external ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area XSEG    (XDATA)
                                    314 ;--------------------------------------------------------
                                    315 ; absolute external ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area XABS    (ABS,XDATA)
                                    318 ;--------------------------------------------------------
                                    319 ; external initialized ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area XISEG   (XDATA)
                                    322 	.area HOME    (CODE)
                                    323 	.area GSINIT0 (CODE)
                                    324 	.area GSINIT1 (CODE)
                                    325 	.area GSINIT2 (CODE)
                                    326 	.area GSINIT3 (CODE)
                                    327 	.area GSINIT4 (CODE)
                                    328 	.area GSINIT5 (CODE)
                                    329 	.area GSINIT  (CODE)
                                    330 	.area GSFINAL (CODE)
                                    331 	.area CSEG    (CODE)
                                    332 ;--------------------------------------------------------
                                    333 ; global & static initialisations
                                    334 ;--------------------------------------------------------
                                    335 	.area HOME    (CODE)
                                    336 	.area GSINIT  (CODE)
                                    337 	.area GSFINAL (CODE)
                                    338 	.area GSINIT  (CODE)
                                    339 ;--------------------------------------------------------
                                    340 ; Home
                                    341 ;--------------------------------------------------------
                                    342 	.area HOME    (CODE)
                                    343 	.area HOME    (CODE)
                                    344 ;--------------------------------------------------------
                                    345 ; code
                                    346 ;--------------------------------------------------------
                                    347 	.area CSEG    (CODE)
                                    348 ;------------------------------------------------------------
                                    349 ;Allocation info for local variables in function 'sendTriggerPulse'
                                    350 ;------------------------------------------------------------
                                    351 ;	src/libs/hcsr04.c:3: void sendTriggerPulse(){
                                    352 ;	-----------------------------------------
                                    353 ;	 function sendTriggerPulse
                                    354 ;	-----------------------------------------
      0007C9                        355 _sendTriggerPulse:
                           000007   356 	ar7 = 0x07
                           000006   357 	ar6 = 0x06
                           000005   358 	ar5 = 0x05
                           000004   359 	ar4 = 0x04
                           000003   360 	ar3 = 0x03
                           000002   361 	ar2 = 0x02
                           000001   362 	ar1 = 0x01
                           000000   363 	ar0 = 0x00
                                    364 ;	src/libs/hcsr04.c:4: triggerPin = 1;
                                    365 ;	assignBit
      0007C9 D2 B6            [12]  366 	setb	_triggerPin
                                    367 ;	src/libs/hcsr04.c:5: DELAY_us(10);
      0007CB 90 00 0A         [24]  368 	mov	dptr,#0x000a
      0007CE 12 00 DF         [24]  369 	lcall	_DELAY_us
                                    370 ;	src/libs/hcsr04.c:6: triggerPin = 0;
                                    371 ;	assignBit
      0007D1 C2 B6            [12]  372 	clr	_triggerPin
                                    373 ;	src/libs/hcsr04.c:7: }
      0007D3 22               [24]  374 	ret
                                    375 ;------------------------------------------------------------
                                    376 ;Allocation info for local variables in function 'measureDistance'
                                    377 ;------------------------------------------------------------
                                    378 ;data                      Allocated to registers 
                                    379 ;value                     Allocated to registers 
                                    380 ;------------------------------------------------------------
                                    381 ;	src/libs/hcsr04.c:9: void measureDistance(float data){
                                    382 ;	-----------------------------------------
                                    383 ;	 function measureDistance
                                    384 ;	-----------------------------------------
      0007D4                        385 _measureDistance:
                                    386 ;	src/libs/hcsr04.c:11: while(!echoPin1);
      0007D4                        387 00101$:
      0007D4 30 B2 FD         [24]  388 	jnb	_echoPin1,00101$
                                    389 ;	src/libs/hcsr04.c:12: TR0;
      0007D7 A2 8C            [12]  390 	mov	c,_TR0
                                    391 ;	src/libs/hcsr04.c:13: while(echoPin1 && !TF0);
      0007D9                        392 00105$:
      0007D9 30 B2 03         [24]  393 	jnb	_echoPin1,00107$
      0007DC 30 8D FA         [24]  394 	jnb	_TF0,00105$
      0007DF                        395 00107$:
                                    396 ;	src/libs/hcsr04.c:14: TR0;
      0007DF A2 8C            [12]  397 	mov	c,_TR0
                                    398 ;	src/libs/hcsr04.c:17: data = (TL0|(TH0<<8));
      0007E1 E5 8C            [12]  399 	mov	a,_TH0
      0007E3 E5 8A            [12]  400 	mov	a,_TL0
                                    401 ;	src/libs/hcsr04.c:18: data = (data * value)/2.0;
                                    402 ;	src/libs/hcsr04.c:21: }
      0007E5 22               [24]  403 	ret
                                    404 	.area CSEG    (CODE)
                                    405 	.area CONST   (CODE)
                                    406 	.area XINIT   (CODE)
                                    407 	.area CABS    (ABS,CODE)
