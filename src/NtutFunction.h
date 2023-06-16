//
// Created by user on 2023/6/4.
//

#ifndef NTUT_IOT_FINAL_PROJECT_NTUTFUNCTION_H
#define NTUT_IOT_FINAL_PROJECT_NTUTFUNCTION_H


#include <WiFi.h>

//int trigPin=0; //發出聲波腳位(ESP32 GPIO17)
//int echoPin=16; //接收聲波腳位(ESP32 GPIO16)

void NtutLoop(void);

void Ntutsetup(void);
//void NtutLoop(void *paremeter);
void NtutPhotoresistance(void *paremeter);
void NtutPhotoresistance(void);

#endif //NTUT_IOT_FINAL_PROJECT_NTUTFUNCTION_H
