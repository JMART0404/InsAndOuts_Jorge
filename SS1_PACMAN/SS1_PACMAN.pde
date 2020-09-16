// PAC-MAN by J. Martinez
size(1080, 720);
background(0,0,102);

ellipseMode(CENTER);

  //  triangle(540, 360, 540, 0, 1080, 720);
  //  triangle(270, 0, 540, 0, 540, 360);  
  //  fill(0,76,153);
  //  rect(0, 0, 1080, 90);
  //  fill(0,0,204);
  //  rect(0, 540, 1080, 90);
  //  fill(0,76,153);
  //  rect(0, 180, 1080, 90);
  //  fill(0,0,204);
  //  rect(0, 360, 1080, 90);
  //  fill(82,122,216);
  //  rect(540, 0, 1080, 360);
  
// TOP TRI  
   fill(0,76,153);
   strokeWeight(5);
   triangle(270, 0, 810, 0, 540, 360);
   triangle(0, 0, 540, 0, 540, 360);
   
// LIGHT BLUE
   fill(102,178,255);
   strokeWeight(5);
   triangle(540, 360, 540, 0, 1080, 720);
   triangle(540, 360, 540, 0, 0, 720);
   
// BOTTOM RIGHT   
   fill(0,128,255);
   strokeWeight(5);
   triangle(1080, 720, 810, 0, 1080, 0);
   fill(0,0,204);
   strokeWeight(5);
   triangle(810, 720, 540, 360, 0, 720);
   
// FACE 
   fill(241,255,25);
   ellipse(540, 360, 480, 480);
   fill(0);
   ellipse(453, 217, 45, 45);
   fill(0);
   //ellipse(429, 290, 120, 250);
   //arc(520, 540, 180, 180, 0, PI+QUARTER_PI, CHORD);
   fill(0,0,102);
   strokeWeight(5);
   triangle(540, 360, 0, 0, 0, 720);
   
   
// FOOD 
   fill(241,255,25);
   noStroke();
   ellipse(300, 360, 50, 50);
   fill(241,255,25);
   ellipse(159, 360, 50, 50);
   fill(241,255,25);
   ellipse(40, 360, 50, 50);
