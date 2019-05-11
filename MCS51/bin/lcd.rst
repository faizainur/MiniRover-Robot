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
                                     11 	.globl _pinSetup_PARM_2
                                     12 	.globl _LCDSetup_PARM_3
                                     13 	.globl _LCDSetup_PARM_2
                                     14 	.globl _DELAY_us
                                     15 	.globl _EN
                                     16 	.globl _RW
                                     17 	.globl _RS
                                     18 	.globl _EN_P3
                                     19 	.globl _RW_P3
                                     20 	.globl _RS_P3
                                     21 	.globl _EN_P2
                                     22 	.globl _RW_P2
                                     23 	.globl _RS_P2
                                     24 	.globl _EN_P1
                                     25 	.globl _RW_P1
                                     26 	.globl _RS_P1
                                     27 	.globl _EN_P0
                                     28 	.globl _RW_P0
                                     29 	.globl _RS_P0
                                     30 	.globl _P_NC
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _FL
                                     38 	.globl _P
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
                                     61 	.globl _ES
                                     62 	.globl _ET1
                                     63 	.globl _EX1
                                     64 	.globl _ET0
                                     65 	.globl _EX0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _SM0
                                     75 	.globl _SM1
                                     76 	.globl _SM2
                                     77 	.globl _REN
                                     78 	.globl _TB8
                                     79 	.globl _RB8
                                     80 	.globl _TI
                                     81 	.globl _RI
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
                                    110 	.globl _IP
                                    111 	.globl _P3
                                    112 	.globl _IE
                                    113 	.globl _P2
                                    114 	.globl _SBUF
                                    115 	.globl _SCON
                                    116 	.globl _P1
                                    117 	.globl _TH1
                                    118 	.globl _TH0
                                    119 	.globl _TL1
                                    120 	.globl _TL0
                                    121 	.globl _TMOD
                                    122 	.globl _TCON
                                    123 	.globl _PCON
                                    124 	.globl _DPH
                                    125 	.globl _DPL
                                    126 	.globl _SP
                                    127 	.globl _P0
                                    128 	.globl _printString_PARM_2
                                    129 	.globl ___config
                                    130 	.globl _LCDLineAddress
                                    131 	.globl _LCDSetup
                                    132 	.globl _pinSetup
                                    133 	.globl _LCDInit
                                    134 	.globl _LCDCmdWrite
                                    135 	.globl _LCDDataWrite
                                    136 	.globl _printString
                                    137 ;--------------------------------------------------------
                                    138 ; special function registers
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0	=	0x0080
                           000081   143 _SP	=	0x0081
                           000082   144 _DPL	=	0x0082
                           000083   145 _DPH	=	0x0083
                           000087   146 _PCON	=	0x0087
                           000088   147 _TCON	=	0x0088
                           000089   148 _TMOD	=	0x0089
                           00008A   149 _TL0	=	0x008a
                           00008B   150 _TL1	=	0x008b
                           00008C   151 _TH0	=	0x008c
                           00008D   152 _TH1	=	0x008d
                           000090   153 _P1	=	0x0090
                           000098   154 _SCON	=	0x0098
                           000099   155 _SBUF	=	0x0099
                           0000A0   156 _P2	=	0x00a0
                           0000A8   157 _IE	=	0x00a8
                           0000B0   158 _P3	=	0x00b0
                           0000B8   159 _IP	=	0x00b8
                           0000D0   160 _PSW	=	0x00d0
                           0000E0   161 _ACC	=	0x00e0
                           0000E0   162 _A	=	0x00e0
                           0000F0   163 _B	=	0x00f0
                                    164 ;--------------------------------------------------------
                                    165 ; special function bits
                                    166 ;--------------------------------------------------------
                                    167 	.area RSEG    (ABS,DATA)
      000000                        168 	.org 0x0000
                           000080   169 _P0_0	=	0x0080
                           000081   170 _P0_1	=	0x0081
                           000082   171 _P0_2	=	0x0082
                           000083   172 _P0_3	=	0x0083
                           000084   173 _P0_4	=	0x0084
                           000085   174 _P0_5	=	0x0085
                           000086   175 _P0_6	=	0x0086
                           000087   176 _P0_7	=	0x0087
                           000088   177 _IT0	=	0x0088
                           000089   178 _IE0	=	0x0089
                           00008A   179 _IT1	=	0x008a
                           00008B   180 _IE1	=	0x008b
                           00008C   181 _TR0	=	0x008c
                           00008D   182 _TF0	=	0x008d
                           00008E   183 _TR1	=	0x008e
                           00008F   184 _TF1	=	0x008f
                           000090   185 _P1_0	=	0x0090
                           000091   186 _P1_1	=	0x0091
                           000092   187 _P1_2	=	0x0092
                           000093   188 _P1_3	=	0x0093
                           000094   189 _P1_4	=	0x0094
                           000095   190 _P1_5	=	0x0095
                           000096   191 _P1_6	=	0x0096
                           000097   192 _P1_7	=	0x0097
                           000098   193 _RI	=	0x0098
                           000099   194 _TI	=	0x0099
                           00009A   195 _RB8	=	0x009a
                           00009B   196 _TB8	=	0x009b
                           00009C   197 _REN	=	0x009c
                           00009D   198 _SM2	=	0x009d
                           00009E   199 _SM1	=	0x009e
                           00009F   200 _SM0	=	0x009f
                           0000A0   201 _P2_0	=	0x00a0
                           0000A1   202 _P2_1	=	0x00a1
                           0000A2   203 _P2_2	=	0x00a2
                           0000A3   204 _P2_3	=	0x00a3
                           0000A4   205 _P2_4	=	0x00a4
                           0000A5   206 _P2_5	=	0x00a5
                           0000A6   207 _P2_6	=	0x00a6
                           0000A7   208 _P2_7	=	0x00a7
                           0000A8   209 _EX0	=	0x00a8
                           0000A9   210 _ET0	=	0x00a9
                           0000AA   211 _EX1	=	0x00aa
                           0000AB   212 _ET1	=	0x00ab
                           0000AC   213 _ES	=	0x00ac
                           0000AF   214 _EA	=	0x00af
                           0000B0   215 _P3_0	=	0x00b0
                           0000B1   216 _P3_1	=	0x00b1
                           0000B2   217 _P3_2	=	0x00b2
                           0000B3   218 _P3_3	=	0x00b3
                           0000B4   219 _P3_4	=	0x00b4
                           0000B5   220 _P3_5	=	0x00b5
                           0000B6   221 _P3_6	=	0x00b6
                           0000B7   222 _P3_7	=	0x00b7
                           0000B0   223 _RXD	=	0x00b0
                           0000B1   224 _TXD	=	0x00b1
                           0000B2   225 _INT0	=	0x00b2
                           0000B3   226 _INT1	=	0x00b3
                           0000B4   227 _T0	=	0x00b4
                           0000B5   228 _T1	=	0x00b5
                           0000B6   229 _WR	=	0x00b6
                           0000B7   230 _RD	=	0x00b7
                           0000B8   231 _PX0	=	0x00b8
                           0000B9   232 _PT0	=	0x00b9
                           0000BA   233 _PX1	=	0x00ba
                           0000BB   234 _PT1	=	0x00bb
                           0000BC   235 _PS	=	0x00bc
                           0000D0   236 _P	=	0x00d0
                           0000D1   237 _FL	=	0x00d1
                           0000D2   238 _OV	=	0x00d2
                           0000D3   239 _RS0	=	0x00d3
                           0000D4   240 _RS1	=	0x00d4
                           0000D5   241 _F0	=	0x00d5
                           0000D6   242 _AC	=	0x00d6
                           0000D7   243 _CY	=	0x00d7
                           0000FF   244 _P_NC	=	0x00ff
                           000080   245 _RS_P0	=	0x0080
                           000081   246 _RW_P0	=	0x0081
                           000082   247 _EN_P0	=	0x0082
                           000090   248 _RS_P1	=	0x0090
                           000091   249 _RW_P1	=	0x0091
                           000092   250 _EN_P1	=	0x0092
                           0000A0   251 _RS_P2	=	0x00a0
                           0000A1   252 _RW_P2	=	0x00a1
                           0000A2   253 _EN_P2	=	0x00a2
                           0000B0   254 _RS_P3	=	0x00b0
                           0000B1   255 _RW_P3	=	0x00b1
                           0000B2   256 _EN_P3	=	0x00b2
                           0000A0   257 _RS	=	0x00a0
                           0000A1   258 _RW	=	0x00a1
                           0000A2   259 _EN	=	0x00a2
      000000                        260 _pinSetup_pin_65536_11:
      000000                        261 	.ds 1
                                    262 ;--------------------------------------------------------
                                    263 ; overlayable register banks
                                    264 ;--------------------------------------------------------
                                    265 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        266 	.ds 8
                                    267 ;--------------------------------------------------------
                                    268 ; internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area DSEG    (DATA)
      000021                        271 _LCDLineAddress::
      000021                        272 	.ds 8
      000029                        273 ___config::
      000029                        274 	.ds 3
      00002C                        275 _printString_PARM_2:
      00002C                        276 	.ds 3
                                    277 ;--------------------------------------------------------
                                    278 ; overlayable items in internal ram 
                                    279 ;--------------------------------------------------------
                                    280 	.area	OSEG    (OVR,DATA)
      00002F                        281 _LCDSetup_PARM_2:
      00002F                        282 	.ds 1
      000030                        283 _LCDSetup_PARM_3:
      000030                        284 	.ds 1
                                    285 	.area	OSEG    (OVR,DATA)
      00002F                        286 _pinSetup_PARM_2:
      00002F                        287 	.ds 1
                                    288 ;--------------------------------------------------------
                                    289 ; indirectly addressable internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area ISEG    (DATA)
                                    292 ;--------------------------------------------------------
                                    293 ; absolute internal ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area IABS    (ABS,DATA)
                                    296 	.area IABS    (ABS,DATA)
                                    297 ;--------------------------------------------------------
                                    298 ; bit data
                                    299 ;--------------------------------------------------------
                                    300 	.area BSEG    (BIT)
                                    301 ;--------------------------------------------------------
                                    302 ; paged external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area PSEG    (PAG,XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XSEG    (XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; absolute external ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XABS    (ABS,XDATA)
                                    313 ;--------------------------------------------------------
                                    314 ; external initialized ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area XISEG   (XDATA)
                                    317 	.area HOME    (CODE)
                                    318 	.area GSINIT0 (CODE)
                                    319 	.area GSINIT1 (CODE)
                                    320 	.area GSINIT2 (CODE)
                                    321 	.area GSINIT3 (CODE)
                                    322 	.area GSINIT4 (CODE)
                                    323 	.area GSINIT5 (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.area GSFINAL (CODE)
                                    326 	.area CSEG    (CODE)
                                    327 ;--------------------------------------------------------
                                    328 ; global & static initialisations
                                    329 ;--------------------------------------------------------
                                    330 	.area HOME    (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.area GSFINAL (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 ;	src/libs/lcd.h:72: uint16_t LCDLineAddress[] = {0x80, 0xC0, 0x90, 0xD0};
      000077 75 21 80         [24]  335 	mov	(_LCDLineAddress + 0),#0x80
      00007A 75 22 00         [24]  336 	mov	(_LCDLineAddress + 1),#0x00
      00007D 75 23 C0         [24]  337 	mov	((_LCDLineAddress + 0x0002) + 0),#0xc0
      000080 75 24 00         [24]  338 	mov	((_LCDLineAddress + 0x0002) + 1),#0x00
      000083 75 25 90         [24]  339 	mov	((_LCDLineAddress + 0x0004) + 0),#0x90
      000086 75 26 00         [24]  340 	mov	((_LCDLineAddress + 0x0004) + 1),#0x00
      000089 75 27 D0         [24]  341 	mov	((_LCDLineAddress + 0x0006) + 0),#0xd0
      00008C 75 28 00         [24]  342 	mov	((_LCDLineAddress + 0x0006) + 1),#0x00
                                    343 ;--------------------------------------------------------
                                    344 ; Home
                                    345 ;--------------------------------------------------------
                                    346 	.area HOME    (CODE)
                                    347 	.area HOME    (CODE)
                                    348 ;--------------------------------------------------------
                                    349 ; code
                                    350 ;--------------------------------------------------------
                                    351 	.area CSEG    (CODE)
                                    352 ;------------------------------------------------------------
                                    353 ;Allocation info for local variables in function 'LCDSetup'
                                    354 ;------------------------------------------------------------
                                    355 ;lcdDatabusType            Allocated with name '_LCDSetup_PARM_2'
                                    356 ;lcdBusModes               Allocated with name '_LCDSetup_PARM_3'
                                    357 ;lcdType                   Allocated to registers r7 
                                    358 ;------------------------------------------------------------
                                    359 ;	src/libs/lcd.c:8: int LCDSetup(uint8_t lcdType, uint8_t lcdDatabusType, uint8_t lcdBusModes)
                                    360 ;	-----------------------------------------
                                    361 ;	 function LCDSetup
                                    362 ;	-----------------------------------------
      000144                        363 _LCDSetup:
                           000007   364 	ar7 = 0x07
                           000006   365 	ar6 = 0x06
                           000005   366 	ar5 = 0x05
                           000004   367 	ar4 = 0x04
                           000003   368 	ar3 = 0x03
                           000002   369 	ar2 = 0x02
                           000001   370 	ar1 = 0x01
                           000000   371 	ar0 = 0x00
      000144 AF 82            [24]  372 	mov	r7,dpl
                                    373 ;	src/libs/lcd.c:10: __config.LCDType = lcdType;
      000146 8F 29            [24]  374 	mov	___config,r7
                                    375 ;	src/libs/lcd.c:11: __config.__LCDBusModes = lcdBusModes;
      000148 85 30 2A         [24]  376 	mov	(___config + 0x0001),_LCDSetup_PARM_3
                                    377 ;	src/libs/lcd.c:12: __config.LCDDatabusType = lcdDatabusType;
      00014B 85 2F 2B         [24]  378 	mov	(___config + 0x0002),_LCDSetup_PARM_2
                                    379 ;	src/libs/lcd.c:13: return 0;
      00014E 90 00 00         [24]  380 	mov	dptr,#0x0000
                                    381 ;	src/libs/lcd.c:14: }
      000151 22               [24]  382 	ret
                                    383 ;------------------------------------------------------------
                                    384 ;Allocation info for local variables in function 'pinSetup'
                                    385 ;------------------------------------------------------------
                                    386 ;pin                       Allocated with name '_pinSetup_pin_65536_11'
                                    387 ;modes                     Allocated with name '_pinSetup_PARM_2'
                                    388 ;------------------------------------------------------------
                                    389 ;	src/libs/lcd.c:16: void pinSetup(__sbit pin, uint8_t modes){
                                    390 ;	-----------------------------------------
                                    391 ;	 function pinSetup
                                    392 ;	-----------------------------------------
      000152                        393 _pinSetup:
                                    394 ;	src/libs/lcd.c:18: pin = modes;
                                    395 ;	assignBit
      000152 E5 2F            [12]  396 	mov	a,_pinSetup_PARM_2
      000154 24 FF            [12]  397 	add	a,#0xff
      000156 92 00            [24]  398 	mov	_pinSetup_pin_65536_11,c
                                    399 ;	src/libs/lcd.c:19: }
      000158 22               [24]  400 	ret
                                    401 ;------------------------------------------------------------
                                    402 ;Allocation info for local variables in function 'LCDInit'
                                    403 ;------------------------------------------------------------
                                    404 ;	src/libs/lcd.c:21: void LCDInit(){
                                    405 ;	-----------------------------------------
                                    406 ;	 function LCDInit
                                    407 ;	-----------------------------------------
      000159                        408 _LCDInit:
                                    409 ;	src/libs/lcd.c:30: LCDCmdWrite(RETURN_HOME);
      000159 75 82 02         [24]  410 	mov	dpl,#0x02
      00015C 12 01 81         [24]  411 	lcall	_LCDCmdWrite
                                    412 ;	src/libs/lcd.c:32: if (__config.__LCDBusModes == BUS4){
      00015F AF 2A            [24]  413 	mov	r7,(___config + 0x0001)
      000161 BF 01 08         [24]  414 	cjne	r7,#0x01,00104$
                                    415 ;	src/libs/lcd.c:33: LCDCmdWrite(CMD_LCD_FOUR_BIT_MODE);
      000164 75 82 28         [24]  416 	mov	dpl,#0x28
      000167 12 01 81         [24]  417 	lcall	_LCDCmdWrite
      00016A 80 09            [24]  418 	sjmp	00105$
      00016C                        419 00104$:
                                    420 ;	src/libs/lcd.c:34: } else if (__config.__LCDBusModes == BUS8){
      00016C EF               [12]  421 	mov	a,r7
      00016D 70 06            [24]  422 	jnz	00105$
                                    423 ;	src/libs/lcd.c:35: LCDCmdWrite(CMD_LCD_EIGHT_BIT_MODE);
      00016F 75 82 38         [24]  424 	mov	dpl,#0x38
      000172 12 01 81         [24]  425 	lcall	_LCDCmdWrite
      000175                        426 00105$:
                                    427 ;	src/libs/lcd.c:38: LCDCmdWrite(DISPLAY_ON_CURSOR_BLINK_1);
      000175 75 82 0E         [24]  428 	mov	dpl,#0x0e
      000178 12 01 81         [24]  429 	lcall	_LCDCmdWrite
                                    430 ;	src/libs/lcd.c:39: LCDCmdWrite(CLEAR_SCREEN);
      00017B 75 82 01         [24]  431 	mov	dpl,#0x01
                                    432 ;	src/libs/lcd.c:41: }
      00017E 02 01 81         [24]  433 	ljmp	_LCDCmdWrite
                                    434 ;------------------------------------------------------------
                                    435 ;Allocation info for local variables in function 'LCDCmdWrite'
                                    436 ;------------------------------------------------------------
                                    437 ;cmd                       Allocated to registers r7 
                                    438 ;------------------------------------------------------------
                                    439 ;	src/libs/lcd.c:43: int LCDCmdWrite(char cmd){
                                    440 ;	-----------------------------------------
                                    441 ;	 function LCDCmdWrite
                                    442 ;	-----------------------------------------
      000181                        443 _LCDCmdWrite:
      000181 AF 82            [24]  444 	mov	r7,dpl
                                    445 ;	src/libs/lcd.c:45: switch (__config.LCDDatabusType)
      000183 E5 2B            [12]  446 	mov	a,(___config + 0x0002)
      000185 FE               [12]  447 	mov	r6,a
      000186 24 FC            [12]  448 	add	a,#0xff - 0x03
      000188 50 03            [24]  449 	jnc	00123$
      00018A 02 01 FF         [24]  450 	ljmp	00105$
      00018D                        451 00123$:
      00018D EE               [12]  452 	mov	a,r6
      00018E 2E               [12]  453 	add	a,r6
                                    454 ;	src/libs/lcd.c:47: case DATABUS_P0:
      00018F 90 01 93         [24]  455 	mov	dptr,#00124$
      000192 73               [24]  456 	jmp	@a+dptr
      000193                        457 00124$:
      000193 80 06            [24]  458 	sjmp	00101$
      000195 80 1D            [24]  459 	sjmp	00102$
      000197 80 34            [24]  460 	sjmp	00103$
      000199 80 4B            [24]  461 	sjmp	00104$
      00019B                        462 00101$:
                                    463 ;	src/libs/lcd.c:48: LcdDatabus_P0 = (cmd & 0xF0);
      00019B 74 F0            [12]  464 	mov	a,#0xf0
      00019D 5F               [12]  465 	anl	a,r7
      00019E F5 80            [12]  466 	mov	_P0,a
                                    467 ;	src/libs/lcd.c:49: RS_P0 = LOW;
                                    468 ;	assignBit
      0001A0 C2 80            [12]  469 	clr	_RS_P0
                                    470 ;	src/libs/lcd.c:50: RW_P0 = LOW;
                                    471 ;	assignBit
      0001A2 C2 81            [12]  472 	clr	_RW_P0
                                    473 ;	src/libs/lcd.c:51: EN_P0 = HIGH;
                                    474 ;	assignBit
      0001A4 D2 82            [12]  475 	setb	_EN_P0
                                    476 ;	src/libs/lcd.c:52: DELAY_us(1000);
      0001A6 90 03 E8         [24]  477 	mov	dptr,#0x03e8
      0001A9 C0 07            [24]  478 	push	ar7
      0001AB 12 01 16         [24]  479 	lcall	_DELAY_us
      0001AE D0 07            [24]  480 	pop	ar7
                                    481 ;	src/libs/lcd.c:53: EN_P0 = LOW;
                                    482 ;	assignBit
      0001B0 C2 82            [12]  483 	clr	_EN_P0
                                    484 ;	src/libs/lcd.c:54: break;
                                    485 ;	src/libs/lcd.c:56: case DATABUS_P1:
      0001B2 80 4F            [24]  486 	sjmp	00106$
      0001B4                        487 00102$:
                                    488 ;	src/libs/lcd.c:57: LcdDatabus_P1 = (cmd & 0xF0);
      0001B4 74 F0            [12]  489 	mov	a,#0xf0
      0001B6 5F               [12]  490 	anl	a,r7
      0001B7 F5 90            [12]  491 	mov	_P1,a
                                    492 ;	src/libs/lcd.c:58: RS_P1 = LOW;
                                    493 ;	assignBit
      0001B9 C2 90            [12]  494 	clr	_RS_P1
                                    495 ;	src/libs/lcd.c:59: RW_P1 = LOW;
                                    496 ;	assignBit
      0001BB C2 91            [12]  497 	clr	_RW_P1
                                    498 ;	src/libs/lcd.c:60: EN_P1 = HIGH;
                                    499 ;	assignBit
      0001BD D2 92            [12]  500 	setb	_EN_P1
                                    501 ;	src/libs/lcd.c:61: DELAY_us(1000);
      0001BF 90 03 E8         [24]  502 	mov	dptr,#0x03e8
      0001C2 C0 07            [24]  503 	push	ar7
      0001C4 12 01 16         [24]  504 	lcall	_DELAY_us
      0001C7 D0 07            [24]  505 	pop	ar7
                                    506 ;	src/libs/lcd.c:62: EN_P1 = LOW;
                                    507 ;	assignBit
      0001C9 C2 92            [12]  508 	clr	_EN_P1
                                    509 ;	src/libs/lcd.c:63: break;
                                    510 ;	src/libs/lcd.c:65: case DATABUS_P2:
      0001CB 80 36            [24]  511 	sjmp	00106$
      0001CD                        512 00103$:
                                    513 ;	src/libs/lcd.c:66: LcdDatabus_P2 = (cmd & 0xF0);
      0001CD 74 F0            [12]  514 	mov	a,#0xf0
      0001CF 5F               [12]  515 	anl	a,r7
      0001D0 F5 A0            [12]  516 	mov	_P2,a
                                    517 ;	src/libs/lcd.c:67: RS_P2 = LOW;
                                    518 ;	assignBit
      0001D2 C2 A0            [12]  519 	clr	_RS_P2
                                    520 ;	src/libs/lcd.c:68: RW_P2 = LOW;
                                    521 ;	assignBit
      0001D4 C2 A1            [12]  522 	clr	_RW_P2
                                    523 ;	src/libs/lcd.c:69: EN_P2 = HIGH;
                                    524 ;	assignBit
      0001D6 D2 A2            [12]  525 	setb	_EN_P2
                                    526 ;	src/libs/lcd.c:70: DELAY_us(1000);
      0001D8 90 03 E8         [24]  527 	mov	dptr,#0x03e8
      0001DB C0 07            [24]  528 	push	ar7
      0001DD 12 01 16         [24]  529 	lcall	_DELAY_us
      0001E0 D0 07            [24]  530 	pop	ar7
                                    531 ;	src/libs/lcd.c:71: EN_P2 = LOW;
                                    532 ;	assignBit
      0001E2 C2 A2            [12]  533 	clr	_EN_P2
                                    534 ;	src/libs/lcd.c:72: break;
                                    535 ;	src/libs/lcd.c:74: case DATABUS_P3:
      0001E4 80 1D            [24]  536 	sjmp	00106$
      0001E6                        537 00104$:
                                    538 ;	src/libs/lcd.c:75: LcdDatabus_P3 = (cmd & 0xF0);
      0001E6 74 F0            [12]  539 	mov	a,#0xf0
      0001E8 5F               [12]  540 	anl	a,r7
      0001E9 F5 B0            [12]  541 	mov	_P3,a
                                    542 ;	src/libs/lcd.c:76: RS_P3 = LOW;
                                    543 ;	assignBit
      0001EB C2 B0            [12]  544 	clr	_RS_P3
                                    545 ;	src/libs/lcd.c:77: RW_P3 = LOW;
                                    546 ;	assignBit
      0001ED C2 B1            [12]  547 	clr	_RW_P3
                                    548 ;	src/libs/lcd.c:78: EN_P3 = HIGH;
                                    549 ;	assignBit
      0001EF D2 B2            [12]  550 	setb	_EN_P3
                                    551 ;	src/libs/lcd.c:79: DELAY_us(1000);
      0001F1 90 03 E8         [24]  552 	mov	dptr,#0x03e8
      0001F4 C0 07            [24]  553 	push	ar7
      0001F6 12 01 16         [24]  554 	lcall	_DELAY_us
      0001F9 D0 07            [24]  555 	pop	ar7
                                    556 ;	src/libs/lcd.c:80: EN_P3 = LOW;
                                    557 ;	assignBit
      0001FB C2 B2            [12]  558 	clr	_EN_P3
                                    559 ;	src/libs/lcd.c:81: break;
                                    560 ;	src/libs/lcd.c:83: default:
      0001FD 80 04            [24]  561 	sjmp	00106$
      0001FF                        562 00105$:
                                    563 ;	src/libs/lcd.c:84: return -1;
      0001FF 90 FF FF         [24]  564 	mov	dptr,#0xffff
      000202 22               [24]  565 	ret
                                    566 ;	src/libs/lcd.c:85: }
      000203                        567 00106$:
                                    568 ;	src/libs/lcd.c:88: DELAY_us(10000);
      000203 90 27 10         [24]  569 	mov	dptr,#0x2710
      000206 C0 07            [24]  570 	push	ar7
      000208 12 01 16         [24]  571 	lcall	_DELAY_us
      00020B D0 07            [24]  572 	pop	ar7
                                    573 ;	src/libs/lcd.c:90: switch (__config.LCDDatabusType)
      00020D E5 2B            [12]  574 	mov	a,(___config + 0x0002)
      00020F FE               [12]  575 	mov	r6,a
      000210 24 FC            [12]  576 	add	a,#0xff - 0x03
      000212 50 03            [24]  577 	jnc	00125$
      000214 02 02 93         [24]  578 	ljmp	00111$
      000217                        579 00125$:
      000217 EE               [12]  580 	mov	a,r6
      000218 2E               [12]  581 	add	a,r6
                                    582 ;	src/libs/lcd.c:92: case DATABUS_P0:
      000219 90 02 1D         [24]  583 	mov	dptr,#00126$
      00021C 73               [24]  584 	jmp	@a+dptr
      00021D                        585 00126$:
      00021D 80 06            [24]  586 	sjmp	00107$
      00021F 80 20            [24]  587 	sjmp	00108$
      000221 80 3A            [24]  588 	sjmp	00109$
      000223 80 54            [24]  589 	sjmp	00110$
      000225                        590 00107$:
                                    591 ;	src/libs/lcd.c:93: LcdDatabus_P0 = ((cmd<<4) & 0xF0);
      000225 8F 06            [24]  592 	mov	ar6,r7
      000227 EE               [12]  593 	mov	a,r6
      000228 C4               [12]  594 	swap	a
      000229 54 F0            [12]  595 	anl	a,#0xf0
      00022B FE               [12]  596 	mov	r6,a
      00022C 74 F0            [12]  597 	mov	a,#0xf0
      00022E 5E               [12]  598 	anl	a,r6
      00022F F5 80            [12]  599 	mov	_P0,a
                                    600 ;	src/libs/lcd.c:94: RS_P0 = LOW;
                                    601 ;	assignBit
      000231 C2 80            [12]  602 	clr	_RS_P0
                                    603 ;	src/libs/lcd.c:95: RW_P0 = LOW;
                                    604 ;	assignBit
      000233 C2 81            [12]  605 	clr	_RW_P0
                                    606 ;	src/libs/lcd.c:96: EN_P0 = HIGH;
                                    607 ;	assignBit
      000235 D2 82            [12]  608 	setb	_EN_P0
                                    609 ;	src/libs/lcd.c:97: DELAY_us(1000);
      000237 90 03 E8         [24]  610 	mov	dptr,#0x03e8
      00023A 12 01 16         [24]  611 	lcall	_DELAY_us
                                    612 ;	src/libs/lcd.c:98: EN_P0 = LOW;
                                    613 ;	assignBit
      00023D C2 82            [12]  614 	clr	_EN_P0
                                    615 ;	src/libs/lcd.c:99: break;
                                    616 ;	src/libs/lcd.c:100: case DATABUS_P1:
      00023F 80 56            [24]  617 	sjmp	00112$
      000241                        618 00108$:
                                    619 ;	src/libs/lcd.c:101: LcdDatabus_P1 = ((cmd<<4) & 0xF0);
      000241 8F 06            [24]  620 	mov	ar6,r7
      000243 EE               [12]  621 	mov	a,r6
      000244 C4               [12]  622 	swap	a
      000245 54 F0            [12]  623 	anl	a,#0xf0
      000247 FE               [12]  624 	mov	r6,a
      000248 74 F0            [12]  625 	mov	a,#0xf0
      00024A 5E               [12]  626 	anl	a,r6
      00024B F5 90            [12]  627 	mov	_P1,a
                                    628 ;	src/libs/lcd.c:102: RS_P1 = LOW;
                                    629 ;	assignBit
      00024D C2 90            [12]  630 	clr	_RS_P1
                                    631 ;	src/libs/lcd.c:103: RW_P1 = LOW;
                                    632 ;	assignBit
      00024F C2 91            [12]  633 	clr	_RW_P1
                                    634 ;	src/libs/lcd.c:104: EN_P1 = HIGH;
                                    635 ;	assignBit
      000251 D2 92            [12]  636 	setb	_EN_P1
                                    637 ;	src/libs/lcd.c:105: DELAY_us(1000);
      000253 90 03 E8         [24]  638 	mov	dptr,#0x03e8
      000256 12 01 16         [24]  639 	lcall	_DELAY_us
                                    640 ;	src/libs/lcd.c:106: EN_P1 = LOW;
                                    641 ;	assignBit
      000259 C2 92            [12]  642 	clr	_EN_P1
                                    643 ;	src/libs/lcd.c:107: break;
                                    644 ;	src/libs/lcd.c:108: case DATABUS_P2:
      00025B 80 3A            [24]  645 	sjmp	00112$
      00025D                        646 00109$:
                                    647 ;	src/libs/lcd.c:109: LcdDatabus_P2 = ((cmd<<4) & 0xF0);
      00025D 8F 06            [24]  648 	mov	ar6,r7
      00025F EE               [12]  649 	mov	a,r6
      000260 C4               [12]  650 	swap	a
      000261 54 F0            [12]  651 	anl	a,#0xf0
      000263 FE               [12]  652 	mov	r6,a
      000264 74 F0            [12]  653 	mov	a,#0xf0
      000266 5E               [12]  654 	anl	a,r6
      000267 F5 A0            [12]  655 	mov	_P2,a
                                    656 ;	src/libs/lcd.c:110: RS_P2 = LOW;
                                    657 ;	assignBit
      000269 C2 A0            [12]  658 	clr	_RS_P2
                                    659 ;	src/libs/lcd.c:111: RW_P2 = LOW;
                                    660 ;	assignBit
      00026B C2 A1            [12]  661 	clr	_RW_P2
                                    662 ;	src/libs/lcd.c:112: EN_P2 = HIGH;
                                    663 ;	assignBit
      00026D D2 A2            [12]  664 	setb	_EN_P2
                                    665 ;	src/libs/lcd.c:113: DELAY_us(1000);
      00026F 90 03 E8         [24]  666 	mov	dptr,#0x03e8
      000272 12 01 16         [24]  667 	lcall	_DELAY_us
                                    668 ;	src/libs/lcd.c:114: EN_P2 = LOW;
                                    669 ;	assignBit
      000275 C2 A2            [12]  670 	clr	_EN_P2
                                    671 ;	src/libs/lcd.c:115: break;
                                    672 ;	src/libs/lcd.c:116: case DATABUS_P3:
      000277 80 1E            [24]  673 	sjmp	00112$
      000279                        674 00110$:
                                    675 ;	src/libs/lcd.c:117: LcdDatabus_P3 = ((cmd<<4) & 0xF0);
      000279 EF               [12]  676 	mov	a,r7
      00027A C4               [12]  677 	swap	a
      00027B 54 F0            [12]  678 	anl	a,#0xf0
      00027D FF               [12]  679 	mov	r7,a
      00027E 74 F0            [12]  680 	mov	a,#0xf0
      000280 5F               [12]  681 	anl	a,r7
      000281 F5 B0            [12]  682 	mov	_P3,a
                                    683 ;	src/libs/lcd.c:118: RS_P3 = LOW;
                                    684 ;	assignBit
      000283 C2 B0            [12]  685 	clr	_RS_P3
                                    686 ;	src/libs/lcd.c:119: RW_P3 = LOW;
                                    687 ;	assignBit
      000285 C2 B1            [12]  688 	clr	_RW_P3
                                    689 ;	src/libs/lcd.c:120: EN_P3 = HIGH;
                                    690 ;	assignBit
      000287 D2 B2            [12]  691 	setb	_EN_P3
                                    692 ;	src/libs/lcd.c:121: DELAY_us(1000);
      000289 90 03 E8         [24]  693 	mov	dptr,#0x03e8
      00028C 12 01 16         [24]  694 	lcall	_DELAY_us
                                    695 ;	src/libs/lcd.c:122: EN_P3 = LOW;
                                    696 ;	assignBit
      00028F C2 B2            [12]  697 	clr	_EN_P3
                                    698 ;	src/libs/lcd.c:123: break;
                                    699 ;	src/libs/lcd.c:124: default:
      000291 80 04            [24]  700 	sjmp	00112$
      000293                        701 00111$:
                                    702 ;	src/libs/lcd.c:125: return -1;
      000293 90 FF FF         [24]  703 	mov	dptr,#0xffff
                                    704 ;	src/libs/lcd.c:126: }
      000296 22               [24]  705 	ret
      000297                        706 00112$:
                                    707 ;	src/libs/lcd.c:132: DELAY_us(10000);
      000297 90 27 10         [24]  708 	mov	dptr,#0x2710
      00029A 12 01 16         [24]  709 	lcall	_DELAY_us
                                    710 ;	src/libs/lcd.c:133: return 0;
      00029D 90 00 00         [24]  711 	mov	dptr,#0x0000
                                    712 ;	src/libs/lcd.c:134: }
      0002A0 22               [24]  713 	ret
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'LCDDataWrite'
                                    716 ;------------------------------------------------------------
                                    717 ;data                      Allocated to registers r7 
                                    718 ;------------------------------------------------------------
                                    719 ;	src/libs/lcd.c:136: int LCDDataWrite(char data){
                                    720 ;	-----------------------------------------
                                    721 ;	 function LCDDataWrite
                                    722 ;	-----------------------------------------
      0002A1                        723 _LCDDataWrite:
      0002A1 AF 82            [24]  724 	mov	r7,dpl
                                    725 ;	src/libs/lcd.c:139: switch (__config.LCDDatabusType)
      0002A3 E5 2B            [12]  726 	mov	a,(___config + 0x0002)
      0002A5 FE               [12]  727 	mov	r6,a
      0002A6 24 FC            [12]  728 	add	a,#0xff - 0x03
      0002A8 50 03            [24]  729 	jnc	00123$
      0002AA 02 03 1F         [24]  730 	ljmp	00105$
      0002AD                        731 00123$:
      0002AD EE               [12]  732 	mov	a,r6
      0002AE 2E               [12]  733 	add	a,r6
                                    734 ;	src/libs/lcd.c:141: case DATABUS_P0:
      0002AF 90 02 B3         [24]  735 	mov	dptr,#00124$
      0002B2 73               [24]  736 	jmp	@a+dptr
      0002B3                        737 00124$:
      0002B3 80 06            [24]  738 	sjmp	00101$
      0002B5 80 1D            [24]  739 	sjmp	00102$
      0002B7 80 34            [24]  740 	sjmp	00103$
      0002B9 80 4B            [24]  741 	sjmp	00104$
      0002BB                        742 00101$:
                                    743 ;	src/libs/lcd.c:142: LcdDatabus_P0 = (data & 0xF0);
      0002BB 74 F0            [12]  744 	mov	a,#0xf0
      0002BD 5F               [12]  745 	anl	a,r7
      0002BE F5 80            [12]  746 	mov	_P0,a
                                    747 ;	src/libs/lcd.c:143: RS_P0 = HIGH;
                                    748 ;	assignBit
      0002C0 D2 80            [12]  749 	setb	_RS_P0
                                    750 ;	src/libs/lcd.c:144: RW_P0 = LOW;
                                    751 ;	assignBit
      0002C2 C2 81            [12]  752 	clr	_RW_P0
                                    753 ;	src/libs/lcd.c:145: EN_P0 = HIGH;
                                    754 ;	assignBit
      0002C4 D2 82            [12]  755 	setb	_EN_P0
                                    756 ;	src/libs/lcd.c:146: DELAY_us(1000);
      0002C6 90 03 E8         [24]  757 	mov	dptr,#0x03e8
      0002C9 C0 07            [24]  758 	push	ar7
      0002CB 12 01 16         [24]  759 	lcall	_DELAY_us
      0002CE D0 07            [24]  760 	pop	ar7
                                    761 ;	src/libs/lcd.c:147: EN_P0 = LOW;
                                    762 ;	assignBit
      0002D0 C2 82            [12]  763 	clr	_EN_P0
                                    764 ;	src/libs/lcd.c:148: break;
                                    765 ;	src/libs/lcd.c:150: case DATABUS_P1:
      0002D2 80 4F            [24]  766 	sjmp	00106$
      0002D4                        767 00102$:
                                    768 ;	src/libs/lcd.c:151: LcdDatabus_P1 = (data & 0xF0);
      0002D4 74 F0            [12]  769 	mov	a,#0xf0
      0002D6 5F               [12]  770 	anl	a,r7
      0002D7 F5 90            [12]  771 	mov	_P1,a
                                    772 ;	src/libs/lcd.c:152: RS_P1 = HIGH;
                                    773 ;	assignBit
      0002D9 D2 90            [12]  774 	setb	_RS_P1
                                    775 ;	src/libs/lcd.c:153: RW_P1 = LOW;
                                    776 ;	assignBit
      0002DB C2 91            [12]  777 	clr	_RW_P1
                                    778 ;	src/libs/lcd.c:154: EN_P1 = HIGH;
                                    779 ;	assignBit
      0002DD D2 92            [12]  780 	setb	_EN_P1
                                    781 ;	src/libs/lcd.c:155: DELAY_us(1000);
      0002DF 90 03 E8         [24]  782 	mov	dptr,#0x03e8
      0002E2 C0 07            [24]  783 	push	ar7
      0002E4 12 01 16         [24]  784 	lcall	_DELAY_us
      0002E7 D0 07            [24]  785 	pop	ar7
                                    786 ;	src/libs/lcd.c:156: EN_P1 = LOW;
                                    787 ;	assignBit
      0002E9 C2 92            [12]  788 	clr	_EN_P1
                                    789 ;	src/libs/lcd.c:157: break;
                                    790 ;	src/libs/lcd.c:159: case DATABUS_P2:
      0002EB 80 36            [24]  791 	sjmp	00106$
      0002ED                        792 00103$:
                                    793 ;	src/libs/lcd.c:160: LcdDatabus_P2 = (data & 0xF0);
      0002ED 74 F0            [12]  794 	mov	a,#0xf0
      0002EF 5F               [12]  795 	anl	a,r7
      0002F0 F5 A0            [12]  796 	mov	_P2,a
                                    797 ;	src/libs/lcd.c:161: RS_P2 = HIGH;
                                    798 ;	assignBit
      0002F2 D2 A0            [12]  799 	setb	_RS_P2
                                    800 ;	src/libs/lcd.c:162: RW_P2 = LOW;
                                    801 ;	assignBit
      0002F4 C2 A1            [12]  802 	clr	_RW_P2
                                    803 ;	src/libs/lcd.c:163: EN_P2 = HIGH;
                                    804 ;	assignBit
      0002F6 D2 A2            [12]  805 	setb	_EN_P2
                                    806 ;	src/libs/lcd.c:164: DELAY_us(1000);
      0002F8 90 03 E8         [24]  807 	mov	dptr,#0x03e8
      0002FB C0 07            [24]  808 	push	ar7
      0002FD 12 01 16         [24]  809 	lcall	_DELAY_us
      000300 D0 07            [24]  810 	pop	ar7
                                    811 ;	src/libs/lcd.c:165: EN_P2 = LOW;
                                    812 ;	assignBit
      000302 C2 A2            [12]  813 	clr	_EN_P2
                                    814 ;	src/libs/lcd.c:166: break;
                                    815 ;	src/libs/lcd.c:168: case DATABUS_P3:
      000304 80 1D            [24]  816 	sjmp	00106$
      000306                        817 00104$:
                                    818 ;	src/libs/lcd.c:169: LcdDatabus_P3 = (data & 0xF0);
      000306 74 F0            [12]  819 	mov	a,#0xf0
      000308 5F               [12]  820 	anl	a,r7
      000309 F5 B0            [12]  821 	mov	_P3,a
                                    822 ;	src/libs/lcd.c:170: RS_P3 = HIGH;
                                    823 ;	assignBit
      00030B D2 B0            [12]  824 	setb	_RS_P3
                                    825 ;	src/libs/lcd.c:171: RW_P3 = LOW;
                                    826 ;	assignBit
      00030D C2 B1            [12]  827 	clr	_RW_P3
                                    828 ;	src/libs/lcd.c:172: EN_P3 = HIGH;
                                    829 ;	assignBit
      00030F D2 B2            [12]  830 	setb	_EN_P3
                                    831 ;	src/libs/lcd.c:173: DELAY_us(1000);
      000311 90 03 E8         [24]  832 	mov	dptr,#0x03e8
      000314 C0 07            [24]  833 	push	ar7
      000316 12 01 16         [24]  834 	lcall	_DELAY_us
      000319 D0 07            [24]  835 	pop	ar7
                                    836 ;	src/libs/lcd.c:174: EN_P3 = LOW;
                                    837 ;	assignBit
      00031B C2 B2            [12]  838 	clr	_EN_P3
                                    839 ;	src/libs/lcd.c:175: break;
                                    840 ;	src/libs/lcd.c:177: default:
      00031D 80 04            [24]  841 	sjmp	00106$
      00031F                        842 00105$:
                                    843 ;	src/libs/lcd.c:178: return -1;
      00031F 90 FF FF         [24]  844 	mov	dptr,#0xffff
      000322 22               [24]  845 	ret
                                    846 ;	src/libs/lcd.c:179: }
      000323                        847 00106$:
                                    848 ;	src/libs/lcd.c:182: DELAY_us(10000);
      000323 90 27 10         [24]  849 	mov	dptr,#0x2710
      000326 C0 07            [24]  850 	push	ar7
      000328 12 01 16         [24]  851 	lcall	_DELAY_us
      00032B D0 07            [24]  852 	pop	ar7
                                    853 ;	src/libs/lcd.c:184: switch (__config.LCDDatabusType)
      00032D E5 2B            [12]  854 	mov	a,(___config + 0x0002)
      00032F FE               [12]  855 	mov	r6,a
      000330 24 FC            [12]  856 	add	a,#0xff - 0x03
      000332 50 03            [24]  857 	jnc	00125$
      000334 02 03 B3         [24]  858 	ljmp	00111$
      000337                        859 00125$:
      000337 EE               [12]  860 	mov	a,r6
      000338 2E               [12]  861 	add	a,r6
                                    862 ;	src/libs/lcd.c:186: case DATABUS_P0:
      000339 90 03 3D         [24]  863 	mov	dptr,#00126$
      00033C 73               [24]  864 	jmp	@a+dptr
      00033D                        865 00126$:
      00033D 80 06            [24]  866 	sjmp	00107$
      00033F 80 20            [24]  867 	sjmp	00108$
      000341 80 3A            [24]  868 	sjmp	00109$
      000343 80 54            [24]  869 	sjmp	00110$
      000345                        870 00107$:
                                    871 ;	src/libs/lcd.c:187: LcdDatabus_P0 = ((data<<4) & 0xF0);
      000345 8F 06            [24]  872 	mov	ar6,r7
      000347 EE               [12]  873 	mov	a,r6
      000348 C4               [12]  874 	swap	a
      000349 54 F0            [12]  875 	anl	a,#0xf0
      00034B FE               [12]  876 	mov	r6,a
      00034C 74 F0            [12]  877 	mov	a,#0xf0
      00034E 5E               [12]  878 	anl	a,r6
      00034F F5 80            [12]  879 	mov	_P0,a
                                    880 ;	src/libs/lcd.c:188: RS_P0 = HIGH;
                                    881 ;	assignBit
      000351 D2 80            [12]  882 	setb	_RS_P0
                                    883 ;	src/libs/lcd.c:189: RW_P0 = LOW;
                                    884 ;	assignBit
      000353 C2 81            [12]  885 	clr	_RW_P0
                                    886 ;	src/libs/lcd.c:190: EN_P0 = HIGH;
                                    887 ;	assignBit
      000355 D2 82            [12]  888 	setb	_EN_P0
                                    889 ;	src/libs/lcd.c:191: DELAY_us(1000);
      000357 90 03 E8         [24]  890 	mov	dptr,#0x03e8
      00035A 12 01 16         [24]  891 	lcall	_DELAY_us
                                    892 ;	src/libs/lcd.c:192: EN_P0 = LOW;
                                    893 ;	assignBit
      00035D C2 82            [12]  894 	clr	_EN_P0
                                    895 ;	src/libs/lcd.c:193: break;
                                    896 ;	src/libs/lcd.c:194: case DATABUS_P1:
      00035F 80 56            [24]  897 	sjmp	00112$
      000361                        898 00108$:
                                    899 ;	src/libs/lcd.c:195: LcdDatabus_P1 = ((data<<4) & 0xF0);
      000361 8F 06            [24]  900 	mov	ar6,r7
      000363 EE               [12]  901 	mov	a,r6
      000364 C4               [12]  902 	swap	a
      000365 54 F0            [12]  903 	anl	a,#0xf0
      000367 FE               [12]  904 	mov	r6,a
      000368 74 F0            [12]  905 	mov	a,#0xf0
      00036A 5E               [12]  906 	anl	a,r6
      00036B F5 90            [12]  907 	mov	_P1,a
                                    908 ;	src/libs/lcd.c:196: RS_P1 = HIGH;
                                    909 ;	assignBit
      00036D D2 90            [12]  910 	setb	_RS_P1
                                    911 ;	src/libs/lcd.c:197: RW_P1 = LOW;
                                    912 ;	assignBit
      00036F C2 91            [12]  913 	clr	_RW_P1
                                    914 ;	src/libs/lcd.c:198: EN_P1 = HIGH;
                                    915 ;	assignBit
      000371 D2 92            [12]  916 	setb	_EN_P1
                                    917 ;	src/libs/lcd.c:199: DELAY_us(1000);
      000373 90 03 E8         [24]  918 	mov	dptr,#0x03e8
      000376 12 01 16         [24]  919 	lcall	_DELAY_us
                                    920 ;	src/libs/lcd.c:200: EN_P1 = LOW;
                                    921 ;	assignBit
      000379 C2 92            [12]  922 	clr	_EN_P1
                                    923 ;	src/libs/lcd.c:201: break;
                                    924 ;	src/libs/lcd.c:202: case DATABUS_P2:
      00037B 80 3A            [24]  925 	sjmp	00112$
      00037D                        926 00109$:
                                    927 ;	src/libs/lcd.c:203: LcdDatabus_P2 = ((data<<4) & 0xF0);
      00037D 8F 06            [24]  928 	mov	ar6,r7
      00037F EE               [12]  929 	mov	a,r6
      000380 C4               [12]  930 	swap	a
      000381 54 F0            [12]  931 	anl	a,#0xf0
      000383 FE               [12]  932 	mov	r6,a
      000384 74 F0            [12]  933 	mov	a,#0xf0
      000386 5E               [12]  934 	anl	a,r6
      000387 F5 A0            [12]  935 	mov	_P2,a
                                    936 ;	src/libs/lcd.c:204: RS_P2 = HIGH;
                                    937 ;	assignBit
      000389 D2 A0            [12]  938 	setb	_RS_P2
                                    939 ;	src/libs/lcd.c:205: RW_P2 = LOW;
                                    940 ;	assignBit
      00038B C2 A1            [12]  941 	clr	_RW_P2
                                    942 ;	src/libs/lcd.c:206: EN_P2 = HIGH;
                                    943 ;	assignBit
      00038D D2 A2            [12]  944 	setb	_EN_P2
                                    945 ;	src/libs/lcd.c:207: DELAY_us(1000);
      00038F 90 03 E8         [24]  946 	mov	dptr,#0x03e8
      000392 12 01 16         [24]  947 	lcall	_DELAY_us
                                    948 ;	src/libs/lcd.c:208: EN_P2 = LOW;
                                    949 ;	assignBit
      000395 C2 A2            [12]  950 	clr	_EN_P2
                                    951 ;	src/libs/lcd.c:209: break;
                                    952 ;	src/libs/lcd.c:210: case DATABUS_P3:
      000397 80 1E            [24]  953 	sjmp	00112$
      000399                        954 00110$:
                                    955 ;	src/libs/lcd.c:211: LcdDatabus_P3 = ((data<<4) & 0xF0);
      000399 EF               [12]  956 	mov	a,r7
      00039A C4               [12]  957 	swap	a
      00039B 54 F0            [12]  958 	anl	a,#0xf0
      00039D FF               [12]  959 	mov	r7,a
      00039E 74 F0            [12]  960 	mov	a,#0xf0
      0003A0 5F               [12]  961 	anl	a,r7
      0003A1 F5 B0            [12]  962 	mov	_P3,a
                                    963 ;	src/libs/lcd.c:212: RS_P3 = HIGH;
                                    964 ;	assignBit
      0003A3 D2 B0            [12]  965 	setb	_RS_P3
                                    966 ;	src/libs/lcd.c:213: RW_P3 = LOW;
                                    967 ;	assignBit
      0003A5 C2 B1            [12]  968 	clr	_RW_P3
                                    969 ;	src/libs/lcd.c:214: EN_P3 = HIGH;
                                    970 ;	assignBit
      0003A7 D2 B2            [12]  971 	setb	_EN_P3
                                    972 ;	src/libs/lcd.c:215: DELAY_us(1000);
      0003A9 90 03 E8         [24]  973 	mov	dptr,#0x03e8
      0003AC 12 01 16         [24]  974 	lcall	_DELAY_us
                                    975 ;	src/libs/lcd.c:216: EN_P3 = LOW;
                                    976 ;	assignBit
      0003AF C2 B2            [12]  977 	clr	_EN_P3
                                    978 ;	src/libs/lcd.c:217: break;
                                    979 ;	src/libs/lcd.c:218: default:
      0003B1 80 04            [24]  980 	sjmp	00112$
      0003B3                        981 00111$:
                                    982 ;	src/libs/lcd.c:219: return -1;
      0003B3 90 FF FF         [24]  983 	mov	dptr,#0xffff
                                    984 ;	src/libs/lcd.c:220: }
      0003B6 22               [24]  985 	ret
      0003B7                        986 00112$:
                                    987 ;	src/libs/lcd.c:224: DELAY_us(10000);
      0003B7 90 27 10         [24]  988 	mov	dptr,#0x2710
      0003BA 12 01 16         [24]  989 	lcall	_DELAY_us
                                    990 ;	src/libs/lcd.c:225: return 0;
      0003BD 90 00 00         [24]  991 	mov	dptr,#0x0000
                                    992 ;	src/libs/lcd.c:226: }
      0003C0 22               [24]  993 	ret
                                    994 ;------------------------------------------------------------
                                    995 ;Allocation info for local variables in function 'printString'
                                    996 ;------------------------------------------------------------
                                    997 ;string                    Allocated with name '_printString_PARM_2'
                                    998 ;line                      Allocated to registers r7 
                                    999 ;------------------------------------------------------------
                                   1000 ;	src/libs/lcd.c:228: void printString(uint8_t line, char* string){
                                   1001 ;	-----------------------------------------
                                   1002 ;	 function printString
                                   1003 ;	-----------------------------------------
      0003C1                       1004 _printString:
                                   1005 ;	src/libs/lcd.c:229: if (line == FIRST_LINE){
      0003C1 E5 82            [12] 1006 	mov	a,dpl
      0003C3 FF               [12] 1007 	mov	r7,a
      0003C4 70 08            [24] 1008 	jnz	00110$
                                   1009 ;	src/libs/lcd.c:230: LCDCmdWrite(CURSOR_TO_FIRST_LINE);
      0003C6 75 82 80         [24] 1010 	mov	dpl,#0x80
      0003C9 12 01 81         [24] 1011 	lcall	_LCDCmdWrite
      0003CC 80 1F            [24] 1012 	sjmp	00122$
      0003CE                       1013 00110$:
                                   1014 ;	src/libs/lcd.c:232: else if (line == SECOND_LINE){
      0003CE BF 01 08         [24] 1015 	cjne	r7,#0x01,00107$
                                   1016 ;	src/libs/lcd.c:233: LCDCmdWrite(CURSOR_TO_SECOND_LINE);
      0003D1 75 82 C0         [24] 1017 	mov	dpl,#0xc0
      0003D4 12 01 81         [24] 1018 	lcall	_LCDCmdWrite
      0003D7 80 14            [24] 1019 	sjmp	00122$
      0003D9                       1020 00107$:
                                   1021 ;	src/libs/lcd.c:235: else if (line == THIRD_LINE){
      0003D9 BF 02 08         [24] 1022 	cjne	r7,#0x02,00104$
                                   1023 ;	src/libs/lcd.c:236: LCDCmdWrite(CURSOR_TO_THIRD_LINE);
      0003DC 75 82 90         [24] 1024 	mov	dpl,#0x90
      0003DF 12 01 81         [24] 1025 	lcall	_LCDCmdWrite
      0003E2 80 09            [24] 1026 	sjmp	00122$
      0003E4                       1027 00104$:
                                   1028 ;	src/libs/lcd.c:238: else if (line == FORTH_LINE){
      0003E4 BF 03 06         [24] 1029 	cjne	r7,#0x03,00122$
                                   1030 ;	src/libs/lcd.c:239: LCDCmdWrite(CURSOR_TO_FORTH_LINE);
      0003E7 75 82 D0         [24] 1031 	mov	dpl,#0xd0
      0003EA 12 01 81         [24] 1032 	lcall	_LCDCmdWrite
                                   1033 ;	src/libs/lcd.c:242: while(*string){
      0003ED                       1034 00122$:
      0003ED AD 2C            [24] 1035 	mov	r5,_printString_PARM_2
      0003EF AE 2D            [24] 1036 	mov	r6,(_printString_PARM_2 + 1)
      0003F1 AF 2E            [24] 1037 	mov	r7,(_printString_PARM_2 + 2)
      0003F3                       1038 00112$:
      0003F3 8D 82            [24] 1039 	mov	dpl,r5
      0003F5 8E 83            [24] 1040 	mov	dph,r6
      0003F7 8F F0            [24] 1041 	mov	b,r7
      0003F9 12 04 18         [24] 1042 	lcall	__gptrget
      0003FC FC               [12] 1043 	mov	r4,a
      0003FD 60 18            [24] 1044 	jz	00115$
                                   1045 ;	src/libs/lcd.c:243: LCDDataWrite(*string++);
      0003FF 8C 82            [24] 1046 	mov	dpl,r4
      000401 0D               [12] 1047 	inc	r5
      000402 BD 00 01         [24] 1048 	cjne	r5,#0x00,00150$
      000405 0E               [12] 1049 	inc	r6
      000406                       1050 00150$:
      000406 C0 07            [24] 1051 	push	ar7
      000408 C0 06            [24] 1052 	push	ar6
      00040A C0 05            [24] 1053 	push	ar5
      00040C 12 02 A1         [24] 1054 	lcall	_LCDDataWrite
      00040F D0 05            [24] 1055 	pop	ar5
      000411 D0 06            [24] 1056 	pop	ar6
      000413 D0 07            [24] 1057 	pop	ar7
      000415 80 DC            [24] 1058 	sjmp	00112$
      000417                       1059 00115$:
                                   1060 ;	src/libs/lcd.c:245: }
      000417 22               [24] 1061 	ret
                                   1062 	.area CSEG    (CODE)
                                   1063 	.area CONST   (CODE)
                                   1064 	.area XINIT   (CODE)
                                   1065 	.area CABS    (ABS,CODE)
