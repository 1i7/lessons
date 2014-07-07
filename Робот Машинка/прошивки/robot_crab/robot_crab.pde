
// Пины моторов
#define MOTOR_LEFT_1_PIN 6
#define MOTOR_LEFT_2_PIN 5
#define MOTOR_RIGHT_1_PIN 4
#define MOTOR_RIGHT_2_PIN 3

#define SONIC_SENSOR_TRIG_PIN 9
#define SONIC_SENSOR_ECHO_PIN 8

boolean run_forward = false;


void mleft_forward() {
    digitalWrite(MOTOR_LEFT_1_PIN, HIGH);
    digitalWrite(MOTOR_LEFT_2_PIN, LOW);
}

void mleft_backward() {
    digitalWrite(MOTOR_LEFT_1_PIN, LOW);
    digitalWrite(MOTOR_LEFT_2_PIN, HIGH);
}

void mleft_stop() {
    digitalWrite(MOTOR_LEFT_1_PIN, LOW);
    digitalWrite(MOTOR_LEFT_2_PIN, LOW);
}


void mright_forward() {
    digitalWrite(MOTOR_RIGHT_1_PIN, HIGH);
    digitalWrite(MOTOR_RIGHT_2_PIN, LOW);
}

void mright_backward() {
    digitalWrite(MOTOR_RIGHT_1_PIN, LOW);
    digitalWrite(MOTOR_RIGHT_2_PIN, HIGH);
}

void mright_stop() {
    digitalWrite(MOTOR_RIGHT_1_PIN, LOW);
    digitalWrite(MOTOR_RIGHT_2_PIN, LOW);
}

void setup() {
    pinMode(MOTOR_LEFT_1_PIN, OUTPUT);
    pinMode(MOTOR_LEFT_2_PIN, OUTPUT);
    pinMode(MOTOR_RIGHT_1_PIN, OUTPUT);
    pinMode(MOTOR_RIGHT_2_PIN, OUTPUT);
    
    
    // триггер сенсора в режим вывод
    pinMode(SONIC_SENSOR_TRIG_PIN, OUTPUT);
    // эзо сенсора в режим ввода
    pinMode(SONIC_SENSOR_ECHO_PIN, INPUT);
}

void loop() {
    // Видим препятствие ближе 10см - отползаем 2 секунды.
   
    // проверяем значение сенсора
    if(digitalRead(SOUND_SENSOR_PIN) == 0) {
        // сенсор сработал - бежим
        if(run_forward) {
            // вперед
            mleft_forward();
            mright_forward();
        } else {
            // назад
            mleft_backward();
            mright_backward();
        }
        run_forward = !run_forward;
        
        // и подождем пару секунд
        delay(2000);
    } else {
        // сенсор не сработал - стоим        
        mleft_stop();
        mright_stop();
    }    
}

