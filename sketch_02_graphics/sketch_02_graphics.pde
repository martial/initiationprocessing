float taille = 200;

void setup () {

  size(640, 640);
  background(0, 0, 0);
}

void draw () {

  float centreX = 640 / 2 - taille / 2;
  float centreY = 640 / 2 - taille / 2;

  strokeWeight(0);
  stroke(0);
  fill(255);
  triangle(0, 0, 640, 0, 0, 640);

  fill(0);
  strokeWeight(10);

  rect(centreX, centreY, taille, taille);

  fill(125);

  ellipse(centreX, centreY, taille, taille);
  centreX = centreX + taille;
  centreY = centreY + taille;

  strokeWeight(10);
  ellipse(centreX, centreY, taille, taille);
}