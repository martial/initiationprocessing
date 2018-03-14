void setup() {

  size (800, 800);
  background (253, 216, 189);
}

void draw() {
  noStroke(); 
  fill (51, 95, 255); 
  ellipse (400, 400, 200, 200); 

  noStroke(); 
  fill(255); 
  triangle (265, 200, 530, 200, 400, 400); 


  triangle (265, 600, 530, 600, 400, 400); 



  fill (51, 95, 255); 
  stroke (255); 
  strokeWeight (10); 

  ellipse ( 265, 200, 100, 100); 
  ellipse ( 530, 200, 100, 100); 
  ellipse ( 265, 600, 100, 100); 
  ellipse ( 530, 600, 100, 100); 

  ellipse ( 265, 400, 100, 100); 
  ellipse ( 530, 400, 100, 100);
}