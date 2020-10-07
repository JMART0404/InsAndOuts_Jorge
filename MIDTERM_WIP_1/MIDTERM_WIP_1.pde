

// A1 
float aX = 540;
float aY = 60;

float aX2 = 540;
float aY2 = 60;

// ROCKET 
float rX = 540;
float rY = 360;
float rS = 50;

// EARTH 
float eX = 540;
float eY = 360;
float eS = 100;

// MOON 
float mX = 640;
float mY = 335;
float mS1 = 35;
float mS2 = 25;

// JUPITER 
float jX = 2430;
float jY = 80;
float jS = 600;

// MARS
float mrX = 1620;
float mrY = 360;
float mrS = 100;

// SUN 
float sX = -2430;
float sY = -80;
float sS = 900;

PImage a1;
PImage earth;
PImage rocket;
PImage moon;
PImage space;
PImage jupiter;
PImage mars;
PImage sun;
PImage mbg;

void setup() {
  size(1080, 720);
  //background(255);
  //imageMode(CORNER);


  a1 = loadImage("a1.png");
  earth = loadImage("earth.png");
  moon = loadImage("moon.png");
  rocket = loadImage("rocket.png");
  space = loadImage("space.jpg");
  jupiter = loadImage("jupiter.png");
  mars = loadImage("mars.png");
  sun = loadImage("sun.png");
  mbg = loadImage("mbg.jpg");
}


void draw() {
  background(space);
  //background(mbg);

  image (earth, eX, eY, eS, eS);
  image (moon, mX, mY, mS1, mS2);
  image (jupiter, jX, jY, jS, jS);
  image (mars, mrX, mrY, mrS, mrS);
  image (sun, sX, sY, sS, sS);
  image (rocket, rX, rY, rS, rS);




  if (keyPressed) {
    if (key == 'd') {
      //rX+=2;
      eX-=5;
      mX-=5;
      jX-=5;
      mrX-=5;
      sX-=5;
      //jS+=1;
    } else if (key == 'a') {
      //rX-=2;
      eX+=5;
      mX+=5;
      jX+=5;
      mrX+=5;
      sX+=5;
      //jS-=1;
    } else if (key == 'w') {
      rY-=5;
    } else if (key == 's') {
      rY+=5;
    }
  }















println (eX,jS);



}






/*
  void keyPressed() {
     if (key == CODED) {
        if (keyCode == UP) {
         aY-=7;
     } else if (keyCode == DOWN) {
         aY+=7;
     } else if (keyCode == LEFT) {
         aX-=7;
     } else if (keyCode == RIGHT) {
         aX+=7;
    }
  }
}

  if (keyPressed) {
    if (key == 'a') {
      image (a1, aX, aY, 93, 143);
      aX-=2;
    } else if (keyPressed) {  
      if (key == 'd') {
        pushMatrix();
        translate(aX + a1.width, aY);
        scale( -1, 1 );
        image (a1, aX2, aY2, 93, 143);
        popMatrix();
        aX2-=2;
      }
    }
  }
}
*/
