void setup () {

  size(640, 480);
  background(0, 0, 0);
}

void draw () {

  fill(255);


  for (int i=0; i<10; i++) {
    float x = i * 50;
    float col = i * 10;
    fill(col);
    rect(x, 0, 50, 50);
  }

  /*
  fill(255);
   stroke(255);
   noFill();
   for (int i=0; i<10; i++) {
   ellipse(640 /2, 480 / 2, i * 20, i * 20);
   }
   

  
  fill(255);
   float rayonMax = 200;
   for (int i=0; i<10; i++) {
   rayonMax = rayonMax - 10;
   ellipse(640 /2, 480 / 2, rayonMax, rayonMax);
   }
   
   */

  fill(255);
  for (int i=10; i>=0; i--) {
    ellipse(640 /2, 480 / 2, i * 20, i * 20);
  }
  
}