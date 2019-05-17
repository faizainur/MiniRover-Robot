#include "lcd.h"


void LCDInit(){

    LCDCmdWrite(RETURN_HOME);
    LCDCmdWrite(CMD_LCD_FOUR_BIT_MODE);             // Set data bus in 4-bit mode
    LCDCmdWrite(DISPLAY_ON_CURSOR_BLINK_1);
    LCDCmdWrite(CLEAR_SCREEN);
    
}

int LCDCmdWrite(char cmd){

    LcdDatabus_P2 = (cmd & 0xF0);
            RS = LOW;
            RW = LOW;
            EN = HIGH;
            DELAY_us(1000);
            EN = LOW;
    
    DELAY_us(10000);

    LcdDatabus_P2 = ((cmd<<4) & 0xF0);
            RS = LOW;
            RW = LOW;
            EN = HIGH;
            DELAY_us(1000);
            EN = LOW;
    
    DELAY_us(10000);
    return 0;
}

int LCDDataWrite(char data){

    LcdDatabus_P2 = (data & 0xF0);
            RS = HIGH;
            RW = LOW;
            EN = HIGH;
            DELAY_us(1000);
            EN = LOW;
    
    DELAY_us(10000);

    LcdDatabus_P2 = ((data<<4) & 0xF0);
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


// inline function to swap two numbers
inline void swap(char *x, char *y) {
	char t = *x; *x = *y; *y = t;
}

// function to reverse buffer[i..j]
char* reverse(char *buffer, int i, int j)
{
	while (i < j)
		swap(&buffer[i++], &buffer[j--]);

	return buffer;
}

// Iterative function to implement itoa() function in C
char* itoa(int value, char* buffer, int base)
{
	// invalid input
	if (base < 2 || base > 32)
		return buffer;

	// consider absolute value of number
	int n = abs(value);

	int i = 0;
	while (n)
	{
		int r = n % base;

		if (r >= 10) 
			buffer[i++] = 65 + (r - 10);
		else
			buffer[i++] = 48 + r;

		n = n / base;
	}

	// if number is 0
	if (i == 0)
		buffer[i++] = '0';

	// If base is 10 and value is negative, the resulting string 
	// is preceded with a minus sign (-)
	// With any other base, value is always considered unsigned
	if (value < 0 && base == 10)
		buffer[i++] = '-';

	buffer[i] = '\0'; // null terminate string

	// reverse the string and return it
	return reverse(buffer, 0, i - 1);
}
