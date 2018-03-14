void setup ()
{
  size(640, 480);
  background(0);
}

void draw ()
{
  fill(255, 133, 232);
  stroke(255, 133, 232);
  ellipse (320, 300, 200, 200);

  ellipse(250, 180, 50, 200);

  ellipse(390, 180, 50, 200);

  fill(255);
  stroke(255);
  ellipse(280, 250, 40, 40);

  ellipse(360, 250, 40, 40);

  stroke(0);
  strokeWeight(3);
  rect(320, 320, 30, 50);

  rect(290, 320, 30, 50);

  fill(0);
  ellipse(280, 250, 20, 20);

  ellipse(360, 250, 20, 20);

  fill(178, 75, 159);
  stroke(178, 75, 159);
  ellipse(340, 320, 40, 40);

  ellipse(300, 320, 40, 40);

  fill(0);
  stroke(0);
  triangle(300, 300, 340, 300, 320, 320);
}