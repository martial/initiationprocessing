boolean modeDessin = false;

void setup () {

  size(500, 500);
  background(0, 0, 0);
}

void draw () {

  fill(255);

  if ( modeDessin == true ) {
    background( 0, 0, 0);
    float rayon = random(0, 100);
    fill (mouseX, mouseY-200, mouseY);
    ellipse(mouseX, mouseY, mouseY, mouseX);
  }
}

void mousePressed () {

  modeDessin =! modeDessin;
}