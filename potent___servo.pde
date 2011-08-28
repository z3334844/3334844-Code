// Controlling a servo position using a potentiometer (variable resistor) 
// by Michal Rinott <http://people.interaction-ivrea.it/m.rinott> 

#include <Servo.h> 

Servo myservo;  // create servo object to control a servo 
Servo myservo2;
Servo myservo3;

int potpin = 0;
int val;

int potpin2 = 1;  // analog pin used to connect the potentiometer
int val2;    // variable to read the value from the analog pin 

int potpin3 = 2;
int val3;

void setup() 
{ 
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
  myservo2.attach(10);
  myservo3.attach(11);
} 

void loop() 
{ 
  val = analogRead(potpin);            // reads the value of the potentiometer (value between 0 and 1023) 
  val = map(val, 0, 1023, 0, 180);     // scale it to use it with the servo (value between 0 and 180) 
  myservo.write(val);                  // sets the servo position according to the scaled value 
  delay(2);                           // waits for the servo to get there

  val2 = analogRead(potpin2);            // reads the value of the potentiometer (value between 0 and 1023) 
  val2 = map(val2, 0, 1023, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo2.write(val2);                  // sets the servo position according to the scaled value 
  delay(2);                           // waits for the servo to get there 
  
  val3 = analogRead(potpin3);            // reads the value of the potentiometer (value between 0 and 1023) 
  val3 = map(val3, 0, 1023, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo3.write(val3);                  // sets the servo position according to the scaled value 
  delay(2); 
  
} 
