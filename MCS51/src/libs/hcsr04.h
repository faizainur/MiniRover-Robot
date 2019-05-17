#include "stdutils.h"
#include <at89x52.h>
#include <math.h>
#include "delay.h"

#define sound_velocity 34300
#define Clock_period 1.085*0.000001


/* ********************************
        Defining HC-SR04 Pin
********************************* */
__sbit __at 0xB6 triggerPin       ;         // All sensors uses the same trigger pin
__sbit __at 0xB2 echoPin1         ;
__sbit __at 0xB3 echoPin2         ;
__sbit __at 0xB4 echoPin3         ;
__sbit __at 0xB5 echoPin4         ;



/* Function prototypes */
void sendTriggerPulse();
void measureDistance(float data);
