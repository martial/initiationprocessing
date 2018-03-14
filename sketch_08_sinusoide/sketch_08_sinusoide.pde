float xPos;
float yPos;

float time = 0.0;
float frequence = 10.0;
float rayon = 100.0;
float rayonEllipse = 10.0;
void setup() {

  size(1200, 600);

  xPos = width / 2;
  yPos = height / 2;
}

void draw () {


  time += 1;

  //rayon += 1;
  //rayonEllipse += 1;

  background(0);

  frequence = mouseX;

  for (int i=0; i<100; i++ ) {
    fill(255);
    xPos = i * rayonEllipse;
    yPos = height / 2 + sin( (time + i/2) / frequence) * rayon;
    ellipse(xPos, yPos, rayonEllipse, rayonEllipse);
  }
}