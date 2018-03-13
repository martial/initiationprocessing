void setup() { //<>//
  
  background(87,214,217);
  size(640,480);
  
 }

void draw() {
  
  fill(258,55,87);
  float centreX=640/2 -100/2;
  float centreY=480/2-100/2;
  
   fill(12,171,190);
   rect(0,0,600,440);
   
   stroke(255, 255, 0);
   strokeWeight(6);
   rect(-10,-10,550,400);
 
  
   stroke(27, 60, 111);
   strokeWeight(3);
  fill(255,255,0);
  rect(5,centreY,300,15);
  
   fill(255,255,0);
  rect(5,centreY-40,300-20,15);
  
     fill(255,255,0);
  rect(5,centreY-80,300-40,15);
  
   fill(255,255,0);
  rect(5,centreY-120,300-40,15);
  
   fill(255,255,0);
  rect(5,centreY-160,300-40,15);
  
    fill(255,255,0);
  rect(5,centreY-200,300-40,15);
  
  fill(254,150,94);
  ellipse( centreX,centreY,115,115);
  
  fill(12,171,190);
  ellipse( centreX,centreY,25,25);
  
  fill(254,150,94);
  ellipse( 100,380,50,50);
  
  fill(12,171,190);
  ellipse( 100,380,10,10);
  
 
  fill(254,150,94);
  ellipse( 512,300,80,80);
  
  fill(12,171,190);
  ellipse( 512,300,25,25);
  
  
  fill(254,150,94);
  ellipse( 550,20,220,220);
  
  fill(12,171,190);
  ellipse( 550,20,90,90);
  
  
  
}