
void setup () {
  size(640, 480);
  stroke(227, 44, 136);
  background(255);}


void draw () {
  stroke(250, 70, 100);
  strokeWeight(1.2);
  int espaceY = (height - 20)/10;
  int espaceX = (width - 20)/10;
  
  //horizontales
  for(int i=0; i<11; i++){
    line(10, 10 + i * espaceY, width - 10, 10 + i * espaceY);
  }
  
  // verticales
  for(int i=0; i<=11; i++){
    line(10+i*espaceX, 10, 10+i*espaceX, height-10);
  }

  fill(51, 187, 218);
  stroke(51, 187, 218);
  ellipse(640/2, 480/2-33, 250, 250); //Corps
  ellipse(210, 480/2, 60, 120); // Aile gauche
  ellipse(430, 480/2, 60, 120); // Aile droite
  
  
  
  fill(244, 153, 67);
  stroke(244, 153, 67);
  triangle(305, 230, 335, 230, 320, 255); //Bec
  triangle(380, 330, 450, 420, 500, 375); //Patte droite
  triangle(260, 330, 190, 420, 140, 375); //Patte gauche
  
   fill(255);
  stroke(255);
  ellipse(270, 480/2-45, 50, 45); //oeil gauche
  fill(0);
  ellipse(270, 480/2-45, 20, 20); //iris gauche
  
  fill(255);
  stroke(255);
  ellipse(370, 480/2-45, 50, 45); //oeil droit
   fill(0);
  ellipse(370, 480/2-45, 20, 20); // iris gauche
  
  fill(250, 170, 200);
  stroke(250, 170, 200);
  ellipse(375, 480/2, 35, 15); // Joue droite
  ellipse(265, 480/2, 35, 15); // Joue gauche
  
}