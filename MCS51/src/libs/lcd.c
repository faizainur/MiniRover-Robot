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
    return 0;
}

void pinSetup(__sbit pin, uint8_t modes){
    // Set pin as input or output
    pin = modes;
}

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

int LCDCmdWrite(char cmd){
    // char buff = cmd;
    switch (__config.LCDDatabusType)
    {
        case DATABUS_P0:
            LcdDatabus_P0 = (cmd & 0xF0);
            RS_P0 = LOW;
            RW_P0 = LOW;
            EN_P0 = HIGH;
            DELAY_us(1000);
            EN_P0 = LOW;
            break;

        case DATABUS_P1:
            LcdDatabus_P1 = (cmd & 0xF0);
            RS_P1 = LOW;
            RW_P1 = LOW;
            EN_P1 = HIGH;
            DELAY_us(1000);
            EN_P1 = LOW;
            break;

        case DATABUS_P2:
            LcdDatabus_P2 = (cmd & 0xF0);
            RS_P2 = LOW;
            RW_P2 = LOW;
            EN_P2 = HIGH;
            DELAY_us(1000);
            EN_P2 = LOW;
            break;

        case DATABUS_P3:
            LcdDatabus_P3 = (cmd & 0xF0);
            RS_P3 = LOW;
            RW_P3 = LOW;
            EN_P3 = HIGH;
            DELAY_us(1000);
            EN_P3 = LOW;
            break;

        default:
            return -1;
    }
    
    // LcdDatabus = (cmd & 0xF0);
    DELAY_us(10000);

    switch (__config.LCDDatabusType)
    {
        case DATABUS_P0:
            LcdDatabus_P0 = ((cmd<<4) & 0xF0);
            RS_P0 = LOW;
            RW_P0 = LOW;
            EN_P0 = HIGH;
            DELAY_us(1000);
            EN_P0 = LOW;
            break;
        case DATABUS_P1:
            LcdDatabus_P1 = ((cmd<<4) & 0xF0);
            RS_P1 = LOW;
            RW_P1 = LOW;
            EN_P1 = HIGH;
            DELAY_us(1000);
            EN_P1 = LOW;
        break;
        case DATABUS_P2:
            LcdDatabus_P2 = ((cmd<<4) & 0xF0);
            RS_P2 = LOW;
            RW_P2 = LOW;
            EN_P2 = HIGH;
            DELAY_us(1000);
            EN_P2 = LOW;
            break;
        case DATABUS_P3:
            LcdDatabus_P3 = ((cmd<<4) & 0xF0);
            RS_P3 = LOW;
            RW_P3 = LOW;
            EN_P3 = HIGH;
            DELAY_us(1000);
            EN_P3 = LOW;
            break;
        default:
            return -1;
    }
    

            // LcdDatabus = ((cmd<<4) & 0xF0);

    
    DELAY_us(10000);
    return 0;
}

int LCDDataWrite(char data){
    // char buff = data;

    switch (__config.LCDDatabusType)
    {
        case DATABUS_P0:
            LcdDatabus_P0 = (data & 0xF0);
            RS_P0 = HIGH;
            RW_P0 = LOW;
            EN_P0 = HIGH;
            DELAY_us(1000);
            EN_P0 = LOW;
            break;

        case DATABUS_P1:
            LcdDatabus_P1 = (data & 0xF0);
            RS_P1 = HIGH;
            RW_P1 = LOW;
            EN_P1 = HIGH;
            DELAY_us(1000);
            EN_P1 = LOW;
            break;

        case DATABUS_P2:
            LcdDatabus_P2 = (data & 0xF0);
            RS_P2 = HIGH;
            RW_P2 = LOW;
            EN_P2 = HIGH;
            DELAY_us(1000);
            EN_P2 = LOW;
            break;

        case DATABUS_P3:
            LcdDatabus_P3 = (data & 0xF0);
            RS_P3 = HIGH;
            RW_P3 = LOW;
            EN_P3 = HIGH;
            DELAY_us(1000);
            EN_P3 = LOW;
            break;

        default:
            return -1;
    }

    DELAY_us(10000);

    switch (__config.LCDDatabusType)
    {
        case DATABUS_P0:
            LcdDatabus_P0 = ((data<<4) & 0xF0);
            RS_P0 = HIGH;
            RW_P0 = LOW;
            EN_P0 = HIGH;
            DELAY_us(1000);
            EN_P0 = LOW;
            break;
        case DATABUS_P1:
            LcdDatabus_P1 = ((data<<4) & 0xF0);
            RS_P1 = HIGH;
            RW_P1 = LOW;
            EN_P1 = HIGH;
            DELAY_us(1000);
            EN_P1 = LOW;
        break;
        case DATABUS_P2:
            LcdDatabus_P2 = ((data<<4) & 0xF0);
            RS_P2 = HIGH;
            RW_P2 = LOW;
            EN_P2 = HIGH;
            DELAY_us(1000);
            EN_P2 = LOW;
            break;
        case DATABUS_P3:
            LcdDatabus_P3 = ((data<<4) & 0xF0);
            RS_P3 = HIGH;
            RW_P3 = LOW;
            EN_P3 = HIGH;
            DELAY_us(1000);
            EN_P3 = LOW;
            break;
        default:
            return -1;
    }

    DELAY_us(10000);
    return 0;
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