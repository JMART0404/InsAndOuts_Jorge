
const int buttonPin = 2;    
int buttonState = 0;      


void setup() {
 
    pinMode(12, OUTPUT);
    pinMode(13, OUTPUT);
    pinMode(11, OUTPUT);
    pinMode(10, OUTPUT);
    pinMode(9, OUTPUT);
    pinMode(8, OUTPUT);
    pinMode(buttonPin, INPUT);  
}

void loop() {
 
    buttonState = digitalRead(buttonPin);    
    delay (10); 
  
  if (buttonState == HIGH) {
     
PatternOne();
delay(500);
PatternTwo();
delay(500);
PatternThree();
delay(500);
   

  } else {   
    
    digitalWrite(9, LOW);      
    digitalWrite(8, LOW);
    digitalWrite(10, LOW);      
    digitalWrite(11, LOW);
    digitalWrite(12, LOW);
    digitalWrite(13, LOW);
              
  }
}

void PatternOne () {
  
   digitalWrite(8, LOW);
   digitalWrite(9, HIGH);  
   digitalWrite(10, LOW);
   digitalWrite(11, LOW);
   digitalWrite(12, LOW);
   digitalWrite(13, LOW);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, LOW);
   digitalWrite(11, LOW);
   digitalWrite(12, LOW);
   digitalWrite(13, HIGH);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, LOW);
   digitalWrite(11, LOW);
   digitalWrite(12, HIGH);
   digitalWrite(13, LOW);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, HIGH);
   digitalWrite(11, LOW);
   digitalWrite(12, LOW);
   digitalWrite(13, LOW);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, LOW);
   digitalWrite(11, HIGH);
   digitalWrite(12, LOW);
   digitalWrite(13, LOW);
   delay(200);

   digitalWrite(8, HIGH);
   digitalWrite(9, LOW);  
   digitalWrite(10, LOW);
   digitalWrite(11, LOW);
   digitalWrite(12, LOW);
   digitalWrite(13, LOW);
   delay(200);
 }

 void PatternTwo() {

   digitalWrite(8, HIGH);
   digitalWrite(9, HIGH);  
   digitalWrite(10, LOW);
   digitalWrite(11, LOW);
   digitalWrite(12, LOW);
   digitalWrite(13, LOW);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, LOW);
   digitalWrite(11, HIGH);
   digitalWrite(12, LOW);
   digitalWrite(13, HIGH);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, HIGH);
   digitalWrite(11, LOW);
   digitalWrite(12, HIGH);
   digitalWrite(13, LOW);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, HIGH);  
   digitalWrite(10, HIGH);
   digitalWrite(11, LOW);
   digitalWrite(12, LOW);
   digitalWrite(13, LOW);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, LOW);
   digitalWrite(11, HIGH);
   digitalWrite(12, LOW);
   digitalWrite(13, HIGH);
   delay(200);

   digitalWrite(8, HIGH);
   digitalWrite(9, LOW);  
   digitalWrite(10, LOW);
   digitalWrite(11, LOW);
   digitalWrite(12, HIGH);
   digitalWrite(13, LOW);
   delay(200);

 }

 void PatternThree() {

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, HIGH);
   digitalWrite(11, LOW);
   digitalWrite(12, HIGH);
   digitalWrite(13, LOW);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, LOW);
   digitalWrite(11, HIGH);
   digitalWrite(12, LOW);
   digitalWrite(13, HIGH);
   delay(200);

   digitalWrite(8, HIGH);
   digitalWrite(9, HIGH);  
   digitalWrite(10, LOW);
   digitalWrite(11, LOW);
   digitalWrite(12, LOW);
   digitalWrite(13, LOW);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, HIGH);
   digitalWrite(11, LOW);
   digitalWrite(12, HIGH);
   digitalWrite(13, LOW);
   delay(200);

   digitalWrite(8, LOW);
   digitalWrite(9, LOW);  
   digitalWrite(10, LOW);
   digitalWrite(11, HIGH);
   digitalWrite(12, LOW);
   digitalWrite(13, HIGH);
   delay(200);

   digitalWrite(8, HIGH);
   digitalWrite(9, HIGH);  
   digitalWrite(10, LOW);
   digitalWrite(11, LOW);
   digitalWrite(12, LOW);
   digitalWrite(13, LOW);
   delay(200);
 }
  
