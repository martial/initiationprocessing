float xPos =0.0;
float yPos = height / 2; 
float xVitesse = 0.1;
float yVitesse = 0.1;

void setup () {

  size(600, 600);
  background(0);
}

void draw() {


  xPos = xVitesse * mouseX + (1-xVitesse) * xPos;
  yPos = yVitesse * mouseY + (1-yVitesse) * yPos;

  float distanceX = mouseX - xPos;
  float distanceY = mouseY - yPos;

  fill(255);
  ellipse(xPos, yPos, 70 + distanceY, 70 + distanceX);
}