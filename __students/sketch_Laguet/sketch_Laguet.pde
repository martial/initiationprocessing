boolean modeDessin = false;



void setup () {
  size(800,800);
  background(0,0,0);
  
}

void draw () {
float r1 = random(200, 250);
  float v2 = random(50, 100);
strokeWeight (0);
  fill(r1,v2,0);
if (modeDessin ==true) {
  float haut = random(350, 450);
  float bas = random(350, 450);
  ellipse(bas,haut,20,20);
  
 {
  
 float r = random(100, 115);
 float v = random(100, 150);
  float b = random(200, 250);
  
  fill(r,v,b);
  float xCarre = random(200, 550);
  float yCarre = random(200, 550);
  rect(xCarre,yCarre,50,50);  
}

  fill(r1,v2,0);
  float xCarreoff = random(100, 700);
  float yCarreoff = random(100, 700);
  rect(xCarreoff,yCarreoff,10,10);

  
}  
}
void keyPressed () {
modeDessin =!modeDessin;
}