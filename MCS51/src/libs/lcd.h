#include <at89x52.h>
#include "stdutils.h"
	
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "delay.h"
#include <stdbool.h>

/* LCD Bus Modes */
#define BUS8 0
#define BUS4 1

/*******************************************
    LCD Command Modes Code in Hexademical
    source : LCD Display Datasheet
    **************************************
    References of LCD Line Address 
        Line 0  ==>   0x80
        Line 1  ==>   0xC0
        Line 2  ==>   0x90
        Line 3  ==>   0xD0             
    ***************************************
 *******************************************/
#define CLEAR_SCREEN                0x01u
#define RETURN_HOME                 0x02u
#define SHIFT_CURSOR_LEFT           0x04u
#define SHIFT_CURSOR_RIGHT          0x06u
#define SHIFT_DISPLAY_RIGHT         0x05u
#define SHIFT_DISPLAY_LEFT          0x07u
#define DISPLAY_CURSOR_OFF          0x08u
#define DISPLAY_OFF_CURSOR_ON       0x0Au
#define DISPLAY_ON_CURSOR_OFF       0x0Cu
#define DISPLAY_ON_CURSOR_BLINK_1   0x0Eu
#define DISPLAY_ON_CURSOR_BLINK_2   0x0Fu
#define SHIFT_CURSOR_POS_LEFT       0x10u
#define SHIFT_CURSOR_POS_RIGHT      0x14u
#define SHIFT_ENTIRE_DISPLAY_LEFT   0x18u
#define SHIFT_ENTIRE_DISPLAY_RIGHT  0x1Cu
#define CURSOR_TO_FIRST_LINE        0x80u
#define CURSOR_TO_SECOND_LINE       0xC0u
#define CURSOR_TO_THIRD_LINE        0x90u
#define CURSOR_TO_FORTH_LINE        0xD0u
#define CMD_LCD_FOUR_BIT_MODE       0x28u
#define CMD_LCD_EIGHT_BIT_MODE      0x38u
#define NEXT_LINE                   0xn
#define CMD_LCD_TAB                 0xt
#define CMD_LCD_ENTER               0xr


/* ************************
          LCD Types
*  ********************** */
#define LCD_16x1 0
#define LCD_16x2 1
#define LCD_16x3 2
#define LCD_16x4 3

#define LCD_TYPE_CONFIG 2            // LCD Type config
                                            // Note : Set the type based on your LCD Type

/* ***********************
    LCD Data Bus
   ********************* */
#define DATABUS_P0 0
#define DATABUS_P1 1
#define DATABUS_P2 2
#define DATABUS_P3 3

#define LcdDatabus_P0 P0
#define LcdDatabus_P1 P1
#define LcdDatabus_P2 P2  
#define LcdDatabus_P3 P3

/* **********************
    Lines Identifier
   ********************* */
#define FIRST_LINE 0
#define SECOND_LINE 1
#define THIRD_LINE 2
#define FORTH_LINE 3



/* LCD Control Pin Setup */

#if LCD_TYPE_CONFIG == 0
    __sbit __at 0x80 RS       ;
    __sbit __at 0x81 RW       ;
    __sbit __at 0x82 EN       ;
#elif LCD_TYPE_CONFIG == 1
    __sbit __at 0x90 RS       ;
    __sbit __at 0x91 RW       ;
    __sbit __at 0x92 EN       ;
#elif LCD_TYPE_CONFIG == 2
    __sbit __at 0xA0 RS       ;
    __sbit __at 0xA1 RW       ;
    __sbit __at 0xA2 EN       ;
#elif LCD_TYPE_CONFIG == 3
    __sbit __at 0xB0 RS       ;
    __sbit __at 0xB1 RW       ;
    __sbit __at 0xB2 EN       ;
#endif


int LCDCmdWrite(char cmd);
int LCDDataWrite(char data);
void LCDInit();
void LCDPrintString(uint8_t line, char* string);
void LCDDisplayNumber(uint8_t line, int number,unsigned char radix);
char* itoa(int value, char* buffer, int base);
char* reverse(char *buffer, int i, int j);
inline void swap(char *x, char *y);