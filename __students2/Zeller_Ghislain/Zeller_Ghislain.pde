float xPos = width/2;
float yPos = height/2;
float Dim = 10;

float yBin = 0.0;
float xBin = 0.0;

void setup () {
  
 size(265,265);
   background(255, 30, 80);
  
}

void draw () {
  println(xPos);
  println(yPos);
  
  xPos = xPos +1 * (xBin);
  yPos = yPos +1 * (yBin);
  
 color c = get(10,10);
 println ("couleur = ", c );
 
 if (c == -16777216) {
 println("looser");
 
 }
    
  rect(xPos ,yPos ,Dim ,Dim);
  
  if (xPos == width - Dim || xPos == 0) {
    xBin = 0.0;
  }
  if (yPos == height - Dim || yPos == 0) {
    yBin = 0.0;
  }
  
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) { 
       yBin = -1;
       xBin = 0;
    } if (keyCode == DOWN) {
       yBin = +1;
       xBin = 0;
    } 
  } if (keyCode == RIGHT) {
       xBin = +1;
       yBin = 0;
  } if (keyCode == LEFT) {
       xBin = -1; 
       yBin = 0;
    }

}