#include <Servo.h> 
 
Servo myservo;

int pos = 0;
const int CLOSED_POS = 65;
const int OPEN_POS = 120;
const int UNLOCKED_POS = 70;
const int LOCKED_POS = 0;
int prev_button_state = -1;
int prev_xbee_state = -1;

const int door_ctl_pin = 17;
const int door_pwr_pin = 26;
const int lock_ctl_pin = 17; // Same pin as door_ctl
const int lock_pwr_pin = 13;
const int led_pin = 13;
const int button_pin = 11;
const int xbee_pin = 23;
const int doorsensor_pin = 12;

void setup() 
{
  Serial.begin(9600);
  pinMode(led_pin, OUTPUT);
  pinMode(button_pin, INPUT_PULLUP);
  pinMode(xbee_pin, INPUT);
  pinMode(doorsensor_pin, INPUT_PULLUP);
  
  pinMode(door_ctl_pin, OUTPUT);
  pinMode(door_pwr_pin, OUTPUT);
  digitalWrite(door_pwr_pin, LOW);

  pinMode(lock_ctl_pin, OUTPUT);
  pinMode(lock_pwr_pin, OUTPUT);
  digitalWrite(lock_pwr_pin, LOW);

  // Give inputs time to stabalize
  delayMicroseconds(10);
  prev_button_state = digitalRead(button_pin);
  prev_xbee_state = digitalRead(xbee_pin);
  
  Serial.println("Waiting for door to close...");
  while(is_door_open())
  {
    blink_led(100, 1000);
  }
  pos = CLOSED_POS;
  Serial.println("Door closed");
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
      unlock_door();
      open_door();
    }
  }
}

int is_door_open()
{
  return 0;
  //return (digitalRead(doorsensor_pin) == HIGH);
}

int is_button_pressed()
{
  int new_button_state = digitalRead(button_pin);
  int return_value = 0;
  
  if(prev_button_state == HIGH and new_button_state == LOW)
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
      return_value = 1;
      Serial.println("XBee was signaled");
  }
  prev_xbee_state = new_xbee_state;
  return return_value;
}

void unlock_door()
{
  Serial.println("Unlocking door...");
  digitalWrite(lock_pwr_pin, HIGH);
  myservo.attach(lock_ctl_pin);
  for(pos=LOCKED_POS; pos<=UNLOCKED_POS; pos+=1)
  {
    myservo.write(pos);
    delay(10);
  }
  myservo.detach();
  digitalWrite(lock_pwr_pin, LOW);
}

void open_door()
{
  Serial.println("Opening door...");
  digitalWrite(door_pwr_pin, HIGH);
  myservo.attach(door_ctl_pin);
  for(pos=CLOSED_POS; pos <= OPEN_POS; pos+=1)
  {
    myservo.write(pos);
    delay(100);
  }
  myservo.detach();
  digitalWrite(door_pwr_pin, LOW);
}

void close_door()
{
  Serial.println("Closing door...");
  digitalWrite(door_pwr_pin, HIGH);
  myservo.attach(door_ctl_pin);
  for(pos=OPEN_POS; pos >= CLOSED_POS; pos-=1)
  {
    myservo.write(pos);
    delay(100);
  }
  myservo.detach();
  digitalWrite(door_pwr_pin, LOW);
} 
  
void blink_led(int off_time, int on_time)
{
   digitalWrite(led_pin, LOW);
   delay(off_time);
   digitalWrite(led_pin, HIGH);
   delay(on_time);
}

