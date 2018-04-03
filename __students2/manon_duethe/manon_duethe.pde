void setup(){
 size(600,750);  
}



void draw(){
  background(map(mouseY,0,750,0,255),map(mouseX,0,600,0,255),900);
  noStroke();


 
  fill(map(mouseX,0,600,0,255),map(mouseY,0,750,0,255),150);
  rect(125,50,350,625);
  
  
  
  
  fill(0, map(mouseX,0,600,0,255));
  rect(50,100,125,125);
  
  fill(0, map(mouseY,0,1550,0,255));
  rect(50,300,125,125);
  
  fill(0, map(mouseX,0,200,0,255));
  rect(50,500,125,125); 
  
  
  
  
  
  
    fill(0, map(mouseX,0,1000,0,255));
  rect(237.5,100,125,125);
  
  fill(0, map(mouseY,0,250,0,255));
  rect(237.5,300,125,125);
  
  fill(0, map(mouseX,0,800,0,255));
  rect(237.5,500,125,125); 
  
  
  
  
  
  
  
    fill(0, map(mouseX,0,700,0,255));
  rect(475-50,100,125,125);
  
  fill(0, map(mouseY,0,50,0,255));
  rect(475-50,300,125,125);
  
  fill(0, map(mouseX,0,1600,0,255));
  rect(475-50,500,125,125); 
  
  }