#include <Servo.h>

Servo servo1;

void setup() { 
    servo1.attach(4);
}

void loop() {
    servo1.write(0); // поворот 0 градусов
    delay(1000);
    servo1.write(180); // 180 градусов
    delay(1000);
    servo1.write(45); // 45 градусов
    delay(1000);
}
