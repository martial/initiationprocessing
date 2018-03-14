void setup () {

  size (500, 500);
  background(0, 0, 360);
}

void draw () {


  fill (255, 420, 0); 
  stroke (250);
  strokeWeight (5); 
  rectMode (250);
  rect (250, 280, 300, 29);
  fill(255, 0, 0);
  ellipse(250, 20, 16, 16);

  for (int i = 0; i<100; i++) {

    float r  = random (40, 100);
    stroke(r*200);
    line(400, i, 250+r, i);
  }

  for (int i = 0; i<20; i++) {
    float r = random (100) ;
    ellipse (160, i, 40+r, i);
    stroke (r*90);
  }
}