
//c'est le bazard

boolean changeCouleur = false;

float centreX = 1920 / 2 - 400 / 2;
float centreY = 1080 / 2 - 400 / 2;


void setup() {


  frameRate(20);
  size(1920, 1080);
  background(0);

  stroke (255);
  strokeWeight(0);
}

void draw() {


  if (changeCouleur == true) {
    float couleurR = random(50, 150);
    float couleurV = random(50, 150);
    float couleurB = random(50, 150);
    float tailleEll = random(100, 500);

    fill (couleurR, couleurV, couleurB, random(200, 255));
    rect(random(0, 1920), random(0, 1080), 100, 100, random(50, 150));

    fill (255, couleurV, couleurB);
    rect(random(0, 1920), random(0, 1080), 50, 50, random(50, 150));

    fill (couleurR, 255, couleurB);
    rect(random(0, 1920), random(0, 1080), 30, 30, random(50, 150));

    fill (couleurR, couleurV, 255);
    rect(random(0, 1920), random(0, 1080), 10, 10, random(50, 150));

    fill (248, 255, 60);
    rect(random(0, 1920), random(0, 1080), random(2, 10), random(2, 10), random(50, 150));

    fill (255);
    strokeWeight(random(2, 5));
    stroke(255, 105, 105);
    line(random(tailleEll, 1920), random(0, 1080), 960, 540);

    noStroke();
    fill (0, 0, 0);
    ellipse (centreX+200, centreY+200, 510, 510);

    noStroke();
    fill (random(150, 255), random(150, 255), random(150, 255));
    ellipse (centreX+200, centreY+200, tailleEll, tailleEll);
  } else {
    float couleurR = 255;
    float couleurV = 255;
    float couleurB= 255;

    ellipse (centreX+200, centreY+200, 400, 400);
  }
}

void mousePressed() {

  changeCouleur =! changeCouleur;
}