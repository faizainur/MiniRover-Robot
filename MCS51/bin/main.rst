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
                                     12 	.globl _measureDistance
                                     13 	.globl _sendTriggerPulse
                                     14 	.globl _LCDDisplayNumber
                                     15 	.globl _LCDPrintString
                                     16 	.globl _LCDInit
                                     17 	.globl _LCDCmdWrite
                                     18 	.globl _DELAY_ms
                                     19 	.globl _echoPin4
                                     20 	.globl _echoPin3
                                     21 	.globl _echoPin2
                                     22 	.globl _echoPin1
                                     23 	.globl _triggerPin
                                     24 	.globl _EN
                                     25 	.globl _RW
                                     26 	.globl _RS
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _FL
                                     34 	.globl _P
                                     35 	.globl _TF2
                                     36 	.globl _EXF2
                                     37 	.globl _RCLK
                                     38 	.globl _TCLK
                                     39 	.globl _EXEN2
                                     40 	.globl _TR2
                                     41 	.globl _C_T2
                                     42 	.globl _CP_RL2
                                     43 	.globl _T2CON_7
                                     44 	.globl _T2CON_6
                                     45 	.globl _T2CON_5
                                     46 	.globl _T2CON_4
                                     47 	.globl _T2CON_3
                                     48 	.globl _T2CON_2
                                     49 	.globl _T2CON_1
                                     50 	.globl _T2CON_0
                                     51 	.globl _PT2
                                     52 	.globl _PS
                                     53 	.globl _PT1
                                     54 	.globl _PX1
                                     55 	.globl _PT0
                                     56 	.globl _PX0
                                     57 	.globl _RD
                                     58 	.globl _WR
                                     59 	.globl _T1
                                     60 	.globl _T0
                                     61 	.globl _INT1
                                     62 	.globl _INT0
                                     63 	.globl _TXD
                                     64 	.globl _RXD
                                     65 	.globl _P3_7
                                     66 	.globl _P3_6
                                     67 	.globl _P3_5
                                     68 	.globl _P3_4
                                     69 	.globl _P3_3
                                     70 	.globl _P3_2
                                     71 	.globl _P3_1
                                     72 	.globl _P3_0
                                     73 	.globl _EA
                                     74 	.globl _ET2
                                     75 	.globl _ES
                                     76 	.globl _ET1
                                     77 	.globl _EX1
                                     78 	.globl _ET0
                                     79 	.globl _EX0
                                     80 	.globl _P2_7
                                     81 	.globl _P2_6
                                     82 	.globl _P2_5
                                     83 	.globl _P2_4
                                     84 	.globl _P2_3
                                     85 	.globl _P2_2
                                     86 	.globl _P2_1
                                     87 	.globl _P2_0
                                     88 	.globl _SM0
                                     89 	.globl _SM1
                                     90 	.globl _SM2
                                     91 	.globl _REN
                                     92 	.globl _TB8
                                     93 	.globl _RB8
                                     94 	.globl _TI
                                     95 	.globl _RI
                                     96 	.globl _T2EX
                                     97 	.globl _T2
                                     98 	.globl _P1_7
                                     99 	.globl _P1_6
                                    100 	.globl _P1_5
                                    101 	.globl _P1_4
                                    102 	.globl _P1_3
                                    103 	.globl _P1_2
                                    104 	.globl _P1_1
                                    105 	.globl _P1_0
                                    106 	.globl _TF1
                                    107 	.globl _TR1
                                    108 	.globl _TF0
                                    109 	.globl _TR0
                                    110 	.globl _IE1
                                    111 	.globl _IT1
                                    112 	.globl _IE0
                                    113 	.globl _IT0
                                    114 	.globl _P0_7
                                    115 	.globl _P0_6
                                    116 	.globl _P0_5
                                    117 	.globl _P0_4
                                    118 	.globl _P0_3
                                    119 	.globl _P0_2
                                    120 	.globl _P0_1
                                    121 	.globl _P0_0
                                    122 	.globl _B
                                    123 	.globl _A
                                    124 	.globl _ACC
                                    125 	.globl _PSW
                                    126 	.globl _TH2
                                    127 	.globl _TL2
                                    128 	.globl _RCAP2H
                                    129 	.globl _RCAP2L
                                    130 	.globl _T2MOD
                                    131 	.globl _T2CON
                                    132 	.globl _IP
                                    133 	.globl _P3
                                    134 	.globl _IE
                                    135 	.globl _P2
                                    136 	.globl _SBUF
                                    137 	.globl _SCON
                                    138 	.globl _P1
                                    139 	.globl _TH1
                                    140 	.globl _TH0
                                    141 	.globl _TL1
                                    142 	.globl _TL0
                                    143 	.globl _TMOD
                                    144 	.globl _TCON
                                    145 	.globl _PCON
                                    146 	.globl _DPH
                                    147 	.globl _DPL
                                    148 	.globl _SP
                                    149 	.globl _P0
                                    150 	.globl _initPortPin
                                    151 	.globl _welcomeScreen
                                    152 	.globl _toggleLed
                                    153 ;--------------------------------------------------------
                                    154 ; special function registers
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0	=	0x0080
                           000081   159 _SP	=	0x0081
                           000082   160 _DPL	=	0x0082
                           000083   161 _DPH	=	0x0083
                           000087   162 _PCON	=	0x0087
                           000088   163 _TCON	=	0x0088
                           000089   164 _TMOD	=	0x0089
                           00008A   165 _TL0	=	0x008a
                           00008B   166 _TL1	=	0x008b
                           00008C   167 _TH0	=	0x008c
                           00008D   168 _TH1	=	0x008d
                           000090   169 _P1	=	0x0090
                           000098   170 _SCON	=	0x0098
                           000099   171 _SBUF	=	0x0099
                           0000A0   172 _P2	=	0x00a0
                           0000A8   173 _IE	=	0x00a8
                           0000B0   174 _P3	=	0x00b0
                           0000B8   175 _IP	=	0x00b8
                           0000C8   176 _T2CON	=	0x00c8
                           0000C9   177 _T2MOD	=	0x00c9
                           0000CA   178 _RCAP2L	=	0x00ca
                           0000CB   179 _RCAP2H	=	0x00cb
                           0000CC   180 _TL2	=	0x00cc
                           0000CD   181 _TH2	=	0x00cd
                           0000D0   182 _PSW	=	0x00d0
                           0000E0   183 _ACC	=	0x00e0
                           0000E0   184 _A	=	0x00e0
                           0000F0   185 _B	=	0x00f0
                                    186 ;--------------------------------------------------------
                                    187 ; special function bits
                                    188 ;--------------------------------------------------------
                                    189 	.area RSEG    (ABS,DATA)
      000000                        190 	.org 0x0000
                           000080   191 _P0_0	=	0x0080
                           000081   192 _P0_1	=	0x0081
                           000082   193 _P0_2	=	0x0082
                           000083   194 _P0_3	=	0x0083
                           000084   195 _P0_4	=	0x0084
                           000085   196 _P0_5	=	0x0085
                           000086   197 _P0_6	=	0x0086
                           000087   198 _P0_7	=	0x0087
                           000088   199 _IT0	=	0x0088
                           000089   200 _IE0	=	0x0089
                           00008A   201 _IT1	=	0x008a
                           00008B   202 _IE1	=	0x008b
                           00008C   203 _TR0	=	0x008c
                           00008D   204 _TF0	=	0x008d
                           00008E   205 _TR1	=	0x008e
                           00008F   206 _TF1	=	0x008f
                           000090   207 _P1_0	=	0x0090
                           000091   208 _P1_1	=	0x0091
                           000092   209 _P1_2	=	0x0092
                           000093   210 _P1_3	=	0x0093
                           000094   211 _P1_4	=	0x0094
                           000095   212 _P1_5	=	0x0095
                           000096   213 _P1_6	=	0x0096
                           000097   214 _P1_7	=	0x0097
                           000090   215 _T2	=	0x0090
                           000091   216 _T2EX	=	0x0091
                           000098   217 _RI	=	0x0098
                           000099   218 _TI	=	0x0099
                           00009A   219 _RB8	=	0x009a
                           00009B   220 _TB8	=	0x009b
                           00009C   221 _REN	=	0x009c
                           00009D   222 _SM2	=	0x009d
                           00009E   223 _SM1	=	0x009e
                           00009F   224 _SM0	=	0x009f
                           0000A0   225 _P2_0	=	0x00a0
                           0000A1   226 _P2_1	=	0x00a1
                           0000A2   227 _P2_2	=	0x00a2
                           0000A3   228 _P2_3	=	0x00a3
                           0000A4   229 _P2_4	=	0x00a4
                           0000A5   230 _P2_5	=	0x00a5
                           0000A6   231 _P2_6	=	0x00a6
                           0000A7   232 _P2_7	=	0x00a7
                           0000A8   233 _EX0	=	0x00a8
                           0000A9   234 _ET0	=	0x00a9
                           0000AA   235 _EX1	=	0x00aa
                           0000AB   236 _ET1	=	0x00ab
                           0000AC   237 _ES	=	0x00ac
                           0000AD   238 _ET2	=	0x00ad
                           0000AF   239 _EA	=	0x00af
                           0000B0   240 _P3_0	=	0x00b0
                           0000B1   241 _P3_1	=	0x00b1
                           0000B2   242 _P3_2	=	0x00b2
                           0000B3   243 _P3_3	=	0x00b3
                           0000B4   244 _P3_4	=	0x00b4
                           0000B5   245 _P3_5	=	0x00b5
                           0000B6   246 _P3_6	=	0x00b6
                           0000B7   247 _P3_7	=	0x00b7
                           0000B0   248 _RXD	=	0x00b0
                           0000B1   249 _TXD	=	0x00b1
                           0000B2   250 _INT0	=	0x00b2
                           0000B3   251 _INT1	=	0x00b3
                           0000B4   252 _T0	=	0x00b4
                           0000B5   253 _T1	=	0x00b5
                           0000B6   254 _WR	=	0x00b6
                           0000B7   255 _RD	=	0x00b7
                           0000B8   256 _PX0	=	0x00b8
                           0000B9   257 _PT0	=	0x00b9
                           0000BA   258 _PX1	=	0x00ba
                           0000BB   259 _PT1	=	0x00bb
                           0000BC   260 _PS	=	0x00bc
                           0000BD   261 _PT2	=	0x00bd
                           0000C8   262 _T2CON_0	=	0x00c8
                           0000C9   263 _T2CON_1	=	0x00c9
                           0000CA   264 _T2CON_2	=	0x00ca
                           0000CB   265 _T2CON_3	=	0x00cb
                           0000CC   266 _T2CON_4	=	0x00cc
                           0000CD   267 _T2CON_5	=	0x00cd
                           0000CE   268 _T2CON_6	=	0x00ce
                           0000CF   269 _T2CON_7	=	0x00cf
                           0000C8   270 _CP_RL2	=	0x00c8
                           0000C9   271 _C_T2	=	0x00c9
                           0000CA   272 _TR2	=	0x00ca
                           0000CB   273 _EXEN2	=	0x00cb
                           0000CC   274 _TCLK	=	0x00cc
                           0000CD   275 _RCLK	=	0x00cd
                           0000CE   276 _EXF2	=	0x00ce
                           0000CF   277 _TF2	=	0x00cf
                           0000D0   278 _P	=	0x00d0
                           0000D1   279 _FL	=	0x00d1
                           0000D2   280 _OV	=	0x00d2
                           0000D3   281 _RS0	=	0x00d3
                           0000D4   282 _RS1	=	0x00d4
                           0000D5   283 _F0	=	0x00d5
                           0000D6   284 _AC	=	0x00d6
                           0000D7   285 _CY	=	0x00d7
                           0000A0   286 _RS	=	0x00a0
                           0000A1   287 _RW	=	0x00a1
                           0000A2   288 _EN	=	0x00a2
                           0000B6   289 _triggerPin	=	0x00b6
                           0000B2   290 _echoPin1	=	0x00b2
                           0000B3   291 _echoPin2	=	0x00b3
                           0000B4   292 _echoPin3	=	0x00b4
                           0000B5   293 _echoPin4	=	0x00b5
                                    294 ;--------------------------------------------------------
                                    295 ; overlayable register banks
                                    296 ;--------------------------------------------------------
                                    297 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        298 	.ds 8
                                    299 ;--------------------------------------------------------
                                    300 ; internal ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area DSEG    (DATA)
      000008                        303 _main_result_distance_65536_98:
      000008                        304 	.ds 2
                                    305 ;--------------------------------------------------------
                                    306 ; overlayable items in internal ram 
                                    307 ;--------------------------------------------------------
                                    308 ;--------------------------------------------------------
                                    309 ; Stack segment in internal ram 
                                    310 ;--------------------------------------------------------
                                    311 	.area	SSEG
      000058                        312 __start__stack:
      000058                        313 	.ds	1
                                    314 
                                    315 ;--------------------------------------------------------
                                    316 ; indirectly addressable internal ram data
                                    317 ;--------------------------------------------------------
                                    318 	.area ISEG    (DATA)
                                    319 ;--------------------------------------------------------
                                    320 ; absolute internal ram data
                                    321 ;--------------------------------------------------------
                                    322 	.area IABS    (ABS,DATA)
                                    323 	.area IABS    (ABS,DATA)
                                    324 ;--------------------------------------------------------
                                    325 ; bit data
                                    326 ;--------------------------------------------------------
                                    327 	.area BSEG    (BIT)
                                    328 ;--------------------------------------------------------
                                    329 ; paged external ram data
                                    330 ;--------------------------------------------------------
                                    331 	.area PSEG    (PAG,XDATA)
                                    332 ;--------------------------------------------------------
                                    333 ; external ram data
                                    334 ;--------------------------------------------------------
                                    335 	.area XSEG    (XDATA)
                                    336 ;--------------------------------------------------------
                                    337 ; absolute external ram data
                                    338 ;--------------------------------------------------------
                                    339 	.area XABS    (ABS,XDATA)
                                    340 ;--------------------------------------------------------
                                    341 ; external initialized ram data
                                    342 ;--------------------------------------------------------
                                    343 	.area XISEG   (XDATA)
                                    344 	.area HOME    (CODE)
                                    345 	.area GSINIT0 (CODE)
                                    346 	.area GSINIT1 (CODE)
                                    347 	.area GSINIT2 (CODE)
                                    348 	.area GSINIT3 (CODE)
                                    349 	.area GSINIT4 (CODE)
                                    350 	.area GSINIT5 (CODE)
                                    351 	.area GSINIT  (CODE)
                                    352 	.area GSFINAL (CODE)
                                    353 	.area CSEG    (CODE)
                                    354 ;--------------------------------------------------------
                                    355 ; interrupt vector 
                                    356 ;--------------------------------------------------------
                                    357 	.area HOME    (CODE)
      000000                        358 __interrupt_vect:
      000000 02 00 06         [24]  359 	ljmp	__sdcc_gsinit_startup
                                    360 ;--------------------------------------------------------
                                    361 ; global & static initialisations
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area GSINIT  (CODE)
                                    365 	.area GSFINAL (CODE)
                                    366 	.area GSINIT  (CODE)
                                    367 	.globl __sdcc_gsinit_startup
                                    368 	.globl __sdcc_program_startup
                                    369 	.globl __start__stack
                                    370 	.globl __mcs51_genXINIT
                                    371 	.globl __mcs51_genXRAMCLEAR
                                    372 	.globl __mcs51_genRAMCLEAR
                                    373 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  374 	ljmp	__sdcc_program_startup
                                    375 ;--------------------------------------------------------
                                    376 ; Home
                                    377 ;--------------------------------------------------------
                                    378 	.area HOME    (CODE)
                                    379 	.area HOME    (CODE)
      000003                        380 __sdcc_program_startup:
      000003 02 00 62         [24]  381 	ljmp	_main
                                    382 ;	return from main will return to caller
                                    383 ;--------------------------------------------------------
                                    384 ; code
                                    385 ;--------------------------------------------------------
                                    386 	.area CSEG    (CODE)
                                    387 ;------------------------------------------------------------
                                    388 ;Allocation info for local variables in function 'main'
                                    389 ;------------------------------------------------------------
                                    390 ;result_distance           Allocated with name '_main_result_distance_65536_98'
                                    391 ;------------------------------------------------------------
                                    392 ;	src/main.c:13: int main(){
                                    393 ;	-----------------------------------------
                                    394 ;	 function main
                                    395 ;	-----------------------------------------
      000062                        396 _main:
                           000007   397 	ar7 = 0x07
                           000006   398 	ar6 = 0x06
                           000005   399 	ar5 = 0x05
                           000004   400 	ar4 = 0x04
                           000003   401 	ar3 = 0x03
                           000002   402 	ar2 = 0x02
                           000001   403 	ar1 = 0x01
                           000000   404 	ar0 = 0x00
                                    405 ;	src/main.c:17: initPortPin();
      000062 12 00 B2         [24]  406 	lcall	_initPortPin
                                    407 ;	src/main.c:19: LCDInit();
      000065 12 01 0D         [24]  408 	lcall	_LCDInit
                                    409 ;	src/main.c:20: LCDCmdWrite(CURSOR_TO_FIRST_LINE);
      000068 75 82 80         [24]  410 	mov	dpl,#0x80
      00006B 12 01 25         [24]  411 	lcall	_LCDCmdWrite
                                    412 ;	src/main.c:22: welcomeScreen();
      00006E 12 00 B8         [24]  413 	lcall	_welcomeScreen
                                    414 ;	src/main.c:23: DELAY_ms(1000);
      000071 90 03 E8         [24]  415 	mov	dptr,#0x03e8
      000074 12 00 EF         [24]  416 	lcall	_DELAY_ms
                                    417 ;	src/main.c:25: while(1){
      000077                        418 00102$:
                                    419 ;	src/main.c:26: sendTriggerPulse();
      000077 12 09 C6         [24]  420 	lcall	_sendTriggerPulse
                                    421 ;	src/main.c:27: measureDistance(result_distance);
      00007A 85 08 82         [24]  422 	mov	dpl,_main_result_distance_65536_98
      00007D 85 09 83         [24]  423 	mov	dph,(_main_result_distance_65536_98 + 1)
      000080 12 0B 54         [24]  424 	lcall	___uint2fs
      000083 12 09 D1         [24]  425 	lcall	_measureDistance
                                    426 ;	src/main.c:28: LCDCmdWrite(CLEAR_SCREEN);
      000086 75 82 01         [24]  427 	mov	dpl,#0x01
      000089 12 01 25         [24]  428 	lcall	_LCDCmdWrite
                                    429 ;	src/main.c:29: LCDPrintString(FIRST_LINE, "Distance : ");
      00008C 75 0A 83         [24]  430 	mov	_LCDPrintString_PARM_2,#___str_0
      00008F 75 0B 0C         [24]  431 	mov	(_LCDPrintString_PARM_2 + 1),#(___str_0 >> 8)
      000092 75 0C 80         [24]  432 	mov	(_LCDPrintString_PARM_2 + 2),#0x80
      000095 75 82 00         [24]  433 	mov	dpl,#0x00
      000098 12 01 A7         [24]  434 	lcall	_LCDPrintString
                                    435 ;	src/main.c:30: LCDDisplayNumber(SECOND_LINE, result_distance, 10);
      00009B 85 08 0D         [24]  436 	mov	_LCDDisplayNumber_PARM_2,_main_result_distance_65536_98
      00009E 85 09 0E         [24]  437 	mov	(_LCDDisplayNumber_PARM_2 + 1),(_main_result_distance_65536_98 + 1)
      0000A1 75 0F 0A         [24]  438 	mov	_LCDDisplayNumber_PARM_3,#0x0a
      0000A4 75 82 01         [24]  439 	mov	dpl,#0x01
      0000A7 12 02 05         [24]  440 	lcall	_LCDDisplayNumber
                                    441 ;	src/main.c:32: DELAY_ms(500);
      0000AA 90 01 F4         [24]  442 	mov	dptr,#0x01f4
      0000AD 12 00 EF         [24]  443 	lcall	_DELAY_ms
                                    444 ;	src/main.c:34: }
      0000B0 80 C5            [24]  445 	sjmp	00102$
                                    446 ;------------------------------------------------------------
                                    447 ;Allocation info for local variables in function 'initPortPin'
                                    448 ;------------------------------------------------------------
                                    449 ;	src/main.c:36: void initPortPin(){
                                    450 ;	-----------------------------------------
                                    451 ;	 function initPortPin
                                    452 ;	-----------------------------------------
      0000B2                        453 _initPortPin:
                                    454 ;	src/main.c:37: P0_0 = LOW;
                                    455 ;	assignBit
      0000B2 C2 80            [12]  456 	clr	_P0_0
                                    457 ;	src/main.c:38: P2 = 0x00;
      0000B4 75 A0 00         [24]  458 	mov	_P2,#0x00
                                    459 ;	src/main.c:39: }
      0000B7 22               [24]  460 	ret
                                    461 ;------------------------------------------------------------
                                    462 ;Allocation info for local variables in function 'welcomeScreen'
                                    463 ;------------------------------------------------------------
                                    464 ;	src/main.c:41: void welcomeScreen(){
                                    465 ;	-----------------------------------------
                                    466 ;	 function welcomeScreen
                                    467 ;	-----------------------------------------
      0000B8                        468 _welcomeScreen:
                                    469 ;	src/main.c:42: LCDPrintString(FIRST_LINE, "Faiz Ainur Rofiq");
      0000B8 75 0A 8F         [24]  470 	mov	_LCDPrintString_PARM_2,#___str_1
      0000BB 75 0B 0C         [24]  471 	mov	(_LCDPrintString_PARM_2 + 1),#(___str_1 >> 8)
      0000BE 75 0C 80         [24]  472 	mov	(_LCDPrintString_PARM_2 + 2),#0x80
      0000C1 75 82 00         [24]  473 	mov	dpl,#0x00
      0000C4 12 01 A7         [24]  474 	lcall	_LCDPrintString
                                    475 ;	src/main.c:43: LCDPrintString(SECOND_LINE, "Jurnal IT");
      0000C7 75 0A A0         [24]  476 	mov	_LCDPrintString_PARM_2,#___str_2
      0000CA 75 0B 0C         [24]  477 	mov	(_LCDPrintString_PARM_2 + 1),#(___str_2 >> 8)
      0000CD 75 0C 80         [24]  478 	mov	(_LCDPrintString_PARM_2 + 2),#0x80
      0000D0 75 82 01         [24]  479 	mov	dpl,#0x01
                                    480 ;	src/main.c:44: }
      0000D3 02 01 A7         [24]  481 	ljmp	_LCDPrintString
                                    482 ;------------------------------------------------------------
                                    483 ;Allocation info for local variables in function 'toggleLed'
                                    484 ;------------------------------------------------------------
                                    485 ;	src/main.c:46: void toggleLed(){
                                    486 ;	-----------------------------------------
                                    487 ;	 function toggleLed
                                    488 ;	-----------------------------------------
      0000D6                        489 _toggleLed:
                                    490 ;	src/main.c:47: if (!P0_0){
      0000D6 20 80 03         [24]  491 	jb	_P0_0,00102$
                                    492 ;	src/main.c:48: P0_0 = 1;
                                    493 ;	assignBit
      0000D9 D2 80            [12]  494 	setb	_P0_0
      0000DB 22               [24]  495 	ret
      0000DC                        496 00102$:
                                    497 ;	src/main.c:50: P0_0 = 0;
                                    498 ;	assignBit
      0000DC C2 80            [12]  499 	clr	_P0_0
                                    500 ;	src/main.c:52: }
      0000DE 22               [24]  501 	ret
                                    502 	.area CSEG    (CODE)
                                    503 	.area CONST   (CODE)
                                    504 	.area CONST   (CODE)
      000C83                        505 ___str_0:
      000C83 44 69 73 74 61 6E 63   506 	.ascii "Distance : "
             65 20 3A 20
      000C8E 00                     507 	.db 0x00
                                    508 	.area CSEG    (CODE)
                                    509 	.area CONST   (CODE)
      000C8F                        510 ___str_1:
      000C8F 46 61 69 7A 20 41 69   511 	.ascii "Faiz Ainur Rofiq"
             6E 75 72 20 52 6F 66
             69 71
      000C9F 00                     512 	.db 0x00
                                    513 	.area CSEG    (CODE)
                                    514 	.area CONST   (CODE)
      000CA0                        515 ___str_2:
      000CA0 4A 75 72 6E 61 6C 20   516 	.ascii "Jurnal IT"
             49 54
      000CA9 00                     517 	.db 0x00
                                    518 	.area CSEG    (CODE)
                                    519 	.area XINIT   (CODE)
                                    520 	.area CABS    (ABS,CODE)
