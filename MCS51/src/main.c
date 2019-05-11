#include <at89x51.h>
#include "libs/lcd.h"
#include "libs/delay.h"

int main(){

    char i,a[]={"Faiz Ainur Rofiq"};

    P0_0 = LOW;
    P2 = 0x00;

    // if (LCDSetup(LCD_16x2, DATABUS_P2, BUS4) > 0){
        // P0_0 = HIGH;
        LCDSetup(LCD_16x2, DATABUS_P2, BUS4);
        LCDInit();
        LCDCmdWrite(CURSOR_TO_FIRST_LINE);

        for(i=0;a[i]!=0;i++)
        {
            LCDDataWrite(a[i]);
        }
    // } else {
        // P0_0 = LOW;
    // }
    printString(SECOND_LINE, "Jurnal IT");
        while (1){
                    P0_0 = 0;
                    DELAY_ms(500);
                    P0_0 = 1;
                    DELAY_ms(500);
                }
        // while(1);
        }

