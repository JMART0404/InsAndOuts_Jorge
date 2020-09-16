/* Abstract Pro. - J.Martinez 
 It will automatically start drawing different sizes circles in the shade of blue, creating 
 the abstract background. When the square is pressed rectangles in the shade of red will start 
 drawing.
 
 Click Square : Change from Circle to Rect / Blue to Red
 Click Top Left : White bouncing Circles
 Click Bottom Left : Black bouncing Circles
 Click Top Right : Shade of Blue bouncing Circles
 Click Bottom Right : White bouncing Circles
 
 */

boolean button = false;

float x;
float y;
float d;
float a;
/*
 float r;
 float g;
 float b;
 */
float x2 = width/2;
float y2 = height/2;

float x3 = 556;
float y3 = 0;

float xSd = 25;
float ySd = 25;



void setup() {
  size(1080, 720);
  background(255);
  rectMode(CENTER);
}

void draw() {
 /*
  if(mouseX < width/2 && mouseY > height/2) {
     nest();
  } else {
    background(255);
  }
 */ 
  if (mouseX < width/2 && mousePressed) { 
    if (mouseX < width/2 && mouseY > height/2) {
      fill(0, 0, 0);
    } else {
      fill(255);
    }
    bounce();
  } else if (mouseX > width/2 && mousePressed) {
    if (mouseX > width/2 && mouseY < height/2) {
      fill(0, 0, 0);
    } else {
      fill(255);
    }
    bounce2();
  }
  if (button) {
    fill(255);
  } else {
    fill(255, 255, 0);
  }
  stroke(2);
  rect(width/2, height/2, 50, 50);

  for (int i=0; i< width; i++) {
    if (button) { 
      noStroke();
      fill(random(255), 0, 0, a);
      rect(x, y, d, d);
    } else { 
      noStroke();
      fill(0, 0, random(255), a);
      ellipse(x, y, d, d);
    }
  }

  x = random(width);
  y = random(height);
  d = random(125);
  a = random(255);
  /*
   r = random(255);
   g = random(255);
   b = random(255);
   */


 println(mouseX, mouseY);

}

  void mousePressed() {
    if (mouseX > width/2 -25 && mouseX < width/2 + 25 && mouseY > height/2 -25 && mouseY < height/2 + 25) {
      button = !button;
    }
  }

  void bounce() {

    x2+=xSd;

    if (x2 > width/2 || x2 < 0) {
      xSd *= -1;
    }

    y2+=ySd;

    if (y2 > height || y2 < 0) {
      ySd *= -1;
    }
    ellipseMode(CENTER);
    //fill(255);
    stroke(1);
    ellipse(x2, y2, 25, 25);
  }

  void bounce2() {

    x3+=xSd;

    if (x3 > width || x3 < width/2) {
      xSd *= -1;
    }

    y3+=ySd;

    if ( y3 > height || y3 < 0) {
      ySd*= -1;
    }
    ellipseMode(CENTER);
    //fill(random(255), 255, random(255));
    stroke(1);
    ellipse(x3, y3, 25, 25);
  }
/*
  void nest() {

    //background(255);  

    //if (mouseX > width/2 -25 && mouseX < width/2 + 25 && mouseY >height/2 -25 && mouseY <height/2 + 25) {

      for (int y=11; y< height; y+=22) { 
        for (int x = 11; x< width + 10; x+=22) { 
          for (int d = 21; d>0; d-=4) { 
            fill (150, 80, 225);
            ellipse (x, y, d, d);
          }
        }
      }
  // }

    fill (230, 80, 225); 
    rect (width/2, height/2, 50, 50);
  }
*/
