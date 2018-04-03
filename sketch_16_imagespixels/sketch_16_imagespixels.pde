PImage monImage;
float time = 0.0;
void setup() {

  size(800, 800, P3D);
  monImage = loadImage("images.duckduckgo-1.jpg");
  monImage.loadPixels();
}

void draw() {

  background(0);
  //image(monImage, 0, 0);
  time += 0.001;
  translate(width /2, height / 2);
  rotateX(time);
  scale(.5,.5,.5);
  translate(-width /2, -height / 2);

  translate(width /2 - monImage.width /2 , height / 2 - monImage.height /2);
  noStroke();
  int tailleRectangle = 4;
  for (int i=0; i <monImage.height; i+=4) {  
    for (int j=0; j<monImage.width; j+=4) {
      color c  = monImage.get(i, j);
      float brightness = brightness(c);

      pushMatrix();

      translate(i*tailleRectangle, j*tailleRectangle, brightness);
      fill(c);
      rect(0, 0, tailleRectangle*2, tailleRectangle*2);

      popMatrix();
    }
  }

  //monImage.updatePixels();
}
