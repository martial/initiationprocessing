PFont myFont;

float xPos = 0.0;
float yPos = 0.0;
void setup() {

  size(800, 600);
  myFont = createFont("typo.ttf", 32);
  background(0);
  
}


void draw() {

  xPos += 20.1;
  yPos += 20.1;

  textFont(myFont);
  fill(255,0,0);
  text("instagram.com/martialou", xPos, yPos);
}