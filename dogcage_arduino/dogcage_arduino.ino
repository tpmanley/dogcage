#include <Servo.h> 
 
Servo myservo;

const int BUTTON_PRESSED = 1;
const int BUTTON_NOT_PRESSED = 0;

int pos = 0;
int prev_button_status = BUTTON_NOT_PRESSED;

const int servo_pin = 17;
const int ledPin = 13;
const int button_pin = 6;

void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(button_pin, INPUT);
  digitalWrite(ledPin, LOW);
  myservo.attach(servo_pin);
  myservo.write(45);
}

void loop() {
  delay(1000);
  
  if(prev_button_status == BUTTON_NOT_PRESSED)
  {
    if(digitalRead(button_pin) == LOW)
    {
      digitalWrite(ledPin, HIGH);
      prev_button_status = BUTTON_PRESSED;
      
      for(pos=45; pos<=130; pos+=1)
      {
        myservo.write(pos);
        delay(100);
      }
      myservo.write(45);
    }
  }
  else
  {
    if(digitalRead(button_pin) == HIGH)
    {
      prev_button_status = BUTTON_NOT_PRESSED;
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
