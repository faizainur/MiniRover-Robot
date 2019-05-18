#include <Arduino.h>

HardwareSerial uartConn(2);

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  uartConn.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  uartConn.println("0");
  delay(1000);
  uartConn.println("1");
  delay(1000);
}