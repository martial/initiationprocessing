boolean modeDessin = false;

void setup() {
  size(1000, 850);
  background(255);
} 

void draw() {
  
  stroke(60, 120, 255);
  strokeWeight(20);
  fill(255);
  rect(0, 0, 1000, 850);
  
  fill(255);
  rect(0, 700, 1000, 150);

  stroke(50);
  ellipse(350, 350, 800, 800);
  
  println(mouseX);
  println(mouseY);
  
  if (modeDessin == true) {
    float rayon = random(10,550);
    
    ellipse(mouseX, mouseY, rayon + 40, rayon);
  } 
  
}

void keyPressed () {
     modeDessin =! modeDessin;
}