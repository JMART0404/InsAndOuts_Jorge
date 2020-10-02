float size = 5;

float rocX = 800;
float rocY = 650;
float xSd = 25;
float ySd = 25;

float xS = 540;
float xM = 1080;
float xE = 210;

float xA = 600;

float opacity = 0;
float fade = 6;

int[] count = new int [6];
int pCount = 0;

String[] Fly = {"Lift Off"};
int pFly = 0;

PImage earth;
PImage rocket;
PImage moon;
PImage star;
PImage satellite;
PImage jupiter;
PImage usa;
//PImage asteroid;

void setup() {
  size(1080, 720);
  textAlign(CENTER);
  textSize(80);
  imageMode(CENTER);


  earth = loadImage("earth.png");
  moon = loadImage("moon.png");
  rocket = loadImage("rocket.png");
  star = loadImage("star.jpg");
  satellite = loadImage("satellite.png");
  jupiter = loadImage("jupiter.png");
  usa = loadImage("USA.png");
  //asteroid = loadImage("asteroid.png");

  count[0] = 5;
  count[1] = 4;
  count[2] = 3;
  count[3] = 2;
  count[4] = 1;
  count[5] = 0;
}


void draw() {

  background(star);

  //MouseCount();


 if ( pCount >= 5) {
   text ("Lift Off", width/2, height/2 );
 } else { 
    text (count[pCount], width/2, height/2);
 }




  
  image (moon, xM, 720, 1240, 960);
  image (usa, 1000, 360, 50, 50);
  image (earth, xE, 90, 65, 60);
  image (rocket, rocX, rocY, size, size);
  image (jupiter, 800, 47, 25, 25);
  //image (asteroid, xA, 500, 25, 25);
  image (satellite, xS, 230, 100, 60);

  xS++;

  if ( xS > width + 80 ) {
    xS = 0;
  }
 
/* 
 xA+=-5;
 
 if ( xA < 0 - 80) {
   xA = 1080;
 }
*/

  println(xA);
}

void mousePressed() {

  if (pCount >= count.length - 1) {
    pCount = 0;
  } else {
    pCount ++;
  } 
}

void keyPressed() {

  if (keyPressed) {
    if (key == 'f') {
      rocX -= 5;
      rocY += -5;
    }
    if (rocX > width/2) {
      size -= 5;
      rocX -= 5;
      rocY += -5;
    } 
    if (rocX < width/2) {
      size -= -5;
      rocX -= 5;
      rocY += -5;
    } 
    if (rocX < 400) {
      rocX -= 5;
      rocY += -5;
    }
  }
}










void MouseCount() {

  if (mouseX < width/2 && mouseY < height/2) {
    fill(opacity);
    text ("3", width/2, height/2);
    opacity= opacity+fade;
    if (opacity> 255 || opacity< 0) {
      fade= -fade;
    }
  }

  if (mouseX > width/2 && mouseY < height/2) {
    fill(opacity);
    text ("Lift Off", width/2, height/2);
    opacity= opacity+fade;
    if (opacity> 255 || opacity< 0) {
      fade= -fade;
    }
  }

  if (mouseX < width/2 && mouseY > height/2) {
    fill(opacity);
    text ("2", width/2, height/2);
    opacity= opacity+fade;
    if (opacity> 255 || opacity< 0) {
      fade= -fade;
    }
  }

  if (mouseX > width/2 && mouseY > height/2) {
    fill(opacity);
    text ("1", width/2, height/2);
    opacity= opacity+fade;
    if (opacity> 255 || opacity< 0) {
      fade= -fade;
    }
  }
}
