float time = 0.0;

void setup() {

  size(600, 600);
}


void draw () {

  time += 0.01;

  background(0);
  
  pushMatrix();
  fill(255, 0, 0);
  translate(width/2, height /2);
  rotate(time);
  scale(time);
  rect(-50, -50, 100, 100);
  popMatrix();
  
  fill(255, 255, 0);
  rect(0, 0, 100, 100);
}