
// Paramétrage du son et du FFT analyzer
import processing.sound.*;
SoundFile sample;
FFT fft;
AudioDevice device;

// Définition de variables utiles pour la densité spectrale de puissance
int scale=5;
int bands = 128;
float r_width;
float[] sum = new float[bands];
float smooth_factor = 0.2;

void setup()
{
  
  // Définition de la taille de la fenêtre et lancement du render P3D
  size(1000, 1200, P3D);
  
  // Importation et lancement du son "music.mp3"
  device = new AudioDevice(this, 44000, bands);
  sample = new SoundFile(this, "music.mp3");
  sample.loop();
}
 
void draw()
{
  
  background(0);
  
  // Création d'une grille de points où x et y prennent les valeurs des coordonnées de chaque point
  noStroke();
  fill(70);
  for (int x = 10; x < width; x+=10)
  {
    for (int y = 10; y < height; y+=10)
    {
      ellipse(x, y, 2, 2);
    }
  }


  /* Création des cubes
  Le cube principal tourne sur les axes X et Y en fonction du frameCount.
  
  > Pas compris pourquoi la boucle if influe sur la position des cubes étant donné que
  les coordonnées sont sensées être les mêmes mais c'est joli alors c'est cool
  
  */
 
  for (int i = 0; i < 15; i++)
  {
    
    smooth();
    noFill();
    stroke(255);
    strokeWeight(1);
    translate(width/2, height/3);
    rotateX(frameCount*0.007);
    rotateY(frameCount*0.035);
    box(80);
    
  }


}