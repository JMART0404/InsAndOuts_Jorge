/*
Reads values from serial port, written to the port by Arduino.
 The size of an ellipse changes according to the serial values.
 Must assign the correct port, see instructions below!
 */

import processing.serial.*; //imports Serial library from Processing

Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port
int[] num = new int [6];
int pNumber;
void setup() {
  size(400, 400);
  /*
   IMPORTANT: We must tell Processing which port to read from.
   Run the sketch and check your console to see the results of printArray(Serial.list());
   and that is how you know the port to use.
   On my Mac, it is port 1 and so I open Serial.list()[1].
   */

  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[0]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
  
  textAlign(CENTER);
  
  num[0]= 1;
  num[1]= 2;
  num[2]= 3;
  num[3]= 4;
  num[4]= 5;
  num[5]= 6;
}

void draw() {
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  //draws an ellipse that grows and shrinks in relation to val
  background(val);
  
     if ( val == 255 ) {
      fill(0);
      stroke(0);
      strokeWeight(1);
      textSize(25);
      text(num[pNumber], width/2, height/2);    
   } else if ( val < 50 ) {                // ONE
      fill (255);
      stroke(0);
      strokeWeight(1);
      ellipse(width/2, height/2, 70, 70);
   } else if ( val > 50 && val < 100) {    // TWO
      fill (255);
      stroke(0);
      strokeWeight(1);
      ellipse(100, 300, 70, 70);
      ellipse(300, 100, 70, 70);
   } else if ( val > 100 && val < 130 ) {  // THREE
      fill(255);
      stroke(0);
      strokeWeight(1);
      ellipse(width/2, height/2, 70, 70);
      ellipse(100, 300, 70, 70);
      ellipse(300, 100, 70, 70);
   } else if ( val > 130 && val < 190 ) { // FOUR
      fill(255);
      stroke(0);
      strokeWeight(1);
      ellipse(100, 100, 70, 70);
      ellipse(100, 300, 70, 70);
      ellipse(300, 300, 70, 70);
      ellipse(300, 100, 70, 70);
   } else if ( val > 190 && val < 240 ) { // FIVE
      fill (0);
      stroke(0);
      strokeWeight(1);
      ellipse(width/2, height/2, 70, 70);
      ellipse(100, 100, 70, 70);
      ellipse(100, 300, 70, 70);
      ellipse(300, 300, 70, 70);
      ellipse(300, 100, 70, 70);
   } else if ( val > 240 && val < 255 ) { // SIX
      fill (0);
      stroke(0);
      strokeWeight(1);
      ellipse(300, height/2, 70, 70);
      ellipse(100, height/2, 70, 70);
      ellipse(100, 100, 70, 70);
      ellipse(100, 300, 70, 70);
      ellipse(300, 300, 70, 70);
      ellipse(300, 100, 70, 70);
   } 
   
   if ( val == 0 ) {   // Picking random number
      pNumber = int (random(0, num.length));
  }
      
      println (val); //prints to Processing console
     
}
