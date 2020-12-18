
// sets up constant integer variables for pins (will not change)
const int buttonONE = 2;    
const int buttonTWO = 3;    
const int buttonTHREE = 4;    
const int buttonFOUR = 5;   
const int LEDone =  8;    
const int LEDtwo =  9;     
const int LEDthree = 10;     
const int LEDfour =  11;    


// sets up integer variable that will change over time
int button1 = 0;        
int button2 = 0;
int button3 = 0;
int button4 = 0;

byte val; // stores data received from serial port
// setup runs once at startup
void setup() {
  
  Serial.begin(9600); 
  
   pinMode(LEDone, OUTPUT); 
   pinMode(LEDtwo, OUTPUT);  
   pinMode(LEDthree, OUTPUT); 
   pinMode(LEDfour, OUTPUT);  
   pinMode(buttonONE, INPUT); 
   pinMode(buttonTWO, INPUT);  
   pinMode(buttonTHREE, INPUT);
   pinMode(buttonFOUR, INPUT);  
}

// loop runs infinitely
void loop() {
  button1 = digitalRead(buttonONE);   
  delay (10); 

  button2 = digitalRead(buttonTWO);
  delay (10);

  button3 = digitalRead(buttonTHREE);
  delay (10);

   button4 = digitalRead(buttonFOUR);
   delay (10);

  // conditional statement
  if (button1 == HIGH) { 
  
    digitalWrite(LEDone, HIGH);
    digitalWrite(LEDtwo, LOW);
    digitalWrite(LEDthree, LOW);
    digitalWrite(LEDfour, LOW); 
    val = 1;
      
  }

  if (button2 == HIGH) { 
    digitalWrite(LEDtwo, HIGH);
    digitalWrite(LEDone, LOW);
    digitalWrite(LEDthree, LOW);
    digitalWrite(LEDfour, LOW);        
    val = 2;
    
  }

  if (button3 == HIGH) { 
    digitalWrite(LEDthree, HIGH);
    digitalWrite(LEDone, LOW);
    digitalWrite(LEDtwo, LOW);
    digitalWrite(LEDfour, LOW);       
    val = 3;
    
    
  }

  if (button4 == HIGH) { 
    digitalWrite(LEDfour, HIGH);
    digitalWrite(LEDone, LOW);
    digitalWrite(LEDtwo, LOW);
    digitalWrite(LEDthree, LOW);       
    val = 4;
     
  }
  

  /////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
  
 //Serial. println(val); //to send human-readable data to Arduino monitor
 Serial.write(val);  //to send binary data to Processing
}
