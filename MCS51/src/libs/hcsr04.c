#include "hcsr04.h"

void sendTriggerPulse(){
    triggerPin = 1;
    DELAY_us(10);
    triggerPin = 0;
}

void measureDistance(float data){
    float value;
    while(!echoPin1);
    TR0;
    while(echoPin1 && !TF0);
    TR0;

    value = Clock_period*sound_velocity;
    data = (TL0|(TH0<<8));
    data = (data * value)/2.0;


}