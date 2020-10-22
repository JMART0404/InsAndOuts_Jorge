/*
  Final Version - J. Martinez
 
 - Space Adventure - 
 
 Fly to each of the planets and plant a flag. When both flag are planted you win the
 game. When touching the sun, you will die. 
 
 Rocket Controls 
  
  WASD - Move the Rocket
  C - Center Rocket to enter planet
  
 Astro Controls
 
 WASD - Move astronaut
 F  - Plant Flag
 Q - Fly Away ( When standing in the middle of the rocket )



*/
// A1 
float aX = 540;
float aY = 600;
float aS = 50;
float aS2 = 70;
float aX2 = 540;
float aY2 = 60;

float fpX = -1000;
float fpY = 0;
float fp2X = -1000;
float fp2Y = 0;

// ROCKET 
float rX = 540;
float rY = 360;
float rS = 50;

// RLAND
float rlx = 50;
float rly = 300;

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
float sX = -1000;
float sY = -80;
float sS = 900;

PImage a1;
PImage a3;
PImage earth;
PImage rocket;
PImage moon;
PImage space;

PImage jupiter;
PImage mars;
PImage sun;
PImage mbg;
PImage E;
PImage USA;
PImage jup;

PImage rr;
PImage rl;
PImage rd;
PImage ru;
PImage rland;

String state = "pregame";
int counter;

void setup() {
  size(1080, 720);
  //background(255);
  //imageMode(CORNER);
  textAlign(CENTER);
  textSize(40);


  a1 = loadImage("a1.png");
  a3 = loadImage("a1.5.png");
  earth = loadImage("earth.png");
  moon = loadImage("moon.png");
  rocket = loadImage("rocket.png");
  rd = loadImage("rrdown.png");
  ru = loadImage("rup.png");
  rl = loadImage("rleft.png");
  rr = loadImage("rright.png");
  rland = loadImage("rland.png");
  space = loadImage("space.jpg");
  
  jupiter = loadImage("jupiter.png");
  mars = loadImage("mars.png");
  sun = loadImage("sun.png");
  mbg = loadImage("mbg.jpg");
  E = loadImage("E.png");
  USA = loadImage("USA.png");
  jup = loadImage("jup.png");
}


void draw() {

  if (state == "pregame") {
    
    background(E);
    //text("LIFT OFF", width/2, height/2);
    
  } else if (state == "game") {

    background(space);

    image (earth, eX, eY, eS, eS);
    image (moon, mX, mY, mS1, mS2);
    image (jupiter, jX, jY, jS, jS);
    image (mars, mrX, mrY, mrS, mrS);
    image (sun, sX, sY, sS, sS);
    
    text(counter + " / 2", 970, 50); 
     
    if (rX == 400) {
      state = "game over";
      sX = -1000;
      sY = -80;
      eX = 540;
      eY = 360;
      mX = 640;
      mY = 335;
      jX = 2430;
      jY = 80;
      mrX = 1620;
      mrY = 360;
      rX = 540;   
    }
    
        if (key == 'd') {
      image (rr, rX, rY, rS, rS);
    } else if (key == 'a') {
      image (rl, rX, rY, rS, rS);
    } else if (key == 'w') {
      image (ru, rX, rY, rS, rS);
    } else if (key == 's') {
      image (rd, rX, rY, rS, rS);
    } else if ( key =='c') {
      image (rr, rX, rY, rS, rS);
    } 
    
    if (rX == mrX && rY == 360) {
      state = "marsl"; 
    }
    
    if (rX == jX && rY == 360) {
      state = "jup"; 
    }
    
      movement();
    
  } else if (state == "marsl") {
       background(mbg);
       image (rland, rlx, rly, 450, 350);
       text(counter + " / 2", 970, 50); 
       Astro();
       Amovement();
       
         if (key =='f') {
           fpX = aX;
           fpY = aY;
           counter = 1;
        }
        
        image (USA, fpX, fpY - 69, 150, 150);
   
      if (aX < 290 && key == 'q') {
          image (ru, rX, rY, rS, rS);
          state = "game";  
       }
  
  } else if (state == "jup") {
    background(jup);
    image (rland, rlx, rly, 300, 250);
    text(counter + " / 2", 970, 50);
       Astro();
       Amovement();
    
        if (key =='f') {
           fp2X = aX;
           fp2Y = aY;
           counter = 2;
        }
        
        image (USA, fp2X, fp2Y - 69, 150, 150);
   
      if (aX < 290 && key == 'q') {
          //image (ru, rX, rY, rS, rS);
          //state = "game";
          if (counter == 2) {
            state = "Win";
          }
       }
  } else if (state == "Win") {
    background(0);
    text("YOU WIN", width/2, height/2);
    counter = 0;
       
       
  } else if (state == "game over") {

    background(233, 44, 43);
    text("YOU DIED", width/2, height/2);
  }

 


  
  
  
  
 println(state);
  
}

void mousePressed() {
  
  if (state == "pregame") {
    state = "game";
  } else if (state == "marl") {
    
  } else if (state == "jup") {
  
  } else if (state == "Win") {
    state = "pregame";
      rX = 540;
      rY = 360;
      eX = 540;
      eY = 360;
      mX = 640;
      mY = 335;
      jX = 2430;
      jY = 80;
      mrX = 1620;
      mrY = 360;
      sX = -1000;
      sY = -80;
      fpX = -1000;
      fpY = 0;
      fp2X = -1000;
      fp2Y = 0;
      aX = 540;
      aY = 600;
  } else if (state == "game over") {
    state = "pregame";
  }
}





void movement() {
  
    if (keyPressed) {
    if (key == 'd') {
      image (rr, rX, rY, rS, rS);
      rX+=1;
      eX-=5;
      mX-=5;
      jX-=5;
      mrX-=5;
      sX-=5;
      //jS+=1;
    } else if (key == 'a') {
      rX-=1;
      eX+=5;
      mX+=5;
      jX+=5;
      mrX+=5;
      sX+=5;
      //jS-=1;
    } else if (key == 'w') {
      eY+=5;
      mY+=5;
      jY+=5;
      mrY+=5;
      sY+=5;
      rY-=1;
    } else if (key == 's') {
      eY-=5;
      mY-=5;
      jY-=5;
      mrY-=5;
      sY-=5;
      rY+=1;
    } else if (key =='c') {
      rY = 360;
      eY = 360;
      mY = 335;
      jY = 80;
      mrY = 360;
      sY = -80;
   } 
  }     
  
}


void Amovement() {
  
  if (keyPressed) {
          if (key == 'w') {
           aY-=3;
          } else if (key == 's') {
           aY+=3;
          } else if (key == 'a') {
           aX-=3;
          } else if (key == 'd') {
           aX+=3;          
          }
       }
}

void Astro() {
  
   if (key == 'd') {
      image (a3, aX, aY, aS, aS2);
    } else if (key == 'a') {
      image (a1, aX, aY, aS, aS2);
    } else if (key == 'w') {
      image (a1, aX, aY, aS, aS2);
    } else if (key == 's') {
      image (a1, aX, aY, aS, aS2);
    } else {
      image (a1, aX, aY, aS, aS2);
    }
}
