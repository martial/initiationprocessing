
float taille = 10;

void setup (){

  size(800, 800);
  background (0);
}

void draw (){
  float centreX = 800 /2;
  float centreY = 800 /2;
  
  fill (255, 255);
  noStroke ();
  rect(100, taille, 600, 1);
  taille = taille + 10;
  rect(100, taille, 600, 1);


  fill (0);
  stroke (255);
  rect(centreX, centreY, taille, taille);
  
  fill (55,100,90);
  stroke (255);
  rect(taille, taille, taille, taille);
  

}