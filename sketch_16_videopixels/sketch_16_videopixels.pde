import processing.video.*;
Movie mov;

float time = 0.0;
void setup() {

  size(800, 800, P3D);

  mov = new Movie(this, "fingers.mov");
  mov.loop();
}

void draw() {

  if (mov.available() == true) {
    mov.read();
    mov.loadPixels();

    background(0);
    //image(monImage, 0, 0);
    time += 0.001;
    translate(width /2, height / 2);
    rotateX(time);
    scale(.5, .5, .5);
    translate(-width /2, -height / 2);

   // translate(width /2 - mov.width /2, height / 2 - mov.height /2);
    noStroke();
    int tailleRectangle = 4;
    for (int i=0; i <mov.height; i+=2) {  
      for (int j=0; j<mov.width; j+=2) {
        color c  = mov.get(i, j);
        float brightness = brightness(c);

        pushMatrix();

        translate(i*tailleRectangle, j*tailleRectangle, brightness);
        fill(c);
        rect(0, 0, tailleRectangle*2, tailleRectangle*2);

        popMatrix();
      }
    }
  }

  //monImage.updatePixels();
}

