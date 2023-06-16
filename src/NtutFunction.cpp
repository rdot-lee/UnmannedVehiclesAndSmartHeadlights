//
// Created by user on 2023/6/4.
//

#include "NtutFunction.h"

//task
unsigned long currentMillis = 0;
unsigned long previousMillis = 0;
int interval = 1000;

////超音波感應器PIN
int trigPin=0; //發出聲波腳位(ESP32 GPIO17)
int echoPin=16; //接收聲波腳位(ESP32 GPIO16)
//超音波感應器
int distance;
long duration;


// Photoresistance Pin
int  PhotoPin=0; //發出聲波腳位(ESP32 GPIO17)



void Ntutsetup() {
  //定義ESP32輸入輸出
  pinMode(echoPin, INPUT);
  pinMode(trigPin, OUTPUT);

  pinMode(PhotoPin, INPUT);
}

void NtutPhotoresistance(void *paremeter) {

  int  PhotoPin=12;
  pinMode(PhotoPin, INPUT);

  for (;;) {
    int Photoresistance = analogRead(PhotoPin);
    Serial.println(Photoresistance);
    delay(500);

  }
vTaskDelete(NULL);
}

/* Photoresist Headlamp */
void NtutPhotoresistance() {
  pinMode(13, INPUT);
  pinMode(15, OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(14, OUTPUT);
  pinMode(4, OUTPUT);


  int Photoresistance = analogRead(13);
  Serial.println(Photoresistance);
  if (Photoresistance < 500) {
    //open all LED
    digitalWrite(15, HIGH);
    digitalWrite(14, HIGH);
    digitalWrite(2, HIGH);
    digitalWrite(4, HIGH);
  }

  if (Photoresistance >= 500 && Photoresistance < 1000) {
    //light is mid
    digitalWrite(15, LOW );
    digitalWrite(14, HIGH);
    digitalWrite(2, HIGH);
    digitalWrite(4, LOW);

  }
  if (Photoresistance >= 1000 && Photoresistance < 1500) {
    //Insufficient brightness
    digitalWrite(15, LOW);
    digitalWrite(14, LOW);
    digitalWrite(2, HIGH);
    digitalWrite(4, LOW);

  }
  if (Photoresistance > 1500) {
    //Adequate brightness
    digitalWrite(15, LOW);
    digitalWrite(14, LOW);
    digitalWrite(2, LOW);
    digitalWrite(4, LOW);

  }
  delay(500);
}