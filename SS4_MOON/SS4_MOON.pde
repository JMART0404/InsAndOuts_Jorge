/*
   Press F for Rocket to Fly
   Move mouse around to see countdown. Start Top Left then move DOWN, RIGHT, UP. 
*/

// MOON - J. Martinez

float size = 5;

float rocX = 800;
float rocY = 650;
float xSd = 25;
float ySd = 25;

float opacity = 0;

float fade = 6;

PImage earth;
PImage rocket;
PImage moon;
PImage star;

void setup() {
  size(1080, 720);
  textAlign(CENTER);
  textSize(50);


  earth = loadImage("earth.png");
  moon = loadImage("moon.png");
  rocket = loadImage("rocket.png");
  star = loadImage("star.jpg");
}


void draw() {

  background(star);
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


  image (earth, width/2, height/2);
  image (moon, 150, 50, 126, 100);
  image (rocket, rocX, rocY, size, size);



  println(mouseX, mouseY);
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
