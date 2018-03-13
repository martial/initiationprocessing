float taille = 200;

void setup () {

  size(640, 640);
  background(27, 1, 155);
}

void draw () {

  float centreX = 640 / 2 - taille / 2;
  float centreY = 640 / 2 - taille / 2;

  strokeWeight(0);
  stroke(0);
  fill(255);
  triangle(0, 0, 640, 0, 0, 640);
  
   fill(255);
   strokeWeight(50);
   stroke(253, 70, 38);
   noFill();
   rect(0, 0, 640, 640);

 fill(255);
   strokeWeight(10);
   stroke(253, 70, 38);
   noFill();
   for (int i=0; i<10; i++) {
   ellipse(640 /2, 640 / 2, i * 50, i * 50);
   }
  
}