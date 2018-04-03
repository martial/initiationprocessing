float time = 0.0;

void setup() {

  size(1200, 600, P3D);
}


void draw () {

  time += 0.01;

  background(100);
  fill(255);

  println("je commence la boucle");

  int nombreLignes = 16;
  int nombreColonnes = 12;
  int nombreProfondeur = 12;

  float tailleCarre = 30;

  float largeur = nombreLignes * tailleCarre;
  float hauteur = nombreColonnes * tailleCarre;

  translate(width / 2, height / 2);
  rotateY(time);
  translate(-width / 2, -height / 2);

  translate(width / 2 - largeur /2, height / 2 - hauteur / 2);
  //rotate(time);
  translate(15, 15);
  for ( int i=0; i<nombreLignes; i++ ) {

    for ( int j=0; j<nombreColonnes; j++ ) {

      for ( int k=0; k<nombreProfondeur; k++ ) {
        
        pushMatrix();
        translate(i*tailleCarre, j * tailleCarre, k * tailleCarre);
        rotateX(time / 2);
        rect(-tailleCarre / 2, -tailleCarre / 2, tailleCarre, tailleCarre);
        popMatrix();
        
      }
    }
  }

  println("fini!");
}