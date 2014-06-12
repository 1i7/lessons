// запускается один раз при запуске контроллера
void setup() {
    pinMode(4, OUTPUT); // 4й пин режим вывода
    pinMode(5, OUTPUT); // 5й пин режим вывода
}

// бесконечный цикл
void loop() {
    // вперед
    digitalWrite(4, 0);
    digitalWrite(5, 1);
    delay(3000); // подождать 3 секунды
    // назад
    digitalWrite(4, 1);
    digitalWrite(5, 0);
    delay(3000); // подождать 3 секунды
}


