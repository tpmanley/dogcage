#include <Servo.h> 
 
Servo myservo;

const int BUTTON_PRESSED = 1;
const int BUTTON_NOT_PRESSED = 0;

const int DOOR_OPEN = HIGH;
const int DOOR_CLOSED = LOW;

int pos = 0;
const int CLOSED_POS = 45;
const int OPEN_POS = 120;
int prev_button_status = BUTTON_NOT_PRESSED;

const int servo_pin = 17;
const int ledPin = 13;
const int button_pin = 15;
const int doorsensor_pin = 10;

void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(button_pin, INPUT);
  pinMode(doorsensor_pin, INPUT);
  digitalWrite(ledPin, LOW);
  myservo.attach(servo_pin);
  myservo.write(CLOSED_POS);
}

void loop() {
  delay(500);
  
  if(digitalRead(doorsensor_pin) == DOOR_OPEN)
  {
    digitalWrite(ledPin, HIGH);
    delay(500);
    digitalWrite(ledPin, LOW);
  }
  else
  {
    check_triggers();
  }
}

void check_triggers() {  
  if(prev_button_status == BUTTON_NOT_PRESSED)
  {
    if(digitalRead(button_pin) == LOW)
    {
      digitalWrite(ledPin, HIGH);
      prev_button_status = BUTTON_PRESSED;
      
      for(pos=CLOSED_POS; pos<=OPEN_POS; pos+=1)
      {
        myservo.write(pos);
        delay(100);
      }
    }
  }
  else
  {
    if(digitalRead(button_pin) == HIGH)
    {
      prev_button_status = BUTTON_NOT_PRESSED;
      for(pos=OPEN_POS; pos>=CLOSED_POS; pos-=1)
      {
        myservo.write(pos);
        delay(100);
      }
      digitalWrite(ledPin, LOW);
    }
    else
    {
      digitalWrite(ledPin, LOW);
      delay(200);
      digitalWrite(ledPin, HIGH);
    }
  }
}
