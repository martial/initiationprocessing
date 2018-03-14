float taille = 200;
boolean modeDessin = false;

void setup () {

  size(640, 640);
  background(0);
}

void draw () {

  float centreX = 640 / 2 - taille / 2;
  float centreY = 640 / 2 - taille / 2;


  strokeWeight(1);
  stroke(255, 255, 0);
  fill(0);
  triangle(0, 0, 960, 0, 0, 960);


  strokeWeight(5);
  stroke(255, 255, 0);
  fill(0);
  triangle(0, 0, 640, 0, 0, 640);


  strokeWeight(10);
  stroke(255, 255, 0);
  fill(0);
  triangle(0, 0, 320, 0, 0, 320);


  if ( modeDessin == true ) {

    float rayon = random(0, 100);
    ellipse(mouseX, mouseY, rayon, rayon);
  }
}

void keyPressed () {

  modeDessin =! modeDessin;
}