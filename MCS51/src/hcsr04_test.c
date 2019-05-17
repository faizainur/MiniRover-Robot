/*
	Find distance of an Object by interfacing Ultrasonic HC-SR04 module with 8051(AT89S52)
	http://www.electronicwings.com
*/
#include<at89x51.h>
#include <stdio.h>
#include "libs/lcd.h"
#include "libs/delay.h"
#include "libs/hcsr04.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#define MAX 10

int main(){
	LCDInit();
	LCDCmdWrite(CURSOR_TO_FIRST_LINE);
	LCDPrintString(FIRST_LINE, "Faiz Ainur Rofiq");
	
	while(1){

	}
}