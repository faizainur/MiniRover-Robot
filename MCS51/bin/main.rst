                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.9.0 #11195 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _rx_string
                                     13 	.globl _serial_begin
                                     14 	.globl _LCDPrintString
                                     15 	.globl _LCDInit
                                     16 	.globl _LCDCmdWrite
                                     17 	.globl _DELAY_ms
                                     18 	.globl _echoPin4
                                     19 	.globl _echoPin3
                                     20 	.globl _echoPin2
                                     21 	.globl _echoPin1
                                     22 	.globl _triggerPin
                                     23 	.globl _EN
                                     24 	.globl _RW
                                     25 	.globl _RS
                                     26 	.globl _CY
                                     27 	.globl _AC
                                     28 	.globl _F0
                                     29 	.globl _RS1
                                     30 	.globl _RS0
                                     31 	.globl _OV
                                     32 	.globl _FL
                                     33 	.globl _P
                                     34 	.globl _TF2
                                     35 	.globl _EXF2
                                     36 	.globl _RCLK
                                     37 	.globl _TCLK
                                     38 	.globl _EXEN2
                                     39 	.globl _TR2
                                     40 	.globl _C_T2
                                     41 	.globl _CP_RL2
                                     42 	.globl _T2CON_7
                                     43 	.globl _T2CON_6
                                     44 	.globl _T2CON_5
                                     45 	.globl _T2CON_4
                                     46 	.globl _T2CON_3
                                     47 	.globl _T2CON_2
                                     48 	.globl _T2CON_1
                                     49 	.globl _T2CON_0
                                     50 	.globl _PT2
                                     51 	.globl _PS
                                     52 	.globl _PT1
                                     53 	.globl _PX1
                                     54 	.globl _PT0
                                     55 	.globl _PX0
                                     56 	.globl _RD
                                     57 	.globl _WR
                                     58 	.globl _T1
                                     59 	.globl _T0
                                     60 	.globl _INT1
                                     61 	.globl _INT0
                                     62 	.globl _TXD
                                     63 	.globl _RXD
                                     64 	.globl _P3_7
                                     65 	.globl _P3_6
                                     66 	.globl _P3_5
                                     67 	.globl _P3_4
                                     68 	.globl _P3_3
                                     69 	.globl _P3_2
                                     70 	.globl _P3_1
                                     71 	.globl _P3_0
                                     72 	.globl _EA
                                     73 	.globl _ET2
                                     74 	.globl _ES
                                     75 	.globl _ET1
                                     76 	.globl _EX1
                                     77 	.globl _ET0
                                     78 	.globl _EX0
                                     79 	.globl _P2_7
                                     80 	.globl _P2_6
                                     81 	.globl _P2_5
                                     82 	.globl _P2_4
                                     83 	.globl _P2_3
                                     84 	.globl _P2_2
                                     85 	.globl _P2_1
                                     86 	.globl _P2_0
                                     87 	.globl _SM0
                                     88 	.globl _SM1
                                     89 	.globl _SM2
                                     90 	.globl _REN
                                     91 	.globl _TB8
                                     92 	.globl _RB8
                                     93 	.globl _TI
                                     94 	.globl _RI
                                     95 	.globl _T2EX
                                     96 	.globl _T2
                                     97 	.globl _P1_7
                                     98 	.globl _P1_6
                                     99 	.globl _P1_5
                                    100 	.globl _P1_4
                                    101 	.globl _P1_3
                                    102 	.globl _P1_2
                                    103 	.globl _P1_1
                                    104 	.globl _P1_0
                                    105 	.globl _TF1
                                    106 	.globl _TR1
                                    107 	.globl _TF0
                                    108 	.globl _TR0
                                    109 	.globl _IE1
                                    110 	.globl _IT1
                                    111 	.globl _IE0
                                    112 	.globl _IT0
                                    113 	.globl _P0_7
                                    114 	.globl _P0_6
                                    115 	.globl _P0_5
                                    116 	.globl _P0_4
                                    117 	.globl _P0_3
                                    118 	.globl _P0_2
                                    119 	.globl _P0_1
                                    120 	.globl _P0_0
                                    121 	.globl _B
                                    122 	.globl _A
                                    123 	.globl _ACC
                                    124 	.globl _PSW
                                    125 	.globl _TH2
                                    126 	.globl _TL2
                                    127 	.globl _RCAP2H
                                    128 	.globl _RCAP2L
                                    129 	.globl _T2MOD
                                    130 	.globl _T2CON
                                    131 	.globl _IP
                                    132 	.globl _P3
                                    133 	.globl _IE
                                    134 	.globl _P2
                                    135 	.globl _SBUF
                                    136 	.globl _SCON
                                    137 	.globl _P1
                                    138 	.globl _TH1
                                    139 	.globl _TH0
                                    140 	.globl _TL1
                                    141 	.globl _TL0
                                    142 	.globl _TMOD
                                    143 	.globl _TCON
                                    144 	.globl _PCON
                                    145 	.globl _DPH
                                    146 	.globl _DPL
                                    147 	.globl _SP
                                    148 	.globl _P0
                                    149 	.globl _initPortPin
                                    150 	.globl _welcomeScreen
                                    151 	.globl _toggleLed
                                    152 ;--------------------------------------------------------
                                    153 ; special function registers
                                    154 ;--------------------------------------------------------
                                    155 	.area RSEG    (ABS,DATA)
      000000                        156 	.org 0x0000
                           000080   157 _P0	=	0x0080
                           000081   158 _SP	=	0x0081
                           000082   159 _DPL	=	0x0082
                           000083   160 _DPH	=	0x0083
                           000087   161 _PCON	=	0x0087
                           000088   162 _TCON	=	0x0088
                           000089   163 _TMOD	=	0x0089
                           00008A   164 _TL0	=	0x008a
                           00008B   165 _TL1	=	0x008b
                           00008C   166 _TH0	=	0x008c
                           00008D   167 _TH1	=	0x008d
                           000090   168 _P1	=	0x0090
                           000098   169 _SCON	=	0x0098
                           000099   170 _SBUF	=	0x0099
                           0000A0   171 _P2	=	0x00a0
                           0000A8   172 _IE	=	0x00a8
                           0000B0   173 _P3	=	0x00b0
                           0000B8   174 _IP	=	0x00b8
                           0000C8   175 _T2CON	=	0x00c8
                           0000C9   176 _T2MOD	=	0x00c9
                           0000CA   177 _RCAP2L	=	0x00ca
                           0000CB   178 _RCAP2H	=	0x00cb
                           0000CC   179 _TL2	=	0x00cc
                           0000CD   180 _TH2	=	0x00cd
                           0000D0   181 _PSW	=	0x00d0
                           0000E0   182 _ACC	=	0x00e0
                           0000E0   183 _A	=	0x00e0
                           0000F0   184 _B	=	0x00f0
                                    185 ;--------------------------------------------------------
                                    186 ; special function bits
                                    187 ;--------------------------------------------------------
                                    188 	.area RSEG    (ABS,DATA)
      000000                        189 	.org 0x0000
                           000080   190 _P0_0	=	0x0080
                           000081   191 _P0_1	=	0x0081
                           000082   192 _P0_2	=	0x0082
                           000083   193 _P0_3	=	0x0083
                           000084   194 _P0_4	=	0x0084
                           000085   195 _P0_5	=	0x0085
                           000086   196 _P0_6	=	0x0086
                           000087   197 _P0_7	=	0x0087
                           000088   198 _IT0	=	0x0088
                           000089   199 _IE0	=	0x0089
                           00008A   200 _IT1	=	0x008a
                           00008B   201 _IE1	=	0x008b
                           00008C   202 _TR0	=	0x008c
                           00008D   203 _TF0	=	0x008d
                           00008E   204 _TR1	=	0x008e
                           00008F   205 _TF1	=	0x008f
                           000090   206 _P1_0	=	0x0090
                           000091   207 _P1_1	=	0x0091
                           000092   208 _P1_2	=	0x0092
                           000093   209 _P1_3	=	0x0093
                           000094   210 _P1_4	=	0x0094
                           000095   211 _P1_5	=	0x0095
                           000096   212 _P1_6	=	0x0096
                           000097   213 _P1_7	=	0x0097
                           000090   214 _T2	=	0x0090
                           000091   215 _T2EX	=	0x0091
                           000098   216 _RI	=	0x0098
                           000099   217 _TI	=	0x0099
                           00009A   218 _RB8	=	0x009a
                           00009B   219 _TB8	=	0x009b
                           00009C   220 _REN	=	0x009c
                           00009D   221 _SM2	=	0x009d
                           00009E   222 _SM1	=	0x009e
                           00009F   223 _SM0	=	0x009f
                           0000A0   224 _P2_0	=	0x00a0
                           0000A1   225 _P2_1	=	0x00a1
                           0000A2   226 _P2_2	=	0x00a2
                           0000A3   227 _P2_3	=	0x00a3
                           0000A4   228 _P2_4	=	0x00a4
                           0000A5   229 _P2_5	=	0x00a5
                           0000A6   230 _P2_6	=	0x00a6
                           0000A7   231 _P2_7	=	0x00a7
                           0000A8   232 _EX0	=	0x00a8
                           0000A9   233 _ET0	=	0x00a9
                           0000AA   234 _EX1	=	0x00aa
                           0000AB   235 _ET1	=	0x00ab
                           0000AC   236 _ES	=	0x00ac
                           0000AD   237 _ET2	=	0x00ad
                           0000AF   238 _EA	=	0x00af
                           0000B0   239 _P3_0	=	0x00b0
                           0000B1   240 _P3_1	=	0x00b1
                           0000B2   241 _P3_2	=	0x00b2
                           0000B3   242 _P3_3	=	0x00b3
                           0000B4   243 _P3_4	=	0x00b4
                           0000B5   244 _P3_5	=	0x00b5
                           0000B6   245 _P3_6	=	0x00b6
                           0000B7   246 _P3_7	=	0x00b7
                           0000B0   247 _RXD	=	0x00b0
                           0000B1   248 _TXD	=	0x00b1
                           0000B2   249 _INT0	=	0x00b2
                           0000B3   250 _INT1	=	0x00b3
                           0000B4   251 _T0	=	0x00b4
                           0000B5   252 _T1	=	0x00b5
                           0000B6   253 _WR	=	0x00b6
                           0000B7   254 _RD	=	0x00b7
                           0000B8   255 _PX0	=	0x00b8
                           0000B9   256 _PT0	=	0x00b9
                           0000BA   257 _PX1	=	0x00ba
                           0000BB   258 _PT1	=	0x00bb
                           0000BC   259 _PS	=	0x00bc
                           0000BD   260 _PT2	=	0x00bd
                           0000C8   261 _T2CON_0	=	0x00c8
                           0000C9   262 _T2CON_1	=	0x00c9
                           0000CA   263 _T2CON_2	=	0x00ca
                           0000CB   264 _T2CON_3	=	0x00cb
                           0000CC   265 _T2CON_4	=	0x00cc
                           0000CD   266 _T2CON_5	=	0x00cd
                           0000CE   267 _T2CON_6	=	0x00ce
                           0000CF   268 _T2CON_7	=	0x00cf
                           0000C8   269 _CP_RL2	=	0x00c8
                           0000C9   270 _C_T2	=	0x00c9
                           0000CA   271 _TR2	=	0x00ca
                           0000CB   272 _EXEN2	=	0x00cb
                           0000CC   273 _TCLK	=	0x00cc
                           0000CD   274 _RCLK	=	0x00cd
                           0000CE   275 _EXF2	=	0x00ce
                           0000CF   276 _TF2	=	0x00cf
                           0000D0   277 _P	=	0x00d0
                           0000D1   278 _FL	=	0x00d1
                           0000D2   279 _OV	=	0x00d2
                           0000D3   280 _RS0	=	0x00d3
                           0000D4   281 _RS1	=	0x00d4
                           0000D5   282 _F0	=	0x00d5
                           0000D6   283 _AC	=	0x00d6
                           0000D7   284 _CY	=	0x00d7
                           0000A0   285 _RS	=	0x00a0
                           0000A1   286 _RW	=	0x00a1
                           0000A2   287 _EN	=	0x00a2
                           0000B6   288 _triggerPin	=	0x00b6
                           0000B2   289 _echoPin1	=	0x00b2
                           0000B3   290 _echoPin2	=	0x00b3
                           0000B4   291 _echoPin3	=	0x00b4
                           0000B5   292 _echoPin4	=	0x00b5
                                    293 ;--------------------------------------------------------
                                    294 ; overlayable register banks
                                    295 ;--------------------------------------------------------
                                    296 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        297 	.ds 8
                                    298 ;--------------------------------------------------------
                                    299 ; internal ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area DSEG    (DATA)
      000008                        302 _main_result_distance_65536_103:
      000008                        303 	.ds 2
      00000A                        304 _main_buff_65537_104:
      00000A                        305 	.ds 16
                                    306 ;--------------------------------------------------------
                                    307 ; overlayable items in internal ram 
                                    308 ;--------------------------------------------------------
                                    309 ;--------------------------------------------------------
                                    310 ; Stack segment in internal ram 
                                    311 ;--------------------------------------------------------
                                    312 	.area	SSEG
      000055                        313 __start__stack:
      000055                        314 	.ds	1
                                    315 
                                    316 ;--------------------------------------------------------
                                    317 ; indirectly addressable internal ram data
                                    318 ;--------------------------------------------------------
                                    319 	.area ISEG    (DATA)
                                    320 ;--------------------------------------------------------
                                    321 ; absolute internal ram data
                                    322 ;--------------------------------------------------------
                                    323 	.area IABS    (ABS,DATA)
                                    324 	.area IABS    (ABS,DATA)
                                    325 ;--------------------------------------------------------
                                    326 ; bit data
                                    327 ;--------------------------------------------------------
                                    328 	.area BSEG    (BIT)
                                    329 ;--------------------------------------------------------
                                    330 ; paged external ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area PSEG    (PAG,XDATA)
                                    333 ;--------------------------------------------------------
                                    334 ; external ram data
                                    335 ;--------------------------------------------------------
                                    336 	.area XSEG    (XDATA)
                                    337 ;--------------------------------------------------------
                                    338 ; absolute external ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area XABS    (ABS,XDATA)
                                    341 ;--------------------------------------------------------
                                    342 ; external initialized ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area XISEG   (XDATA)
                                    345 	.area HOME    (CODE)
                                    346 	.area GSINIT0 (CODE)
                                    347 	.area GSINIT1 (CODE)
                                    348 	.area GSINIT2 (CODE)
                                    349 	.area GSINIT3 (CODE)
                                    350 	.area GSINIT4 (CODE)
                                    351 	.area GSINIT5 (CODE)
                                    352 	.area GSINIT  (CODE)
                                    353 	.area GSFINAL (CODE)
                                    354 	.area CSEG    (CODE)
                                    355 ;--------------------------------------------------------
                                    356 ; interrupt vector 
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
      000000                        359 __interrupt_vect:
      000000 02 00 06         [24]  360 	ljmp	__sdcc_gsinit_startup
                                    361 ;--------------------------------------------------------
                                    362 ; global & static initialisations
                                    363 ;--------------------------------------------------------
                                    364 	.area HOME    (CODE)
                                    365 	.area GSINIT  (CODE)
                                    366 	.area GSFINAL (CODE)
                                    367 	.area GSINIT  (CODE)
                                    368 	.globl __sdcc_gsinit_startup
                                    369 	.globl __sdcc_program_startup
                                    370 	.globl __start__stack
                                    371 	.globl __mcs51_genXINIT
                                    372 	.globl __mcs51_genXRAMCLEAR
                                    373 	.globl __mcs51_genRAMCLEAR
                                    374 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  375 	ljmp	__sdcc_program_startup
                                    376 ;--------------------------------------------------------
                                    377 ; Home
                                    378 ;--------------------------------------------------------
                                    379 	.area HOME    (CODE)
                                    380 	.area HOME    (CODE)
      000003                        381 __sdcc_program_startup:
      000003 02 00 62         [24]  382 	ljmp	_main
                                    383 ;	return from main will return to caller
                                    384 ;--------------------------------------------------------
                                    385 ; code
                                    386 ;--------------------------------------------------------
                                    387 	.area CSEG    (CODE)
                                    388 ;------------------------------------------------------------
                                    389 ;Allocation info for local variables in function 'main'
                                    390 ;------------------------------------------------------------
                                    391 ;result_distance           Allocated with name '_main_result_distance_65536_103'
                                    392 ;buff                      Allocated with name '_main_buff_65537_104'
                                    393 ;------------------------------------------------------------
                                    394 ;	src/main.c:13: int main(){
                                    395 ;	-----------------------------------------
                                    396 ;	 function main
                                    397 ;	-----------------------------------------
      000062                        398 _main:
                           000007   399 	ar7 = 0x07
                           000006   400 	ar6 = 0x06
                           000005   401 	ar5 = 0x05
                           000004   402 	ar4 = 0x04
                           000003   403 	ar3 = 0x03
                           000002   404 	ar2 = 0x02
                           000001   405 	ar1 = 0x01
                           000000   406 	ar0 = 0x00
                                    407 ;	src/main.c:17: initPortPin();
      000062 12 00 B9         [24]  408 	lcall	_initPortPin
                                    409 ;	src/main.c:19: serial_begin(9600);
      000065 90 25 80         [24]  410 	mov	dptr,#0x2580
      000068 E4               [12]  411 	clr	a
      000069 F5 F0            [12]  412 	mov	b,a
      00006B 12 02 38         [24]  413 	lcall	_serial_begin
                                    414 ;	src/main.c:22: LCDInit();
      00006E 12 01 14         [24]  415 	lcall	_LCDInit
                                    416 ;	src/main.c:23: LCDCmdWrite(CURSOR_TO_FIRST_LINE);
      000071 75 82 80         [24]  417 	mov	dpl,#0x80
      000074 12 01 2C         [24]  418 	lcall	_LCDCmdWrite
                                    419 ;	src/main.c:25: welcomeScreen();
      000077 12 00 BF         [24]  420 	lcall	_welcomeScreen
                                    421 ;	src/main.c:26: DELAY_ms(1000);
      00007A 90 03 E8         [24]  422 	mov	dptr,#0x03e8
      00007D 12 00 F6         [24]  423 	lcall	_DELAY_ms
                                    424 ;	src/main.c:27: LCDCmdWrite(CLEAR_SCREEN);
      000080 75 82 01         [24]  425 	mov	dpl,#0x01
      000083 12 01 2C         [24]  426 	lcall	_LCDCmdWrite
                                    427 ;	src/main.c:28: LCDPrintString(FIRST_LINE, "Received : ");
      000086 75 1A 38         [24]  428 	mov	_LCDPrintString_PARM_2,#___str_0
      000089 75 1B 06         [24]  429 	mov	(_LCDPrintString_PARM_2 + 1),#(___str_0 >> 8)
      00008C 75 1C 80         [24]  430 	mov	(_LCDPrintString_PARM_2 + 2),#0x80
      00008F 75 82 00         [24]  431 	mov	dpl,#0x00
      000092 12 01 AE         [24]  432 	lcall	_LCDPrintString
                                    433 ;	src/main.c:31: while(1){
      000095                        434 00105$:
                                    435 ;	src/main.c:36: rx_string(buff);
      000095 90 00 0A         [24]  436 	mov	dptr,#_main_buff_65537_104
      000098 75 F0 40         [24]  437 	mov	b,#0x40
      00009B 12 02 B8         [24]  438 	lcall	_rx_string
                                    439 ;	src/main.c:37: if (buff != NULL){
      00009E 74 0A            [12]  440 	mov	a,#_main_buff_65537_104
      0000A0 60 13            [24]  441 	jz	00102$
                                    442 ;	src/main.c:38: LCDPrintString(SECOND_LINE, buff);
      0000A2 75 1A 0A         [24]  443 	mov	_LCDPrintString_PARM_2,#_main_buff_65537_104
      0000A5 75 1B 00         [24]  444 	mov	(_LCDPrintString_PARM_2 + 1),#0x00
      0000A8 75 1C 40         [24]  445 	mov	(_LCDPrintString_PARM_2 + 2),#0x40
      0000AB 75 82 01         [24]  446 	mov	dpl,#0x01
      0000AE 12 01 AE         [24]  447 	lcall	_LCDPrintString
                                    448 ;	src/main.c:39: P0_0 = 1;
                                    449 ;	assignBit
      0000B1 D2 80            [12]  450 	setb	_P0_0
      0000B3 80 E0            [24]  451 	sjmp	00105$
      0000B5                        452 00102$:
                                    453 ;	src/main.c:41: P0_0 = 0;
                                    454 ;	assignBit
      0000B5 C2 80            [12]  455 	clr	_P0_0
                                    456 ;	src/main.c:45: }
      0000B7 80 DC            [24]  457 	sjmp	00105$
                                    458 ;------------------------------------------------------------
                                    459 ;Allocation info for local variables in function 'initPortPin'
                                    460 ;------------------------------------------------------------
                                    461 ;	src/main.c:47: void initPortPin(){
                                    462 ;	-----------------------------------------
                                    463 ;	 function initPortPin
                                    464 ;	-----------------------------------------
      0000B9                        465 _initPortPin:
                                    466 ;	src/main.c:48: P0_0 = LOW;
                                    467 ;	assignBit
      0000B9 C2 80            [12]  468 	clr	_P0_0
                                    469 ;	src/main.c:49: P2 = 0x00;
      0000BB 75 A0 00         [24]  470 	mov	_P2,#0x00
                                    471 ;	src/main.c:50: }
      0000BE 22               [24]  472 	ret
                                    473 ;------------------------------------------------------------
                                    474 ;Allocation info for local variables in function 'welcomeScreen'
                                    475 ;------------------------------------------------------------
                                    476 ;	src/main.c:52: void welcomeScreen(){
                                    477 ;	-----------------------------------------
                                    478 ;	 function welcomeScreen
                                    479 ;	-----------------------------------------
      0000BF                        480 _welcomeScreen:
                                    481 ;	src/main.c:53: LCDPrintString(FIRST_LINE, "Faiz Ainur Rofiq");
      0000BF 75 1A 44         [24]  482 	mov	_LCDPrintString_PARM_2,#___str_1
      0000C2 75 1B 06         [24]  483 	mov	(_LCDPrintString_PARM_2 + 1),#(___str_1 >> 8)
      0000C5 75 1C 80         [24]  484 	mov	(_LCDPrintString_PARM_2 + 2),#0x80
      0000C8 75 82 00         [24]  485 	mov	dpl,#0x00
      0000CB 12 01 AE         [24]  486 	lcall	_LCDPrintString
                                    487 ;	src/main.c:54: LCDPrintString(SECOND_LINE, "Jurnal IT");
      0000CE 75 1A 55         [24]  488 	mov	_LCDPrintString_PARM_2,#___str_2
      0000D1 75 1B 06         [24]  489 	mov	(_LCDPrintString_PARM_2 + 1),#(___str_2 >> 8)
      0000D4 75 1C 80         [24]  490 	mov	(_LCDPrintString_PARM_2 + 2),#0x80
      0000D7 75 82 01         [24]  491 	mov	dpl,#0x01
                                    492 ;	src/main.c:55: }
      0000DA 02 01 AE         [24]  493 	ljmp	_LCDPrintString
                                    494 ;------------------------------------------------------------
                                    495 ;Allocation info for local variables in function 'toggleLed'
                                    496 ;------------------------------------------------------------
                                    497 ;	src/main.c:57: void toggleLed(){
                                    498 ;	-----------------------------------------
                                    499 ;	 function toggleLed
                                    500 ;	-----------------------------------------
      0000DD                        501 _toggleLed:
                                    502 ;	src/main.c:58: if (!P0_0){
      0000DD 20 80 03         [24]  503 	jb	_P0_0,00102$
                                    504 ;	src/main.c:59: P0_0 = 1;
                                    505 ;	assignBit
      0000E0 D2 80            [12]  506 	setb	_P0_0
      0000E2 22               [24]  507 	ret
      0000E3                        508 00102$:
                                    509 ;	src/main.c:61: P0_0 = 0;
                                    510 ;	assignBit
      0000E3 C2 80            [12]  511 	clr	_P0_0
                                    512 ;	src/main.c:63: }
      0000E5 22               [24]  513 	ret
                                    514 	.area CSEG    (CODE)
                                    515 	.area CONST   (CODE)
                                    516 	.area CONST   (CODE)
      000638                        517 ___str_0:
      000638 52 65 63 65 69 76 65   518 	.ascii "Received : "
             64 20 3A 20
      000643 00                     519 	.db 0x00
                                    520 	.area CSEG    (CODE)
                                    521 	.area CONST   (CODE)
      000644                        522 ___str_1:
      000644 46 61 69 7A 20 41 69   523 	.ascii "Faiz Ainur Rofiq"
             6E 75 72 20 52 6F 66
             69 71
      000654 00                     524 	.db 0x00
                                    525 	.area CSEG    (CODE)
                                    526 	.area CONST   (CODE)
      000655                        527 ___str_2:
      000655 4A 75 72 6E 61 6C 20   528 	.ascii "Jurnal IT"
             49 54
      00065E 00                     529 	.db 0x00
                                    530 	.area CSEG    (CODE)
                                    531 	.area XINIT   (CODE)
                                    532 	.area CABS    (ABS,CODE)
