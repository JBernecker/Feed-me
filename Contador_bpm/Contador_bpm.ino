#include "BluetoothSerial.h"

int sensorPort = 4;

BluetoothSerial SerialBT;

void setup() {
  Serial.begin(115200);
  SerialBT.begin("ESP32test"); //Bluetooth device name
  Serial.println("The device started, now you can pair it with bluetooth!");
} 

long timer = millis();
int count = 0;
bool ultimoSinal = false;

void loop() {
  
  if( millis() - timer > 4000 ){
    Serial.println("#########################################################");
    SerialBT.printf("%d bpm\r\n", count * 15);
    Serial.printf("%d bpm\r\n", count * 15);
    Serial.println("#########################################################");
    count = 0;
    timer = millis();
  }else{
    int value = analogRead(sensorPort);
    if(ultimoSinal == false){
      if( value > 2200 ){
        ultimoSinal = true;
        count++;
      }
    }else{
      if( value < 2200 ){
        ultimoSinal = false;
      }
    }
    
    Serial.println(value);
  }
   
  delay(20);
}
