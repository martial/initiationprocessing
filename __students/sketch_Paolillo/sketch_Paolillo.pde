boolean apparition = false;
PImage img;
void setup () {
  
  size(640,480);
  float coul1 = random(0,255);
  float coul2 = random(0,255);
  float coul3 = random(0,255);
  background (coul1,coul2,coul3);
  img=loadImage ("Capture.PNG");
 frameRate(10);
 
}


void draw () {
  if (apparition == true){
  
    
  float posX = random(0,640);
  float posY = random(0,480);
  image(img,posX,posY);
  
  
  }
}

void mousePressed () {
  
  apparition =! apparition;
  

  
}