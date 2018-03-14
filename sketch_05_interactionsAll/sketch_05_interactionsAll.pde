void setup () {

  size(400, 400);
}

void draw () {
}

void keyPressed() {
  
  println("Key has been pressed !");
  println("key is " + key);

  if ( key == 'f' ) {
    println("this is a tiny f");
  }

  if (keyCode == SHIFT) {
    println("Shift !");
  }
}

void mouseClicked() {

  println("mouse has been clicked!");
  println(mouseX);
  println(mouseY);
}


void mouseMoved() {

  println("mouse has moved!");
  println(mouseX);
  println(mouseY);
}