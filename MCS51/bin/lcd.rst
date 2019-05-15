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
                                     15 	.globl _EN_P3
                                     16 	.globl _RW_P3
                                     17 	.globl _RS_P3
                                     18 	.globl _EN_P2
                                     19 	.globl _RW_P2
                                     20 	.globl _RS_P2
                                     21 	.globl _EN_P1
                                     22 	.globl _RW_P1
                                     23 	.globl _RS_P1
                                     24 	.globl _EN_P0
                                     25 	.globl _RW_P0
                                     26 	.globl _RS_P0
                                     27 	.globl _P_NC
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _FL
                                     35 	.globl _P
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
                                     58 	.globl _ES
                                     59 	.globl _ET1
                                     60 	.globl _EX1
                                     61 	.globl _ET0
                                     62 	.globl _EX0
                                     63 	.globl _P2_7
                                     64 	.globl _P2_6
                                     65 	.globl _P2_5
                                     66 	.globl _P2_4
                                     67 	.globl _P2_3
                                     68 	.globl _P2_2
                                     69 	.globl _P2_1
                                     70 	.globl _P2_0
                                     71 	.globl _SM0
                                     72 	.globl _SM1
                                     73 	.globl _SM2
                                     74 	.globl _REN
                                     75 	.globl _TB8
                                     76 	.globl _RB8
                                     77 	.globl _TI
                                     78 	.globl _RI
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _TF1
                                     88 	.globl _TR1
                                     89 	.globl _TF0
                                     90 	.globl _TR0
                                     91 	.globl _IE1
                                     92 	.globl _IT1
                                     93 	.globl _IE0
                                     94 	.globl _IT0
                                     95 	.globl _P0_7
                                     96 	.globl _P0_6
                                     97 	.globl _P0_5
                                     98 	.globl _P0_4
                                     99 	.globl _P0_3
                                    100 	.globl _P0_2
                                    101 	.globl _P0_1
                                    102 	.globl _P0_0
                                    103 	.globl _B
                                    104 	.globl _A
                                    105 	.globl _ACC
                                    106 	.globl _PSW
                                    107 	.globl _IP
                                    108 	.globl _P3
                                    109 	.globl _IE
                                    110 	.globl _P2
                                    111 	.globl _SBUF
                                    112 	.globl _SCON
                                    113 	.globl _P1
                                    114 	.globl _TH1
                                    115 	.globl _TH0
                                    116 	.globl _TL1
                                    117 	.globl _TL0
                                    118 	.globl _TMOD
                                    119 	.globl _TCON
                                    120 	.globl _PCON
                                    121 	.globl _DPH
                                    122 	.globl _DPL
                                    123 	.globl _SP
                                    124 	.globl _P0
                                    125 	.globl _printString_PARM_2
                                    126 	.globl ___config
                                    127 	.globl _LCDLineAddress
                                    128 	.globl _LCDSetup
                                    129 	.globl _pinSetup
                                    130 	.globl _LCDInit
                                    131 	.globl _LCDCmdWrite
                                    132 	.globl _LCDDataWrite
                                    133 	.globl _printString
                                    134 ;--------------------------------------------------------
                                    135 ; special function registers
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0	=	0x0080
                           000081   140 _SP	=	0x0081
                           000082   141 _DPL	=	0x0082
                           000083   142 _DPH	=	0x0083
                           000087   143 _PCON	=	0x0087
                           000088   144 _TCON	=	0x0088
                           000089   145 _TMOD	=	0x0089
                           00008A   146 _TL0	=	0x008a
                           00008B   147 _TL1	=	0x008b
                           00008C   148 _TH0	=	0x008c
                           00008D   149 _TH1	=	0x008d
                           000090   150 _P1	=	0x0090
                           000098   151 _SCON	=	0x0098
                           000099   152 _SBUF	=	0x0099
                           0000A0   153 _P2	=	0x00a0
                           0000A8   154 _IE	=	0x00a8
                           0000B0   155 _P3	=	0x00b0
                           0000B8   156 _IP	=	0x00b8
                           0000D0   157 _PSW	=	0x00d0
                           0000E0   158 _ACC	=	0x00e0
                           0000E0   159 _A	=	0x00e0
                           0000F0   160 _B	=	0x00f0
                                    161 ;--------------------------------------------------------
                                    162 ; special function bits
                                    163 ;--------------------------------------------------------
                                    164 	.area RSEG    (ABS,DATA)
      000000                        165 	.org 0x0000
                           000080   166 _P0_0	=	0x0080
                           000081   167 _P0_1	=	0x0081
                           000082   168 _P0_2	=	0x0082
                           000083   169 _P0_3	=	0x0083
                           000084   170 _P0_4	=	0x0084
                           000085   171 _P0_5	=	0x0085
                           000086   172 _P0_6	=	0x0086
                           000087   173 _P0_7	=	0x0087
                           000088   174 _IT0	=	0x0088
                           000089   175 _IE0	=	0x0089
                           00008A   176 _IT1	=	0x008a
                           00008B   177 _IE1	=	0x008b
                           00008C   178 _TR0	=	0x008c
                           00008D   179 _TF0	=	0x008d
                           00008E   180 _TR1	=	0x008e
                           00008F   181 _TF1	=	0x008f
                           000090   182 _P1_0	=	0x0090
                           000091   183 _P1_1	=	0x0091
                           000092   184 _P1_2	=	0x0092
                           000093   185 _P1_3	=	0x0093
                           000094   186 _P1_4	=	0x0094
                           000095   187 _P1_5	=	0x0095
                           000096   188 _P1_6	=	0x0096
                           000097   189 _P1_7	=	0x0097
                           000098   190 _RI	=	0x0098
                           000099   191 _TI	=	0x0099
                           00009A   192 _RB8	=	0x009a
                           00009B   193 _TB8	=	0x009b
                           00009C   194 _REN	=	0x009c
                           00009D   195 _SM2	=	0x009d
                           00009E   196 _SM1	=	0x009e
                           00009F   197 _SM0	=	0x009f
                           0000A0   198 _P2_0	=	0x00a0
                           0000A1   199 _P2_1	=	0x00a1
                           0000A2   200 _P2_2	=	0x00a2
                           0000A3   201 _P2_3	=	0x00a3
                           0000A4   202 _P2_4	=	0x00a4
                           0000A5   203 _P2_5	=	0x00a5
                           0000A6   204 _P2_6	=	0x00a6
                           0000A7   205 _P2_7	=	0x00a7
                           0000A8   206 _EX0	=	0x00a8
                           0000A9   207 _ET0	=	0x00a9
                           0000AA   208 _EX1	=	0x00aa
                           0000AB   209 _ET1	=	0x00ab
                           0000AC   210 _ES	=	0x00ac
                           0000AF   211 _EA	=	0x00af
                           0000B0   212 _P3_0	=	0x00b0
                           0000B1   213 _P3_1	=	0x00b1
                           0000B2   214 _P3_2	=	0x00b2
                           0000B3   215 _P3_3	=	0x00b3
                           0000B4   216 _P3_4	=	0x00b4
                           0000B5   217 _P3_5	=	0x00b5
                           0000B6   218 _P3_6	=	0x00b6
                           0000B7   219 _P3_7	=	0x00b7
                           0000B0   220 _RXD	=	0x00b0
                           0000B1   221 _TXD	=	0x00b1
                           0000B2   222 _INT0	=	0x00b2
                           0000B3   223 _INT1	=	0x00b3
                           0000B4   224 _T0	=	0x00b4
                           0000B5   225 _T1	=	0x00b5
                           0000B6   226 _WR	=	0x00b6
                           0000B7   227 _RD	=	0x00b7
                           0000B8   228 _PX0	=	0x00b8
                           0000B9   229 _PT0	=	0x00b9
                           0000BA   230 _PX1	=	0x00ba
                           0000BB   231 _PT1	=	0x00bb
                           0000BC   232 _PS	=	0x00bc
                           0000D0   233 _P	=	0x00d0
                           0000D1   234 _FL	=	0x00d1
                           0000D2   235 _OV	=	0x00d2
                           0000D3   236 _RS0	=	0x00d3
                           0000D4   237 _RS1	=	0x00d4
                           0000D5   238 _F0	=	0x00d5
                           0000D6   239 _AC	=	0x00d6
                           0000D7   240 _CY	=	0x00d7
                           0000FF   241 _P_NC	=	0x00ff
                           000080   242 _RS_P0	=	0x0080
                           000081   243 _RW_P0	=	0x0081
                           000082   244 _EN_P0	=	0x0082
                           000090   245 _RS_P1	=	0x0090
                           000091   246 _RW_P1	=	0x0091
                           000092   247 _EN_P1	=	0x0092
                           0000A0   248 _RS_P2	=	0x00a0
                           0000A1   249 _RW_P2	=	0x00a1
                           0000A2   250 _EN_P2	=	0x00a2
                           0000B0   251 _RS_P3	=	0x00b0
                           0000B1   252 _RW_P3	=	0x00b1
                           0000B2   253 _EN_P3	=	0x00b2
      000000                        254 _pinSetup_pin_65536_11:
      000000                        255 	.ds 1
                                    256 ;--------------------------------------------------------
                                    257 ; overlayable register banks
                                    258 ;--------------------------------------------------------
                                    259 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        260 	.ds 8
                                    261 ;--------------------------------------------------------
                                    262 ; internal ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area DSEG    (DATA)
      000021                        265 _LCDLineAddress::
      000021                        266 	.ds 8
      000029                        267 ___config::
      000029                        268 	.ds 3
      00002C                        269 _printString_PARM_2:
      00002C                        270 	.ds 3
                                    271 ;--------------------------------------------------------
                                    272 ; overlayable items in internal ram 
                                    273 ;--------------------------------------------------------
                                    274 	.area	OSEG    (OVR,DATA)
      000042                        275 _LCDSetup_PARM_2:
      000042                        276 	.ds 1
      000043                        277 _LCDSetup_PARM_3:
      000043                        278 	.ds 1
                                    279 	.area	OSEG    (OVR,DATA)
      000042                        280 _pinSetup_PARM_2:
      000042                        281 	.ds 1
                                    282 ;--------------------------------------------------------
                                    283 ; indirectly addressable internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area ISEG    (DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; absolute internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area IABS    (ABS,DATA)
                                    290 	.area IABS    (ABS,DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; bit data
                                    293 ;--------------------------------------------------------
                                    294 	.area BSEG    (BIT)
                                    295 ;--------------------------------------------------------
                                    296 ; paged external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area PSEG    (PAG,XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XSEG    (XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; absolute external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XABS    (ABS,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external initialized ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XISEG   (XDATA)
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT0 (CODE)
                                    313 	.area GSINIT1 (CODE)
                                    314 	.area GSINIT2 (CODE)
                                    315 	.area GSINIT3 (CODE)
                                    316 	.area GSINIT4 (CODE)
                                    317 	.area GSINIT5 (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 	.area GSFINAL (CODE)
                                    320 	.area CSEG    (CODE)
                                    321 ;--------------------------------------------------------
                                    322 ; global & static initialisations
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
                                    325 	.area GSINIT  (CODE)
                                    326 	.area GSFINAL (CODE)
                                    327 	.area GSINIT  (CODE)
                                    328 ;	src/libs/lcd.h:75: uint16_t LCDLineAddress[] = {0x80, 0xC0, 0x90, 0xD0};
      000077 75 21 80         [24]  329 	mov	(_LCDLineAddress + 0),#0x80
      00007A 75 22 00         [24]  330 	mov	(_LCDLineAddress + 1),#0x00
      00007D 75 23 C0         [24]  331 	mov	((_LCDLineAddress + 0x0002) + 0),#0xc0
      000080 75 24 00         [24]  332 	mov	((_LCDLineAddress + 0x0002) + 1),#0x00
      000083 75 25 90         [24]  333 	mov	((_LCDLineAddress + 0x0004) + 0),#0x90
      000086 75 26 00         [24]  334 	mov	((_LCDLineAddress + 0x0004) + 1),#0x00
      000089 75 27 D0         [24]  335 	mov	((_LCDLineAddress + 0x0006) + 0),#0xd0
      00008C 75 28 00         [24]  336 	mov	((_LCDLineAddress + 0x0006) + 1),#0x00
                                    337 ;--------------------------------------------------------
                                    338 ; Home
                                    339 ;--------------------------------------------------------
                                    340 	.area HOME    (CODE)
                                    341 	.area HOME    (CODE)
                                    342 ;--------------------------------------------------------
                                    343 ; code
                                    344 ;--------------------------------------------------------
                                    345 	.area CSEG    (CODE)
                                    346 ;------------------------------------------------------------
                                    347 ;Allocation info for local variables in function 'LCDSetup'
                                    348 ;------------------------------------------------------------
                                    349 ;lcdDatabusType            Allocated with name '_LCDSetup_PARM_2'
                                    350 ;lcdBusModes               Allocated with name '_LCDSetup_PARM_3'
                                    351 ;lcdType                   Allocated to registers r7 
                                    352 ;------------------------------------------------------------
                                    353 ;	src/libs/lcd.c:5: int LCDSetup(uint8_t lcdType, uint8_t lcdDatabusType, uint8_t lcdBusModes)
                                    354 ;	-----------------------------------------
                                    355 ;	 function LCDSetup
                                    356 ;	-----------------------------------------
      000144                        357 _LCDSetup:
                           000007   358 	ar7 = 0x07
                           000006   359 	ar6 = 0x06
                           000005   360 	ar5 = 0x05
                           000004   361 	ar4 = 0x04
                           000003   362 	ar3 = 0x03
                           000002   363 	ar2 = 0x02
                           000001   364 	ar1 = 0x01
                           000000   365 	ar0 = 0x00
      000144 AF 82            [24]  366 	mov	r7,dpl
                                    367 ;	src/libs/lcd.c:7: __config.LCDType = lcdType;
      000146 8F 29            [24]  368 	mov	___config,r7
                                    369 ;	src/libs/lcd.c:8: __config.__LCDBusModes = lcdBusModes;
      000148 85 43 2A         [24]  370 	mov	(___config + 0x0001),_LCDSetup_PARM_3
                                    371 ;	src/libs/lcd.c:9: __config.LCDDatabusType = lcdDatabusType;
      00014B 85 42 2B         [24]  372 	mov	(___config + 0x0002),_LCDSetup_PARM_2
                                    373 ;	src/libs/lcd.c:10: return 0;
      00014E 90 00 00         [24]  374 	mov	dptr,#0x0000
                                    375 ;	src/libs/lcd.c:11: }
      000151 22               [24]  376 	ret
                                    377 ;------------------------------------------------------------
                                    378 ;Allocation info for local variables in function 'pinSetup'
                                    379 ;------------------------------------------------------------
                                    380 ;pin                       Allocated with name '_pinSetup_pin_65536_11'
                                    381 ;modes                     Allocated with name '_pinSetup_PARM_2'
                                    382 ;------------------------------------------------------------
                                    383 ;	src/libs/lcd.c:13: void pinSetup(__sbit pin, uint8_t modes){
                                    384 ;	-----------------------------------------
                                    385 ;	 function pinSetup
                                    386 ;	-----------------------------------------
      000152                        387 _pinSetup:
                                    388 ;	src/libs/lcd.c:15: pin = modes;
                                    389 ;	assignBit
      000152 E5 42            [12]  390 	mov	a,_pinSetup_PARM_2
      000154 24 FF            [12]  391 	add	a,#0xff
      000156 92 00            [24]  392 	mov	_pinSetup_pin_65536_11,c
                                    393 ;	src/libs/lcd.c:16: }
      000158 22               [24]  394 	ret
                                    395 ;------------------------------------------------------------
                                    396 ;Allocation info for local variables in function 'LCDInit'
                                    397 ;------------------------------------------------------------
                                    398 ;	src/libs/lcd.c:18: void LCDInit(){
                                    399 ;	-----------------------------------------
                                    400 ;	 function LCDInit
                                    401 ;	-----------------------------------------
      000159                        402 _LCDInit:
                                    403 ;	src/libs/lcd.c:20: LCDCmdWrite(RETURN_HOME);
      000159 75 82 02         [24]  404 	mov	dpl,#0x02
      00015C 12 01 81         [24]  405 	lcall	_LCDCmdWrite
                                    406 ;	src/libs/lcd.c:22: if (__config.__LCDBusModes == BUS4){
      00015F AF 2A            [24]  407 	mov	r7,(___config + 0x0001)
      000161 BF 01 08         [24]  408 	cjne	r7,#0x01,00104$
                                    409 ;	src/libs/lcd.c:23: LCDCmdWrite(CMD_LCD_FOUR_BIT_MODE);
      000164 75 82 28         [24]  410 	mov	dpl,#0x28
      000167 12 01 81         [24]  411 	lcall	_LCDCmdWrite
      00016A 80 09            [24]  412 	sjmp	00105$
      00016C                        413 00104$:
                                    414 ;	src/libs/lcd.c:24: } else if (__config.__LCDBusModes == BUS8){
      00016C EF               [12]  415 	mov	a,r7
      00016D 70 06            [24]  416 	jnz	00105$
                                    417 ;	src/libs/lcd.c:25: LCDCmdWrite(CMD_LCD_EIGHT_BIT_MODE);
      00016F 75 82 38         [24]  418 	mov	dpl,#0x38
      000172 12 01 81         [24]  419 	lcall	_LCDCmdWrite
      000175                        420 00105$:
                                    421 ;	src/libs/lcd.c:28: LCDCmdWrite(DISPLAY_ON_CURSOR_BLINK_1);
      000175 75 82 0E         [24]  422 	mov	dpl,#0x0e
      000178 12 01 81         [24]  423 	lcall	_LCDCmdWrite
                                    424 ;	src/libs/lcd.c:29: LCDCmdWrite(CLEAR_SCREEN);
      00017B 75 82 01         [24]  425 	mov	dpl,#0x01
                                    426 ;	src/libs/lcd.c:31: }
      00017E 02 01 81         [24]  427 	ljmp	_LCDCmdWrite
                                    428 ;------------------------------------------------------------
                                    429 ;Allocation info for local variables in function 'LCDCmdWrite'
                                    430 ;------------------------------------------------------------
                                    431 ;cmd                       Allocated to registers r7 
                                    432 ;------------------------------------------------------------
                                    433 ;	src/libs/lcd.c:33: int LCDCmdWrite(char cmd){
                                    434 ;	-----------------------------------------
                                    435 ;	 function LCDCmdWrite
                                    436 ;	-----------------------------------------
      000181                        437 _LCDCmdWrite:
      000181 AF 82            [24]  438 	mov	r7,dpl
                                    439 ;	src/libs/lcd.c:35: switch (__config.LCDDatabusType)
      000183 E5 2B            [12]  440 	mov	a,(___config + 0x0002)
      000185 FE               [12]  441 	mov	r6,a
      000186 24 FC            [12]  442 	add	a,#0xff - 0x03
      000188 50 03            [24]  443 	jnc	00123$
      00018A 02 01 FF         [24]  444 	ljmp	00105$
      00018D                        445 00123$:
      00018D EE               [12]  446 	mov	a,r6
      00018E 2E               [12]  447 	add	a,r6
                                    448 ;	src/libs/lcd.c:37: case DATABUS_P0:
      00018F 90 01 93         [24]  449 	mov	dptr,#00124$
      000192 73               [24]  450 	jmp	@a+dptr
      000193                        451 00124$:
      000193 80 06            [24]  452 	sjmp	00101$
      000195 80 1D            [24]  453 	sjmp	00102$
      000197 80 34            [24]  454 	sjmp	00103$
      000199 80 4B            [24]  455 	sjmp	00104$
      00019B                        456 00101$:
                                    457 ;	src/libs/lcd.c:38: LcdDatabus_P0 = (cmd & 0xF0);
      00019B 74 F0            [12]  458 	mov	a,#0xf0
      00019D 5F               [12]  459 	anl	a,r7
      00019E F5 80            [12]  460 	mov	_P0,a
                                    461 ;	src/libs/lcd.c:39: RS_P0 = LOW;
                                    462 ;	assignBit
      0001A0 C2 80            [12]  463 	clr	_RS_P0
                                    464 ;	src/libs/lcd.c:40: RW_P0 = LOW;
                                    465 ;	assignBit
      0001A2 C2 81            [12]  466 	clr	_RW_P0
                                    467 ;	src/libs/lcd.c:41: EN_P0 = HIGH;
                                    468 ;	assignBit
      0001A4 D2 82            [12]  469 	setb	_EN_P0
                                    470 ;	src/libs/lcd.c:42: DELAY_us(1000);
      0001A6 90 03 E8         [24]  471 	mov	dptr,#0x03e8
      0001A9 C0 07            [24]  472 	push	ar7
      0001AB 12 01 16         [24]  473 	lcall	_DELAY_us
      0001AE D0 07            [24]  474 	pop	ar7
                                    475 ;	src/libs/lcd.c:43: EN_P0 = LOW;
                                    476 ;	assignBit
      0001B0 C2 82            [12]  477 	clr	_EN_P0
                                    478 ;	src/libs/lcd.c:44: break;
                                    479 ;	src/libs/lcd.c:46: case DATABUS_P1:
      0001B2 80 4F            [24]  480 	sjmp	00106$
      0001B4                        481 00102$:
                                    482 ;	src/libs/lcd.c:47: LcdDatabus_P1 = (cmd & 0xF0);
      0001B4 74 F0            [12]  483 	mov	a,#0xf0
      0001B6 5F               [12]  484 	anl	a,r7
      0001B7 F5 90            [12]  485 	mov	_P1,a
                                    486 ;	src/libs/lcd.c:48: RS_P1 = LOW;
                                    487 ;	assignBit
      0001B9 C2 90            [12]  488 	clr	_RS_P1
                                    489 ;	src/libs/lcd.c:49: RW_P1 = LOW;
                                    490 ;	assignBit
      0001BB C2 91            [12]  491 	clr	_RW_P1
                                    492 ;	src/libs/lcd.c:50: EN_P1 = HIGH;
                                    493 ;	assignBit
      0001BD D2 92            [12]  494 	setb	_EN_P1
                                    495 ;	src/libs/lcd.c:51: DELAY_us(1000);
      0001BF 90 03 E8         [24]  496 	mov	dptr,#0x03e8
      0001C2 C0 07            [24]  497 	push	ar7
      0001C4 12 01 16         [24]  498 	lcall	_DELAY_us
      0001C7 D0 07            [24]  499 	pop	ar7
                                    500 ;	src/libs/lcd.c:52: EN_P1 = LOW;
                                    501 ;	assignBit
      0001C9 C2 92            [12]  502 	clr	_EN_P1
                                    503 ;	src/libs/lcd.c:53: break;
                                    504 ;	src/libs/lcd.c:55: case DATABUS_P2:
      0001CB 80 36            [24]  505 	sjmp	00106$
      0001CD                        506 00103$:
                                    507 ;	src/libs/lcd.c:56: LcdDatabus_P2 = (cmd & 0xF0);
      0001CD 74 F0            [12]  508 	mov	a,#0xf0
      0001CF 5F               [12]  509 	anl	a,r7
      0001D0 F5 A0            [12]  510 	mov	_P2,a
                                    511 ;	src/libs/lcd.c:57: RS_P2 = LOW;
                                    512 ;	assignBit
      0001D2 C2 A0            [12]  513 	clr	_RS_P2
                                    514 ;	src/libs/lcd.c:58: RW_P2 = LOW;
                                    515 ;	assignBit
      0001D4 C2 A1            [12]  516 	clr	_RW_P2
                                    517 ;	src/libs/lcd.c:59: EN_P2 = HIGH;
                                    518 ;	assignBit
      0001D6 D2 A2            [12]  519 	setb	_EN_P2
                                    520 ;	src/libs/lcd.c:60: DELAY_us(1000);
      0001D8 90 03 E8         [24]  521 	mov	dptr,#0x03e8
      0001DB C0 07            [24]  522 	push	ar7
      0001DD 12 01 16         [24]  523 	lcall	_DELAY_us
      0001E0 D0 07            [24]  524 	pop	ar7
                                    525 ;	src/libs/lcd.c:61: EN_P2 = LOW;
                                    526 ;	assignBit
      0001E2 C2 A2            [12]  527 	clr	_EN_P2
                                    528 ;	src/libs/lcd.c:62: break;
                                    529 ;	src/libs/lcd.c:64: case DATABUS_P3:
      0001E4 80 1D            [24]  530 	sjmp	00106$
      0001E6                        531 00104$:
                                    532 ;	src/libs/lcd.c:65: LcdDatabus_P3 = (cmd & 0xF0);
      0001E6 74 F0            [12]  533 	mov	a,#0xf0
      0001E8 5F               [12]  534 	anl	a,r7
      0001E9 F5 B0            [12]  535 	mov	_P3,a
                                    536 ;	src/libs/lcd.c:66: RS_P3 = LOW;
                                    537 ;	assignBit
      0001EB C2 B0            [12]  538 	clr	_RS_P3
                                    539 ;	src/libs/lcd.c:67: RW_P3 = LOW;
                                    540 ;	assignBit
      0001ED C2 B1            [12]  541 	clr	_RW_P3
                                    542 ;	src/libs/lcd.c:68: EN_P3 = HIGH;
                                    543 ;	assignBit
      0001EF D2 B2            [12]  544 	setb	_EN_P3
                                    545 ;	src/libs/lcd.c:69: DELAY_us(1000);
      0001F1 90 03 E8         [24]  546 	mov	dptr,#0x03e8
      0001F4 C0 07            [24]  547 	push	ar7
      0001F6 12 01 16         [24]  548 	lcall	_DELAY_us
      0001F9 D0 07            [24]  549 	pop	ar7
                                    550 ;	src/libs/lcd.c:70: EN_P3 = LOW;
                                    551 ;	assignBit
      0001FB C2 B2            [12]  552 	clr	_EN_P3
                                    553 ;	src/libs/lcd.c:71: break;
                                    554 ;	src/libs/lcd.c:73: default:
      0001FD 80 04            [24]  555 	sjmp	00106$
      0001FF                        556 00105$:
                                    557 ;	src/libs/lcd.c:74: return -1;
      0001FF 90 FF FF         [24]  558 	mov	dptr,#0xffff
      000202 22               [24]  559 	ret
                                    560 ;	src/libs/lcd.c:75: }
      000203                        561 00106$:
                                    562 ;	src/libs/lcd.c:77: DELAY_us(10000);
      000203 90 27 10         [24]  563 	mov	dptr,#0x2710
      000206 C0 07            [24]  564 	push	ar7
      000208 12 01 16         [24]  565 	lcall	_DELAY_us
      00020B D0 07            [24]  566 	pop	ar7
                                    567 ;	src/libs/lcd.c:79: switch (__config.LCDDatabusType)
      00020D E5 2B            [12]  568 	mov	a,(___config + 0x0002)
      00020F FE               [12]  569 	mov	r6,a
      000210 24 FC            [12]  570 	add	a,#0xff - 0x03
      000212 50 03            [24]  571 	jnc	00125$
      000214 02 02 93         [24]  572 	ljmp	00111$
      000217                        573 00125$:
      000217 EE               [12]  574 	mov	a,r6
      000218 2E               [12]  575 	add	a,r6
                                    576 ;	src/libs/lcd.c:81: case DATABUS_P0:
      000219 90 02 1D         [24]  577 	mov	dptr,#00126$
      00021C 73               [24]  578 	jmp	@a+dptr
      00021D                        579 00126$:
      00021D 80 06            [24]  580 	sjmp	00107$
      00021F 80 20            [24]  581 	sjmp	00108$
      000221 80 3A            [24]  582 	sjmp	00109$
      000223 80 54            [24]  583 	sjmp	00110$
      000225                        584 00107$:
                                    585 ;	src/libs/lcd.c:82: LcdDatabus_P0 = ((cmd<<4) & 0xF0);
      000225 8F 06            [24]  586 	mov	ar6,r7
      000227 EE               [12]  587 	mov	a,r6
      000228 C4               [12]  588 	swap	a
      000229 54 F0            [12]  589 	anl	a,#0xf0
      00022B FE               [12]  590 	mov	r6,a
      00022C 74 F0            [12]  591 	mov	a,#0xf0
      00022E 5E               [12]  592 	anl	a,r6
      00022F F5 80            [12]  593 	mov	_P0,a
                                    594 ;	src/libs/lcd.c:83: RS_P0 = LOW;
                                    595 ;	assignBit
      000231 C2 80            [12]  596 	clr	_RS_P0
                                    597 ;	src/libs/lcd.c:84: RW_P0 = LOW;
                                    598 ;	assignBit
      000233 C2 81            [12]  599 	clr	_RW_P0
                                    600 ;	src/libs/lcd.c:85: EN_P0 = HIGH;
                                    601 ;	assignBit
      000235 D2 82            [12]  602 	setb	_EN_P0
                                    603 ;	src/libs/lcd.c:86: DELAY_us(1000);
      000237 90 03 E8         [24]  604 	mov	dptr,#0x03e8
      00023A 12 01 16         [24]  605 	lcall	_DELAY_us
                                    606 ;	src/libs/lcd.c:87: EN_P0 = LOW;
                                    607 ;	assignBit
      00023D C2 82            [12]  608 	clr	_EN_P0
                                    609 ;	src/libs/lcd.c:88: break;
                                    610 ;	src/libs/lcd.c:89: case DATABUS_P1:
      00023F 80 56            [24]  611 	sjmp	00112$
      000241                        612 00108$:
                                    613 ;	src/libs/lcd.c:90: LcdDatabus_P1 = ((cmd<<4) & 0xF0);
      000241 8F 06            [24]  614 	mov	ar6,r7
      000243 EE               [12]  615 	mov	a,r6
      000244 C4               [12]  616 	swap	a
      000245 54 F0            [12]  617 	anl	a,#0xf0
      000247 FE               [12]  618 	mov	r6,a
      000248 74 F0            [12]  619 	mov	a,#0xf0
      00024A 5E               [12]  620 	anl	a,r6
      00024B F5 90            [12]  621 	mov	_P1,a
                                    622 ;	src/libs/lcd.c:91: RS_P1 = LOW;
                                    623 ;	assignBit
      00024D C2 90            [12]  624 	clr	_RS_P1
                                    625 ;	src/libs/lcd.c:92: RW_P1 = LOW;
                                    626 ;	assignBit
      00024F C2 91            [12]  627 	clr	_RW_P1
                                    628 ;	src/libs/lcd.c:93: EN_P1 = HIGH;
                                    629 ;	assignBit
      000251 D2 92            [12]  630 	setb	_EN_P1
                                    631 ;	src/libs/lcd.c:94: DELAY_us(1000);
      000253 90 03 E8         [24]  632 	mov	dptr,#0x03e8
      000256 12 01 16         [24]  633 	lcall	_DELAY_us
                                    634 ;	src/libs/lcd.c:95: EN_P1 = LOW;
                                    635 ;	assignBit
      000259 C2 92            [12]  636 	clr	_EN_P1
                                    637 ;	src/libs/lcd.c:96: break;
                                    638 ;	src/libs/lcd.c:97: case DATABUS_P2:
      00025B 80 3A            [24]  639 	sjmp	00112$
      00025D                        640 00109$:
                                    641 ;	src/libs/lcd.c:98: LcdDatabus_P2 = ((cmd<<4) & 0xF0);
      00025D 8F 06            [24]  642 	mov	ar6,r7
      00025F EE               [12]  643 	mov	a,r6
      000260 C4               [12]  644 	swap	a
      000261 54 F0            [12]  645 	anl	a,#0xf0
      000263 FE               [12]  646 	mov	r6,a
      000264 74 F0            [12]  647 	mov	a,#0xf0
      000266 5E               [12]  648 	anl	a,r6
      000267 F5 A0            [12]  649 	mov	_P2,a
                                    650 ;	src/libs/lcd.c:99: RS_P2 = LOW;
                                    651 ;	assignBit
      000269 C2 A0            [12]  652 	clr	_RS_P2
                                    653 ;	src/libs/lcd.c:100: RW_P2 = LOW;
                                    654 ;	assignBit
      00026B C2 A1            [12]  655 	clr	_RW_P2
                                    656 ;	src/libs/lcd.c:101: EN_P2 = HIGH;
                                    657 ;	assignBit
      00026D D2 A2            [12]  658 	setb	_EN_P2
                                    659 ;	src/libs/lcd.c:102: DELAY_us(1000);
      00026F 90 03 E8         [24]  660 	mov	dptr,#0x03e8
      000272 12 01 16         [24]  661 	lcall	_DELAY_us
                                    662 ;	src/libs/lcd.c:103: EN_P2 = LOW;
                                    663 ;	assignBit
      000275 C2 A2            [12]  664 	clr	_EN_P2
                                    665 ;	src/libs/lcd.c:104: break;
                                    666 ;	src/libs/lcd.c:105: case DATABUS_P3:
      000277 80 1E            [24]  667 	sjmp	00112$
      000279                        668 00110$:
                                    669 ;	src/libs/lcd.c:106: LcdDatabus_P3 = ((cmd<<4) & 0xF0);
      000279 EF               [12]  670 	mov	a,r7
      00027A C4               [12]  671 	swap	a
      00027B 54 F0            [12]  672 	anl	a,#0xf0
      00027D FF               [12]  673 	mov	r7,a
      00027E 74 F0            [12]  674 	mov	a,#0xf0
      000280 5F               [12]  675 	anl	a,r7
      000281 F5 B0            [12]  676 	mov	_P3,a
                                    677 ;	src/libs/lcd.c:107: RS_P3 = LOW;
                                    678 ;	assignBit
      000283 C2 B0            [12]  679 	clr	_RS_P3
                                    680 ;	src/libs/lcd.c:108: RW_P3 = LOW;
                                    681 ;	assignBit
      000285 C2 B1            [12]  682 	clr	_RW_P3
                                    683 ;	src/libs/lcd.c:109: EN_P3 = HIGH;
                                    684 ;	assignBit
      000287 D2 B2            [12]  685 	setb	_EN_P3
                                    686 ;	src/libs/lcd.c:110: DELAY_us(1000);
      000289 90 03 E8         [24]  687 	mov	dptr,#0x03e8
      00028C 12 01 16         [24]  688 	lcall	_DELAY_us
                                    689 ;	src/libs/lcd.c:111: EN_P3 = LOW;
                                    690 ;	assignBit
      00028F C2 B2            [12]  691 	clr	_EN_P3
                                    692 ;	src/libs/lcd.c:112: break;
                                    693 ;	src/libs/lcd.c:113: default:
      000291 80 04            [24]  694 	sjmp	00112$
      000293                        695 00111$:
                                    696 ;	src/libs/lcd.c:114: return -1;
      000293 90 FF FF         [24]  697 	mov	dptr,#0xffff
                                    698 ;	src/libs/lcd.c:115: }
      000296 22               [24]  699 	ret
      000297                        700 00112$:
                                    701 ;	src/libs/lcd.c:117: DELAY_us(10000);
      000297 90 27 10         [24]  702 	mov	dptr,#0x2710
      00029A 12 01 16         [24]  703 	lcall	_DELAY_us
                                    704 ;	src/libs/lcd.c:118: return 0;
      00029D 90 00 00         [24]  705 	mov	dptr,#0x0000
                                    706 ;	src/libs/lcd.c:119: }
      0002A0 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'LCDDataWrite'
                                    710 ;------------------------------------------------------------
                                    711 ;data                      Allocated to registers r7 
                                    712 ;------------------------------------------------------------
                                    713 ;	src/libs/lcd.c:121: int LCDDataWrite(char data){
                                    714 ;	-----------------------------------------
                                    715 ;	 function LCDDataWrite
                                    716 ;	-----------------------------------------
      0002A1                        717 _LCDDataWrite:
      0002A1 AF 82            [24]  718 	mov	r7,dpl
                                    719 ;	src/libs/lcd.c:123: switch (__config.LCDDatabusType)
      0002A3 E5 2B            [12]  720 	mov	a,(___config + 0x0002)
      0002A5 FE               [12]  721 	mov	r6,a
      0002A6 24 FC            [12]  722 	add	a,#0xff - 0x03
      0002A8 50 03            [24]  723 	jnc	00123$
      0002AA 02 03 1F         [24]  724 	ljmp	00105$
      0002AD                        725 00123$:
      0002AD EE               [12]  726 	mov	a,r6
      0002AE 2E               [12]  727 	add	a,r6
                                    728 ;	src/libs/lcd.c:125: case DATABUS_P0:
      0002AF 90 02 B3         [24]  729 	mov	dptr,#00124$
      0002B2 73               [24]  730 	jmp	@a+dptr
      0002B3                        731 00124$:
      0002B3 80 06            [24]  732 	sjmp	00101$
      0002B5 80 1D            [24]  733 	sjmp	00102$
      0002B7 80 34            [24]  734 	sjmp	00103$
      0002B9 80 4B            [24]  735 	sjmp	00104$
      0002BB                        736 00101$:
                                    737 ;	src/libs/lcd.c:126: LcdDatabus_P0 = (data & 0xF0);
      0002BB 74 F0            [12]  738 	mov	a,#0xf0
      0002BD 5F               [12]  739 	anl	a,r7
      0002BE F5 80            [12]  740 	mov	_P0,a
                                    741 ;	src/libs/lcd.c:127: RS_P0 = HIGH;
                                    742 ;	assignBit
      0002C0 D2 80            [12]  743 	setb	_RS_P0
                                    744 ;	src/libs/lcd.c:128: RW_P0 = LOW;
                                    745 ;	assignBit
      0002C2 C2 81            [12]  746 	clr	_RW_P0
                                    747 ;	src/libs/lcd.c:129: EN_P0 = HIGH;
                                    748 ;	assignBit
      0002C4 D2 82            [12]  749 	setb	_EN_P0
                                    750 ;	src/libs/lcd.c:130: DELAY_us(1000);
      0002C6 90 03 E8         [24]  751 	mov	dptr,#0x03e8
      0002C9 C0 07            [24]  752 	push	ar7
      0002CB 12 01 16         [24]  753 	lcall	_DELAY_us
      0002CE D0 07            [24]  754 	pop	ar7
                                    755 ;	src/libs/lcd.c:131: EN_P0 = LOW;
                                    756 ;	assignBit
      0002D0 C2 82            [12]  757 	clr	_EN_P0
                                    758 ;	src/libs/lcd.c:132: break;
                                    759 ;	src/libs/lcd.c:134: case DATABUS_P1:
      0002D2 80 4F            [24]  760 	sjmp	00106$
      0002D4                        761 00102$:
                                    762 ;	src/libs/lcd.c:135: LcdDatabus_P1 = (data & 0xF0);
      0002D4 74 F0            [12]  763 	mov	a,#0xf0
      0002D6 5F               [12]  764 	anl	a,r7
      0002D7 F5 90            [12]  765 	mov	_P1,a
                                    766 ;	src/libs/lcd.c:136: RS_P1 = HIGH;
                                    767 ;	assignBit
      0002D9 D2 90            [12]  768 	setb	_RS_P1
                                    769 ;	src/libs/lcd.c:137: RW_P1 = LOW;
                                    770 ;	assignBit
      0002DB C2 91            [12]  771 	clr	_RW_P1
                                    772 ;	src/libs/lcd.c:138: EN_P1 = HIGH;
                                    773 ;	assignBit
      0002DD D2 92            [12]  774 	setb	_EN_P1
                                    775 ;	src/libs/lcd.c:139: DELAY_us(1000);
      0002DF 90 03 E8         [24]  776 	mov	dptr,#0x03e8
      0002E2 C0 07            [24]  777 	push	ar7
      0002E4 12 01 16         [24]  778 	lcall	_DELAY_us
      0002E7 D0 07            [24]  779 	pop	ar7
                                    780 ;	src/libs/lcd.c:140: EN_P1 = LOW;
                                    781 ;	assignBit
      0002E9 C2 92            [12]  782 	clr	_EN_P1
                                    783 ;	src/libs/lcd.c:141: break;
                                    784 ;	src/libs/lcd.c:143: case DATABUS_P2:
      0002EB 80 36            [24]  785 	sjmp	00106$
      0002ED                        786 00103$:
                                    787 ;	src/libs/lcd.c:144: LcdDatabus_P2 = (data & 0xF0);
      0002ED 74 F0            [12]  788 	mov	a,#0xf0
      0002EF 5F               [12]  789 	anl	a,r7
      0002F0 F5 A0            [12]  790 	mov	_P2,a
                                    791 ;	src/libs/lcd.c:145: RS_P2 = HIGH;
                                    792 ;	assignBit
      0002F2 D2 A0            [12]  793 	setb	_RS_P2
                                    794 ;	src/libs/lcd.c:146: RW_P2 = LOW;
                                    795 ;	assignBit
      0002F4 C2 A1            [12]  796 	clr	_RW_P2
                                    797 ;	src/libs/lcd.c:147: EN_P2 = HIGH;
                                    798 ;	assignBit
      0002F6 D2 A2            [12]  799 	setb	_EN_P2
                                    800 ;	src/libs/lcd.c:148: DELAY_us(1000);
      0002F8 90 03 E8         [24]  801 	mov	dptr,#0x03e8
      0002FB C0 07            [24]  802 	push	ar7
      0002FD 12 01 16         [24]  803 	lcall	_DELAY_us
      000300 D0 07            [24]  804 	pop	ar7
                                    805 ;	src/libs/lcd.c:149: EN_P2 = LOW;
                                    806 ;	assignBit
      000302 C2 A2            [12]  807 	clr	_EN_P2
                                    808 ;	src/libs/lcd.c:150: break;
                                    809 ;	src/libs/lcd.c:152: case DATABUS_P3:
      000304 80 1D            [24]  810 	sjmp	00106$
      000306                        811 00104$:
                                    812 ;	src/libs/lcd.c:153: LcdDatabus_P3 = (data & 0xF0);
      000306 74 F0            [12]  813 	mov	a,#0xf0
      000308 5F               [12]  814 	anl	a,r7
      000309 F5 B0            [12]  815 	mov	_P3,a
                                    816 ;	src/libs/lcd.c:154: RS_P3 = HIGH;
                                    817 ;	assignBit
      00030B D2 B0            [12]  818 	setb	_RS_P3
                                    819 ;	src/libs/lcd.c:155: RW_P3 = LOW;
                                    820 ;	assignBit
      00030D C2 B1            [12]  821 	clr	_RW_P3
                                    822 ;	src/libs/lcd.c:156: EN_P3 = HIGH;
                                    823 ;	assignBit
      00030F D2 B2            [12]  824 	setb	_EN_P3
                                    825 ;	src/libs/lcd.c:157: DELAY_us(1000);
      000311 90 03 E8         [24]  826 	mov	dptr,#0x03e8
      000314 C0 07            [24]  827 	push	ar7
      000316 12 01 16         [24]  828 	lcall	_DELAY_us
      000319 D0 07            [24]  829 	pop	ar7
                                    830 ;	src/libs/lcd.c:158: EN_P3 = LOW;
                                    831 ;	assignBit
      00031B C2 B2            [12]  832 	clr	_EN_P3
                                    833 ;	src/libs/lcd.c:159: break;
                                    834 ;	src/libs/lcd.c:161: default:
      00031D 80 04            [24]  835 	sjmp	00106$
      00031F                        836 00105$:
                                    837 ;	src/libs/lcd.c:162: return -1;
      00031F 90 FF FF         [24]  838 	mov	dptr,#0xffff
      000322 22               [24]  839 	ret
                                    840 ;	src/libs/lcd.c:163: }
      000323                        841 00106$:
                                    842 ;	src/libs/lcd.c:165: DELAY_us(10000);
      000323 90 27 10         [24]  843 	mov	dptr,#0x2710
      000326 C0 07            [24]  844 	push	ar7
      000328 12 01 16         [24]  845 	lcall	_DELAY_us
      00032B D0 07            [24]  846 	pop	ar7
                                    847 ;	src/libs/lcd.c:167: switch (__config.LCDDatabusType)
      00032D E5 2B            [12]  848 	mov	a,(___config + 0x0002)
      00032F FE               [12]  849 	mov	r6,a
      000330 24 FC            [12]  850 	add	a,#0xff - 0x03
      000332 50 03            [24]  851 	jnc	00125$
      000334 02 03 B3         [24]  852 	ljmp	00111$
      000337                        853 00125$:
      000337 EE               [12]  854 	mov	a,r6
      000338 2E               [12]  855 	add	a,r6
                                    856 ;	src/libs/lcd.c:169: case DATABUS_P0:
      000339 90 03 3D         [24]  857 	mov	dptr,#00126$
      00033C 73               [24]  858 	jmp	@a+dptr
      00033D                        859 00126$:
      00033D 80 06            [24]  860 	sjmp	00107$
      00033F 80 20            [24]  861 	sjmp	00108$
      000341 80 3A            [24]  862 	sjmp	00109$
      000343 80 54            [24]  863 	sjmp	00110$
      000345                        864 00107$:
                                    865 ;	src/libs/lcd.c:170: LcdDatabus_P0 = ((data<<4) & 0xF0);
      000345 8F 06            [24]  866 	mov	ar6,r7
      000347 EE               [12]  867 	mov	a,r6
      000348 C4               [12]  868 	swap	a
      000349 54 F0            [12]  869 	anl	a,#0xf0
      00034B FE               [12]  870 	mov	r6,a
      00034C 74 F0            [12]  871 	mov	a,#0xf0
      00034E 5E               [12]  872 	anl	a,r6
      00034F F5 80            [12]  873 	mov	_P0,a
                                    874 ;	src/libs/lcd.c:171: RS_P0 = HIGH;
                                    875 ;	assignBit
      000351 D2 80            [12]  876 	setb	_RS_P0
                                    877 ;	src/libs/lcd.c:172: RW_P0 = LOW;
                                    878 ;	assignBit
      000353 C2 81            [12]  879 	clr	_RW_P0
                                    880 ;	src/libs/lcd.c:173: EN_P0 = HIGH;
                                    881 ;	assignBit
      000355 D2 82            [12]  882 	setb	_EN_P0
                                    883 ;	src/libs/lcd.c:174: DELAY_us(1000);
      000357 90 03 E8         [24]  884 	mov	dptr,#0x03e8
      00035A 12 01 16         [24]  885 	lcall	_DELAY_us
                                    886 ;	src/libs/lcd.c:175: EN_P0 = LOW;
                                    887 ;	assignBit
      00035D C2 82            [12]  888 	clr	_EN_P0
                                    889 ;	src/libs/lcd.c:176: break;
                                    890 ;	src/libs/lcd.c:177: case DATABUS_P1:
      00035F 80 56            [24]  891 	sjmp	00112$
      000361                        892 00108$:
                                    893 ;	src/libs/lcd.c:178: LcdDatabus_P1 = ((data<<4) & 0xF0);
      000361 8F 06            [24]  894 	mov	ar6,r7
      000363 EE               [12]  895 	mov	a,r6
      000364 C4               [12]  896 	swap	a
      000365 54 F0            [12]  897 	anl	a,#0xf0
      000367 FE               [12]  898 	mov	r6,a
      000368 74 F0            [12]  899 	mov	a,#0xf0
      00036A 5E               [12]  900 	anl	a,r6
      00036B F5 90            [12]  901 	mov	_P1,a
                                    902 ;	src/libs/lcd.c:179: RS_P1 = HIGH;
                                    903 ;	assignBit
      00036D D2 90            [12]  904 	setb	_RS_P1
                                    905 ;	src/libs/lcd.c:180: RW_P1 = LOW;
                                    906 ;	assignBit
      00036F C2 91            [12]  907 	clr	_RW_P1
                                    908 ;	src/libs/lcd.c:181: EN_P1 = HIGH;
                                    909 ;	assignBit
      000371 D2 92            [12]  910 	setb	_EN_P1
                                    911 ;	src/libs/lcd.c:182: DELAY_us(1000);
      000373 90 03 E8         [24]  912 	mov	dptr,#0x03e8
      000376 12 01 16         [24]  913 	lcall	_DELAY_us
                                    914 ;	src/libs/lcd.c:183: EN_P1 = LOW;
                                    915 ;	assignBit
      000379 C2 92            [12]  916 	clr	_EN_P1
                                    917 ;	src/libs/lcd.c:184: break;
                                    918 ;	src/libs/lcd.c:185: case DATABUS_P2:
      00037B 80 3A            [24]  919 	sjmp	00112$
      00037D                        920 00109$:
                                    921 ;	src/libs/lcd.c:186: LcdDatabus_P2 = ((data<<4) & 0xF0);
      00037D 8F 06            [24]  922 	mov	ar6,r7
      00037F EE               [12]  923 	mov	a,r6
      000380 C4               [12]  924 	swap	a
      000381 54 F0            [12]  925 	anl	a,#0xf0
      000383 FE               [12]  926 	mov	r6,a
      000384 74 F0            [12]  927 	mov	a,#0xf0
      000386 5E               [12]  928 	anl	a,r6
      000387 F5 A0            [12]  929 	mov	_P2,a
                                    930 ;	src/libs/lcd.c:187: RS_P2 = HIGH;
                                    931 ;	assignBit
      000389 D2 A0            [12]  932 	setb	_RS_P2
                                    933 ;	src/libs/lcd.c:188: RW_P2 = LOW;
                                    934 ;	assignBit
      00038B C2 A1            [12]  935 	clr	_RW_P2
                                    936 ;	src/libs/lcd.c:189: EN_P2 = HIGH;
                                    937 ;	assignBit
      00038D D2 A2            [12]  938 	setb	_EN_P2
                                    939 ;	src/libs/lcd.c:190: DELAY_us(1000);
      00038F 90 03 E8         [24]  940 	mov	dptr,#0x03e8
      000392 12 01 16         [24]  941 	lcall	_DELAY_us
                                    942 ;	src/libs/lcd.c:191: EN_P2 = LOW;
                                    943 ;	assignBit
      000395 C2 A2            [12]  944 	clr	_EN_P2
                                    945 ;	src/libs/lcd.c:192: break;
                                    946 ;	src/libs/lcd.c:193: case DATABUS_P3:
      000397 80 1E            [24]  947 	sjmp	00112$
      000399                        948 00110$:
                                    949 ;	src/libs/lcd.c:194: LcdDatabus_P3 = ((data<<4) & 0xF0);
      000399 EF               [12]  950 	mov	a,r7
      00039A C4               [12]  951 	swap	a
      00039B 54 F0            [12]  952 	anl	a,#0xf0
      00039D FF               [12]  953 	mov	r7,a
      00039E 74 F0            [12]  954 	mov	a,#0xf0
      0003A0 5F               [12]  955 	anl	a,r7
      0003A1 F5 B0            [12]  956 	mov	_P3,a
                                    957 ;	src/libs/lcd.c:195: RS_P3 = HIGH;
                                    958 ;	assignBit
      0003A3 D2 B0            [12]  959 	setb	_RS_P3
                                    960 ;	src/libs/lcd.c:196: RW_P3 = LOW;
                                    961 ;	assignBit
      0003A5 C2 B1            [12]  962 	clr	_RW_P3
                                    963 ;	src/libs/lcd.c:197: EN_P3 = HIGH;
                                    964 ;	assignBit
      0003A7 D2 B2            [12]  965 	setb	_EN_P3
                                    966 ;	src/libs/lcd.c:198: DELAY_us(1000);
      0003A9 90 03 E8         [24]  967 	mov	dptr,#0x03e8
      0003AC 12 01 16         [24]  968 	lcall	_DELAY_us
                                    969 ;	src/libs/lcd.c:199: EN_P3 = LOW;
                                    970 ;	assignBit
      0003AF C2 B2            [12]  971 	clr	_EN_P3
                                    972 ;	src/libs/lcd.c:200: break;
                                    973 ;	src/libs/lcd.c:201: default:
      0003B1 80 04            [24]  974 	sjmp	00112$
      0003B3                        975 00111$:
                                    976 ;	src/libs/lcd.c:202: return -1;
      0003B3 90 FF FF         [24]  977 	mov	dptr,#0xffff
                                    978 ;	src/libs/lcd.c:203: }
      0003B6 22               [24]  979 	ret
      0003B7                        980 00112$:
                                    981 ;	src/libs/lcd.c:205: DELAY_us(10000);
      0003B7 90 27 10         [24]  982 	mov	dptr,#0x2710
      0003BA 12 01 16         [24]  983 	lcall	_DELAY_us
                                    984 ;	src/libs/lcd.c:206: return 0;
      0003BD 90 00 00         [24]  985 	mov	dptr,#0x0000
                                    986 ;	src/libs/lcd.c:207: }
      0003C0 22               [24]  987 	ret
                                    988 ;------------------------------------------------------------
                                    989 ;Allocation info for local variables in function 'printString'
                                    990 ;------------------------------------------------------------
                                    991 ;string                    Allocated with name '_printString_PARM_2'
                                    992 ;line                      Allocated to registers r7 
                                    993 ;------------------------------------------------------------
                                    994 ;	src/libs/lcd.c:209: void printString(uint8_t line, char* string){
                                    995 ;	-----------------------------------------
                                    996 ;	 function printString
                                    997 ;	-----------------------------------------
      0003C1                        998 _printString:
                                    999 ;	src/libs/lcd.c:210: if (line == FIRST_LINE){
      0003C1 E5 82            [12] 1000 	mov	a,dpl
      0003C3 FF               [12] 1001 	mov	r7,a
      0003C4 70 08            [24] 1002 	jnz	00116$
                                   1003 ;	src/libs/lcd.c:211: LCDCmdWrite(CURSOR_TO_FIRST_LINE);
      0003C6 75 82 80         [24] 1004 	mov	dpl,#0x80
      0003C9 12 01 81         [24] 1005 	lcall	_LCDCmdWrite
      0003CC 80 3D            [24] 1006 	sjmp	00132$
      0003CE                       1007 00116$:
                                   1008 ;	src/libs/lcd.c:213: else if (line == SECOND_LINE && (__config.LCDType == LCD_16x2 
      0003CE BF 01 17         [24] 1009 	cjne	r7,#0x01,00110$
      0003D1 AE 29            [24] 1010 	mov	r6,___config
      0003D3 BE 01 02         [24] 1011 	cjne	r6,#0x01,00167$
      0003D6 80 08            [24] 1012 	sjmp	00109$
      0003D8                       1013 00167$:
                                   1014 ;	src/libs/lcd.c:214: || __config.LCDType == LCD_16x3
      0003D8 BE 02 02         [24] 1015 	cjne	r6,#0x02,00168$
      0003DB 80 03            [24] 1016 	sjmp	00109$
      0003DD                       1017 00168$:
                                   1018 ;	src/libs/lcd.c:215: || __config.LCDType == LCD_16x4)){
      0003DD BE 03 08         [24] 1019 	cjne	r6,#0x03,00110$
      0003E0                       1020 00109$:
                                   1021 ;	src/libs/lcd.c:216: LCDCmdWrite(CURSOR_TO_SECOND_LINE);
      0003E0 75 82 C0         [24] 1022 	mov	dpl,#0xc0
      0003E3 12 01 81         [24] 1023 	lcall	_LCDCmdWrite
      0003E6 80 23            [24] 1024 	sjmp	00132$
      0003E8                       1025 00110$:
                                   1026 ;	src/libs/lcd.c:218: else if (line == THIRD_LINE && (__config.LCDType == LCD_16x3
      0003E8 BF 02 12         [24] 1027 	cjne	r7,#0x02,00105$
      0003EB AE 29            [24] 1028 	mov	r6,___config
      0003ED BE 02 02         [24] 1029 	cjne	r6,#0x02,00173$
      0003F0 80 03            [24] 1030 	sjmp	00104$
      0003F2                       1031 00173$:
                                   1032 ;	src/libs/lcd.c:219: || __config.LCDType == LCD_16x4)){
      0003F2 BE 03 08         [24] 1033 	cjne	r6,#0x03,00105$
      0003F5                       1034 00104$:
                                   1035 ;	src/libs/lcd.c:220: LCDCmdWrite(CURSOR_TO_THIRD_LINE);
      0003F5 75 82 90         [24] 1036 	mov	dpl,#0x90
      0003F8 12 01 81         [24] 1037 	lcall	_LCDCmdWrite
      0003FB 80 0E            [24] 1038 	sjmp	00132$
      0003FD                       1039 00105$:
                                   1040 ;	src/libs/lcd.c:222: else if (line == FORTH_LINE && __config.LCDType == LCD_16x4){
      0003FD BF 03 0B         [24] 1041 	cjne	r7,#0x03,00132$
      000400 74 03            [12] 1042 	mov	a,#0x03
      000402 B5 29 06         [24] 1043 	cjne	a,___config,00132$
                                   1044 ;	src/libs/lcd.c:223: LCDCmdWrite(CURSOR_TO_FORTH_LINE);
      000405 75 82 D0         [24] 1045 	mov	dpl,#0xd0
      000408 12 01 81         [24] 1046 	lcall	_LCDCmdWrite
                                   1047 ;	src/libs/lcd.c:226: while(*string){
      00040B                       1048 00132$:
      00040B AD 2C            [24] 1049 	mov	r5,_printString_PARM_2
      00040D AE 2D            [24] 1050 	mov	r6,(_printString_PARM_2 + 1)
      00040F AF 2E            [24] 1051 	mov	r7,(_printString_PARM_2 + 2)
      000411                       1052 00118$:
      000411 8D 82            [24] 1053 	mov	dpl,r5
      000413 8E 83            [24] 1054 	mov	dph,r6
      000415 8F F0            [24] 1055 	mov	b,r7
      000417 12 0A BC         [24] 1056 	lcall	__gptrget
      00041A FC               [12] 1057 	mov	r4,a
      00041B 60 18            [24] 1058 	jz	00121$
                                   1059 ;	src/libs/lcd.c:227: LCDDataWrite(*string++);
      00041D 8C 82            [24] 1060 	mov	dpl,r4
      00041F 0D               [12] 1061 	inc	r5
      000420 BD 00 01         [24] 1062 	cjne	r5,#0x00,00181$
      000423 0E               [12] 1063 	inc	r6
      000424                       1064 00181$:
      000424 C0 07            [24] 1065 	push	ar7
      000426 C0 06            [24] 1066 	push	ar6
      000428 C0 05            [24] 1067 	push	ar5
      00042A 12 02 A1         [24] 1068 	lcall	_LCDDataWrite
      00042D D0 05            [24] 1069 	pop	ar5
      00042F D0 06            [24] 1070 	pop	ar6
      000431 D0 07            [24] 1071 	pop	ar7
      000433 80 DC            [24] 1072 	sjmp	00118$
      000435                       1073 00121$:
                                   1074 ;	src/libs/lcd.c:229: }
      000435 22               [24] 1075 	ret
                                   1076 	.area CSEG    (CODE)
                                   1077 	.area CONST   (CODE)
                                   1078 	.area XINIT   (CODE)
                                   1079 	.area CABS    (ABS,CODE)
