#include <Servo.h> 
 
Servo myservo;

int pos = 0;
const int CLOSED_POS = 45;
const int OPEN_POS = 120;
int prev_button_state = LOW;
int prev_xbee_state = LOW;

const int servo_pin = 17;
const int servo_power_pin = 12;
const int led_pin = 13;
const int button_pin = 15;
const int xbee_pin = 6;
const int doorsensor_pin = 10;

void setup() 
{
  pinMode(led_pin, OUTPUT);
  pinMode(button_pin, INPUT);
  pinMode(xbee_pin, INPUT);
  pinMode(doorsensor_pin, INPUT);
  pinMode(servo_power_pin, OUTPUT);
  
  while(is_door_open())
  {
    blink_led(100, 1000);
  }
  Serial.begin(9600);
}

void test_loop()
{
  int door_open = is_door_open();
  int button_pressed = is_button_pressed();
  int xbee = is_xbee_signaled();
  
  Serial.print("door open ");
  Serial.println(door_open);
  Serial.print("button pressed ");
  Serial.println(button_pressed);
  Serial.print("xbee ");
  Serial.println(xbee);
  blink_led(500, 500);
}

void loop() 
{
  blink_led(500, 500);
  
  if(is_button_pressed() || is_xbee_signaled())
  {
    if(is_door_open())
    {
      close_door();
    }
    else
    {
      open_door();
    }
  }
}

int is_door_open()
{
  return (digitalRead(doorsensor_pin) == LOW);
}

int is_button_pressed()
{
  int new_button_state = digitalRead(button_pin);
  int return_value = 0;
  
  if(prev_button_state == LOW and new_button_state == HIGH)
  {
      return_value = 1;
      Serial.println("Button was pressed");
  }
  prev_button_state = new_button_state;
  return return_value;
}  

int is_xbee_signaled()
{
  int new_xbee_state = digitalRead(xbee_pin);
  int return_value = 0;
  
  if(prev_xbee_state == LOW and new_xbee_state == HIGH)
  {
     // return_value = 1;
      Serial.println("XBee was signaled");
  }
  prev_xbee_state = new_xbee_state;
  return return_value;
}

void open_door()
{
  digitalWrite(servo_power_pin, HIGH);
  myservo.attach(servo_pin);
  for(pos=CLOSED_POS; pos<=OPEN_POS; pos+=1)
  {
    myservo.write(pos);
    delay(100);
  }
  myservo.detach();
  digitalWrite(servo_power_pin, LOW);
}

void close_door()
{
  digitalWrite(servo_power_pin, HIGH);
  myservo.attach(servo_pin);
  for(pos=OPEN_POS; pos>=CLOSED_POS; pos-=1)
  {
    myservo.write(pos);
    delay(100);
  }
  myservo.detach();
  digitalWrite(servo_power_pin, LOW);
} 
  
void blink_led(int off_time, int on_time)
{
   digitalWrite(led_pin, LOW);
   delay(off_time);
   digitalWrite(led_pin, HIGH);
   delay(on_time);
}

