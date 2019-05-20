#include <Arduino.h>
#include "BluetoothSerial.h"

HardwareSerial uartConn(2);
BluetoothSerial bt;

int buff;

void callback(esp_spp_cb_event_t event, esp_spp_cb_param_t *param){
  if(event == ESP_SPP_SRV_OPEN_EVT){
    uartConn.println("Client Connected");
    Serial.println("Client Connected");
  }
}
void setup() {
  // put your setup code here, to run once:
  uartConn.begin(9600);
  bt.register_callback(callback);
  if (!bt.begin("Mini-Rover")){
    uartConn.println("An Error Occured");
    Serial.println("An Error Occured");
  } else {
    uartConn.println("Ready to Pair");
    Serial.println("Ready to Pair");

  }
  

}

void loop() {
  if(bt.available()){
    buff = bt.read();
    if (buff == 48){
      uartConn.println("Go Forward      ");
      Serial.println("Go Forward      ");
    } else if (buff == 49){
      uartConn.println("Go Backward     ");
      Serial.println("Go Backward     ");
    } else if (buff == 50){
      uartConn.println("Turn Left       ");
      Serial.println("Turn Left       ");
    } else if (buff == 51){
      uartConn.println("Turn Right      ");
      Serial.println("Turn Right      ");
    }
  }
}