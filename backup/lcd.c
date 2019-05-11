#include "lcd.h"
#define LcdDatabus P2

LCDConfig __config;
    __sbit __at 0xA0 RS       ;
    __sbit __at 0xA1 RW       ;
    __sbit __at 0xA2 EN       ;
int LCDSetup(uint8_t lcdType, uint8_t lcdDatabusType, uint8_t lcdBusModes)
{
    __config.LCDType = lcdType;
    __config.__LCDBusModes = lcdBusModes;
    __config.LCDDatabusType = lcdDatabusType;
    // switch (lcdDatabusType)
    // {
    // case DATABUS_P0:
    //     static __sbit __at 0x80 RS       ;
    //     static __sbit __at 0x81 RW       ;
    //     static __sbit __at 0x82 EN       ;
    //     break;
    // case DATABUS_P1:
    //     static __sbit __at 0x90 RS       ;
    //     static __sbit __at 0x91 RW       ;
    //     static __sbit __at 0x92 EN       ;
    //     break;
    // case DATABUS_P2:
    //     static __sbit __at 0xA0 RS       ;
    //     static __sbit __at 0xA1 RW       ;
    //     static __sbit __at 0xA2 EN       ;
    // default:
    //     break;
    // }
}

void pinSetup(__sbit pin, uint8_t modes){
    // Set pin as input or output
    pin = modes;
}




// #ifdef LcdDatabus_P0
//     __sbit __at 0x80 RS       ;
//     __sbit __at 0x81 RW       ;
//     __sbit __at 0x82 EN       ;
// #endif

// #ifdef LcdDatabus_P1
//     __sbit __at 0x90 RS       ;
//     __sbit __at 0x91 RW       ;
//     __sbit __at 0x92 EN       ;
// #endif

// #ifdef LcdDatabus_P2
//     __sbit __at 0xA0 RS       ;
//     __sbit __at 0xA1 RW       ;
//     __sbit __at 0xA2 EN       ;
// #endif

// #ifdef LcdDatabus_P3
//     __sbit __at 0xB0 RS       ;
//     __sbit __at 0xB1 RW       ;
//     __sbit __at 0xB2 EN       ;
// #endif

void LCDInit(){
    // pinSetup(RS, OUTPUT);
    // pinSetup(RW, OUTPUT);
    // pinSetup(EN, OUTPUT);

    // RS = OUTPUT;
    // RW = OUTPUT;
    // EN = OUTPUT;

    LCDCmdWrite(RETURN_HOME);

    if (__config.__LCDBusModes == BUS4){
        LCDCmdWrite(CMD_LCD_FOUR_BIT_MODE);
    } else if (__config.__LCDBusModes == BUS8){
        LCDCmdWrite(CMD_LCD_EIGHT_BIT_MODE);
    }

    LCDCmdWrite(DISPLAY_ON_CURSOR_BLINK_1);
    LCDCmdWrite(CLEAR_SCREEN);
    
}

void LCDCmdWrite(char cmd){
    // char buff = cmd;
    // #ifdef LcdDatabus_P0
    //     LcdDatabus_P0 = (cmd & 0xF0);
    // #endif

    // #ifdef LcdDatabus_P1
    //     LcdDatabus_P1 = (cmd & 0xF0);

    // #endif

    // #ifdef LcdDatabus_P2
    //     LcdDatabus_P2 = (cmd & 0xF0);
    // #endif

    // #ifdef LcdDatabus_P3
    //     LcdDatabus_P3 = (cmd & 0xF0);
    // #endif
            LcdDatabus = (cmd & 0xF0);

    RS = LOW;
    RW = LOW;
    EN = HIGH;
    DELAY_us(1000);
    EN = LOW;

    DELAY_us(10000);

    // #ifdef LcdDatabus_P0
    //     LcdDatabus_P0 = ((cmd<<4) & 0xF0);
    // #endif

    // #ifdef LcdDatabus_P1
    //     LcdDatabus_P1 = ((cmd<<4) & 0xF0);
    // #endif

    // #ifdef LcdDatabus_P2
    //     LcdDatabus_P2 = ((cmd<<4) & 0xF0);
    // #endif

    // #ifdef LcdDatabus_P3
    //     LcdDatabus_P3 = ((cmd<<4) & 0xF0);
    // #endif
            LcdDatabus = ((cmd<<4) & 0xF0);

    RS = LOW;
    RW = LOW;
    EN = HIGH;
    DELAY_us(1000);
    EN = LOW;

    DELAY_ms(200);
}

void LCDDataWrite(char data){
    // char buff = data;
    // #ifdef LcdDatabus_P0
    //     LcdDatabus_P0 = (data & 0xF0);
    // #endif

    // #ifdef LcdDatabus_P1
    //     LcdDatabus_P1 = (data & 0xF0);

    // #endif

    // #ifdef LcdDatabus_P2
    //     LcdDatabus_P2 = (data & 0xF0);
    // #endif

    // #ifdef LcdDatabus_P3
    //     LcdDatabus_P3 = (data & 0xF0);
    // #endif

                LcdDatabus = (data & 0xF0);

    RS = HIGH;
    RW = LOW;
    EN = HIGH;
    DELAY_us(1000);
    EN = LOW;

    DELAY_us(10000);

    // #ifdef LcdDatabus_P0
    //     LcdDatabus_P0 = ((data<<4) & 0xF0);
    // #endif

    // #ifdef LcdDatabus_P1
    //     LcdDatabus_P1 = ((data<<4) & 0xF0);
    // #endif

    // #ifdef LcdDatabus_P2
    //     LcdDatabus_P2 = ((data<<4) & 0xF0);
    // #endif

    // #ifdef LcdDatabus_P3
    //     LcdDatabus_P3 = ((data<<4) & 0xF0);
    // #endif

                LcdDatabus = ((data<<4) & 0xF0);

    RS = HIGH;
    RW = LOW;
    EN = HIGH;
    DELAY_us(1000);
    EN = LOW;

    DELAY_us(10000);
}

void printString(uint8_t line, char* string){
    if (line == FIRST_LINE){
        LCDCmdWrite(CURSOR_TO_FIRST_LINE);
    }
    else if (line == SECOND_LINE){
        LCDCmdWrite(CURSOR_TO_SECOND_LINE);
    }
    else if (line == THIRD_LINE){
        LCDCmdWrite(CURSOR_TO_THIRD_LINE);
    }
    else if (line == FORTH_LINE){
        LCDCmdWrite(CURSOR_TO_FORTH_LINE);
    }
    
    while(*string){
        LCDDataWrite(*string++);
    }
}