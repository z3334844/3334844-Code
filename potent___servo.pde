// Controlling a servo position using a potentiometer (variable resistor) 
// by Michal Rinott <http://people.interaction-ivrea.it/m.rinott> 

#include <Servo.h> 
#include <Firmata.h>

Servo myservo;  // create servo object to control a servo 
Servo myservo2;
Servo myservo3;
Servo myservo4;
Servo myservo5;
Servo myservo6;
Servo myservo7;
Servo myservo8;

int potpin = 0;
int val;

int potpin2 = 1;  // analog pin used to connect the potentiometer
int val2;    // variable to read the value from the analog pin 

int potpin3 = 2;
int val3;

int potpin4 = 3;
int val4;

int potpin5 = 4;
int val5;

int potpin6 = 5;
int val6; 

int potpin7 = 6;
int val7;

int potpin8 = 7;
int val8;

void setup()                                               

{
    Firmata.setFirmwareVersion(0, 1);
    Firmata.begin(57600);
  
  myservo.attach(4);
  myservo.attach(5);
  myservo.attach(6);
  myservo.attach(7);
  myservo.attach(8);
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

Firmata.sendAnalog(potpin, analogRead(potpin));

  val2 = analogRead(potpin2);            // reads the value of the potentiometer (value between 0 and 1023) 
  val2 = map(val2, 0, 1023, 0, 180);     // scale it to use it with the servo (value between 0 and 180) 
  myservo2.write(val2);                  // sets the servo position according to the scaled value 
  delay(2);                           // waits for the servo to get there 
  
  val3 = analogRead(potpin3);            // reads the value of the potentiometer (value between 0 and 1023) 
  val3 = map(val3, 0, 1023, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo3.write(val3);                  // sets the servo position according to the scaled value 
  delay(2); 
  
  val4 = analogRead(potpin4);            // reads the value of the potentiometer (value between 0 and 1023) 
  val4 = map(val4, 0, 1023, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo4.write(val4);                  // sets the servo position according to the scaled value 
  delay(2); 

  val5 = analogRead(potpin5);            // reads the value of the potentiometer (value between 0 and 1023) 
  val5 = map(val5, 0, 1023, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo5.write(val5);                  // sets the servo position according to the scaled value 
  delay(2); 

  val6 = analogRead(potpin6);            // reads the value of the potentiometer (value between 0 and 1023) 
  val6 = map(val6, 0, 1023, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo6.write(val6);                  // sets the servo position according to the scaled value 
  delay(2); 

  val7 = analogRead(potpin7);            // reads the value of the potentiometer (value between 0 and 1023) 
  val7 = map(val7, 0, 1023, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo7.write(val7);                  // sets the servo position according to the scaled value 
  delay(2); 
  
  val8 = analogRead(potpin8);            // reads the value of the potentiometer (value between 0 and 1023) 
  val8 = map(val8, 0, 1023, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo8.write(val8);                  // sets the servo position according to the scaled value 
  delay(2); 
  
  
} 