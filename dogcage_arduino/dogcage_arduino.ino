#include <Servo.h> 
 
Servo myservo;

int pos = 0;
const int servo_pin = 17;
const int ledPin = 13;
const int button_pin = 6;

void setup() {
  pinMode(ledPin, OUTPUT);
  pinMode(button_pin, INPUT);
  myservo.attach(servo_pin);
}

void loop() {
  digitalWrite(ledPin, HIGH);   // set the LED on
  delay(500);                  // wait for a second
  digitalWrite(ledPin, LOW);    // set the LED off
  delay(500);
  
  if( digitalRead(button_pin) == LOW) {
    for(pos=0; pos<=180; pos+=1) {
      myservo.write(pos);
      delay(15);
    }
  }
}
