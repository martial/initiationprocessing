boolean modeDessin = false;

void setup () {

  size(640, 480);
  background(0, 0, 0);
}

void draw () {

  fill(255);

  if ( modeDessin == true ) {

    float rayon = random(0, 100);
    ellipse(mouseX, mouseY, rayon, rayon);
  }
}

void keyPressed () {

  modeDessin =! modeDessin;
}