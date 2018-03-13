float counter = 0.0;

void setup() {

  println("Hello ! C'est le setup");
  size(640, 480);
  frameRate(60);
}

void draw() {

  counter =  counter +  1.0;
  println (counter);
}