float time = 0.0;

void setup() {

  size(600, 600, P3D);
}


void draw () {

  time += 0.1;

  background(0);

  pushMatrix();
  fill(255, 0, 0);
  translate(width/2, height /2, mouseX);
  rotateX(time);
  rotateY(time / 3);
  rotateZ(time / 2);

  //scale(time);
  rect(-50, -50, 100, 100);
  popMatrix();

  fill(255, 255, 0);
  rect(0, 0, 100, 100);
}