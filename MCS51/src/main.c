#include <at89x52.h>
#include "libs/lcd.h"
#include "libs/delay.h"
#include "libs/hcsr04.h"

#define MAX 10

void initPortPin();
void welcomeScreen();
void toggleLed();

int main(){
    
    static uint16_t result_distance;

    initPortPin();

    LCDInit();
    LCDCmdWrite(CURSOR_TO_FIRST_LINE);

    welcomeScreen();
    DELAY_ms(1000);

    while(1){
        sendTriggerPulse();
        measureDistance(result_distance);
        LCDCmdWrite(CLEAR_SCREEN);
        LCDPrintString(FIRST_LINE, "Distance : ");
        LCDDisplayNumber(SECOND_LINE, result_distance, 10);
        // toggleLed();
        DELAY_ms(500);
    }
}

void initPortPin(){
    P0_0 = LOW;
    P2 = 0x00;
}

void welcomeScreen(){
    LCDPrintString(FIRST_LINE, "Faiz Ainur Rofiq");
    LCDPrintString(SECOND_LINE, "Jurnal IT");
}

void toggleLed(){
    if (!P0_0){
        P0_0 = 1;
    } else {
        P0_0 = 0;
    }
}



