PImage monImage;

void setup() {

  size(640, 480);
  monImage = loadImage("capferret.jpg");
  monImage.filter(ERODE);
}

void draw() {

  background(0);
  float xCenter = width / 2 - monImage.width /2;
  float yCenter = width / 2 - monImage.width /2;
  image(monImage, xCenter, yCenter);
}