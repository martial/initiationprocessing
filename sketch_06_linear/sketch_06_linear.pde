float xPos = 0.0;
float yPos = 0.0;
float xVitesse = 10.0;
float yVitesse = 10.1;

void setup () {
  size(600, 480);
  background(0);
}


void draw() {

  yPos += yVitesse;
  xPos += xVitesse;

  if ( xPos > width || xPos < 0  ) {
    xVitesse = -xVitesse;
    
  }
  
  if ( yPos > height ||  yPos < 0  ) {
    yVitesse = -yVitesse;
  }

  fill(255);
  ellipse(xPos, yPos, 5, 5);
}