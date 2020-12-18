import ddf.minim.*; //imports minim library from Processing
import processing.serial.*; //imports Serial library from Processing
Serial myPort; // creates object from Serial class
int val=0; // creates variable for data coming from serial port

float size = 100;
float led = 20;

Minim minim;
AudioPlayer MLOOP1;
AudioPlayer MLOOP2;
//AudioPlayer MLOOP3;

AudioPlayer DRUM1;
AudioPlayer DRUM2;

AudioPlayer KICK;
AudioPlayer CLAP;
AudioPlayer HIHAT;//creates AudioPlayer object called sample1;

float rStrokeSize = random(0.25,3);
void setup() {
   smooth();
   frameRate(100);
  
  size (1000,500);
  background(255);
  printArray(Serial.list()); // this line prints the port list to the console
   String portName = Serial.list()[0]; //change the number in the [] for the port you need
        myPort = new Serial(this, portName, 9600); 
 
  minim = new Minim(this);

 
 
  MLOOP1 = minim.loadFile("MLOOP90.wav");
  MLOOP2 = minim.loadFile("M2LOOP90.wav");
  //MLOOP3 = minim.loadFile("M3LOOP90.wav");
   DRUM1 = minim.loadFile("DRUM90.wav");
   DRUM2 = minim.loadFile("D2LOOP90.wav");

     KICK = minim.loadFile("KICK.wav");
     CLAP = minim.loadFile("CLAP.wav");
    HIHAT = minim.loadFile("HIHAT.wav");
     
}      


void draw() {
  
  if ( myPort.available() > 0) { // If data is available,
       val = myPort.read(); // read it and store it in val
  }
  
  if (val == 1) {
    DRUM1.play();
    DRUM2.pause();
 
  }
  
   if (val == 2) {
    DRUM2.play();
    DRUM1.pause();

  }
  
   if (val == 3) {
     MLOOP1.play();
     MLOOP2.pause();
     MLOOP2.rewind();
     DRUM1.pause();
     DRUM2.pause();
     DRUM1.rewind();
     DRUM2.rewind();
   }
   
   
   if (val == 4) {
     MLOOP1.pause();
     MLOOP1.rewind();
     MLOOP2.play();
     DRUM1.pause();
     DRUM2.pause();
     DRUM1.rewind();
    DRUM2.rewind();
   }
   
  if (val == 4) {
    
     background(#F2935C);
     translate(width/2,height/2);
  
  float wave =sin(radians(frameCount));
  float w = wave*map(mouseX,0,height,2500,0);
  
  
  for (int i = 0; i <500; i++) {
  rotate(50);
  stroke(#0442BF);
  line(30,i-w/2,-30,i++);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  stroke(#103B73);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  line(150,i+w,-150,i++);
  stroke(#F27289);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  line(250,i-w,-250,i++);
    }
  
  }
  

  
  if (val == 3) {
    
  background(#88E8F2);
  translate(width/2,height/2);
  
  float wave =sin(radians(frameCount));
  float w = wave*map(mouseX,0,height,2500,0);
  
  
  for (int i = 0; i <500; i++) {
  rotate(50);
  stroke(#89C2D9);
  line(250,i-w/2,-250,i++);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  stroke(#F28DBC);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  line(90,i+w,-90,i++);
  stroke(0,0,255);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  line(50,i-w,-50,i++);
    }
  
  }
  

  if (val == 1) {
    
  background(#400D0D);
  translate(width/2,height/2);
  
  float wave =sin(radians(frameCount));
  float w = wave*map(mouseX,0,height,2500,0);
  
  
  for (int i = 0; i <500; i++) {
  rotate(50);
  stroke(#732922);
  line(80,i-w/2,-70,i++);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  stroke(#A62F24);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  line(300,i+w,-300,i++);
  stroke(#F2441D);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  line(150,i-w,-150,i++);
   }
  }
 
  if (val == 2) {
    
    
   background(#000140);
  translate(width/2,height/2);
  
  float wave =sin(radians(frameCount));
  float w = wave*map(mouseX,0,height,2500,0);
  
  
  for (int i = 0; i <500; i++) {
  rotate(50);
  stroke(#0004BF);
  line(50,i-w/2,-50,i++);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  stroke(#0006FF);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  line(250,i+w,-250,i++);
  stroke(255,255,0);
  strokeWeight(map(wave,-1,1,0.5,rStrokeSize));
  line(50,i-w,-50,i++);
    }
  
  }
  
  if (val == 0) {
    background(255);
    MLOOP1.pause();
    MLOOP2.pause();
    DRUM1.pause();
    DRUM2.pause();
  }
 
  
  println(val);
  
}
  
  
