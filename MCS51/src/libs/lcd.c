#include "lcd.h"


void LCDInit(){

    LCDCmdWrite(RETURN_HOME);
    LCDCmdWrite(CMD_LCD_FOUR_BIT_MODE);             // Set data bus in 4-bit mode
    LCDCmdWrite(DISPLAY_ON_CURSOR_BLINK_1);
    LCDCmdWrite(CLEAR_SCREEN);
    
}

int LCDCmdWrite(char cmd){

    LCDDatabus = (cmd & 0xF0);
           
            RS = LOW;
            RW = LOW;
            EN = HIGH;
            DELAY_us(1000);
            EN = LOW;
    
    DELAY_us(10000);

    LCDDatabus = ((cmd<<4) & 0xF0);
            RS = LOW;
            RW = LOW;
            EN = HIGH;
            DELAY_us(1000);
            EN = LOW;
    
    DELAY_us(10000);
    return 0;
}

int LCDDataWrite(char data){

    LCDDatabus = (data & 0xF0);
            RS = HIGH;
            RW = LOW;
            EN = HIGH;
            DELAY_us(1000);
            EN = LOW;
    
    DELAY_us(10000);

    LCDDatabus = ((data<<4) & 0xF0);
            RS = HIGH;
            RW = LOW;
            EN = HIGH;
            DELAY_us(1000);
            EN = LOW;

    DELAY_us(10000);
    return 0;
}

void LCDPrintString(uint8_t line, char* string){
    switch (line)
    {
    case FIRST_LINE:
        LCDCmdWrite(CURSOR_TO_FIRST_LINE);
        break;
    case SECOND_LINE:
        LCDCmdWrite(CURSOR_TO_SECOND_LINE);
        break;
    case THIRD_LINE:
        LCDCmdWrite(CURSOR_TO_THIRD_LINE);
        break;
    case FORTH_LINE:
        LCDCmdWrite(CURSOR_TO_FORTH_LINE);
        break;
    default:
        break;
    }
    
    while(*string){
        LCDDataWrite(*string++);
    }
}

void LCDDisplayNumber(uint8_t line,int number,unsigned char radix)
{
	char buffer[33];
	itoa(number,buffer,radix);
	LCDPrintString(line, buffer);
}
