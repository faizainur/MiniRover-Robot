#include "uart.h"

void serial_begin(uint32_t baudrate){
    TMOD |= 0x20;
    SCON = 0x50;
    TR1 = 1;
    if (baudrate == 9600){
        TH1 = GET_TH1_VAL_9600;
    } else if (baudrate == 4800){
        TH1 = GET_TH1_VAL_4800;
    } else if (baudrate == 2400){
        TH1 = GET_TH1_VAL_2400;
    } else {
        TH1 = GET_TH1_VAL_1200;
    }
}

char rx_char(){
    char rx;
    while(RI == 0);
    rx = SBUF;
    RI = 0;
    
    return rx;
}

void tx_char(char data){
    SBUF = data;
    while(TI == 0);
    TI = 0;
}

void tx_string(char *data){
    while(*data){
        tx_char(*data++);
    }
}

uint8_t rx_string(char *data){
    char ch;

        uint8_t len = 0;
    while(1)
    {
        ch=rx_char();    //Receive a char
        tx_char(ch);     //Echo back the received char
        if((ch == '\r') || (ch == '\n') || (ch=='\0')) //read till enter key is pressed
        {                             //once enter key is pressed null terminate the string
            data[len]=0;           //and break the loop
            break;                  
        }
        else if((ch=='\b') && (len!=0))
        {
            len--;    //If backspace is pressed then decrement the index to remove the old char
        }
        else
        {
            data[len]=ch; //copy the char into string and increment the index
            len++;
        }
    }

    return len;
}