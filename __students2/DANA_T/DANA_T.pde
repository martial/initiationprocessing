
// Paramétrage du son et du FFT analyzer
import processing.sound.*;
SoundFile sample;
FFT fft;
AudioDevice device;

// Définition de variables utiles pour la densité spectrale de puissance
int scale=5;
int bands = 128;
float[] sum = new float[bands];
float smooth_factor = 0.2;


void setup()
{
  
  // Définition de la taille de la fenêtre et lancement du render P3D
  size(1200, 600, P3D);
  
  // Importation et lancement du son "music.mp3"
  device = new AudioDevice(this, 44000, bands);
  sample = new SoundFile(this, "music.mp3");
  sample.loop();
  fft = new FFT(this, bands);
  fft.input(sample);
  
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
 
  // Lancement de l'analyse du son et stockage de la densité spectrale de puissance dans sum(i)
  fft.analyze();
  for (int i = 0; i < bands; i++)
  {
       
    sum[i] += (fft.spectrum[i] - sum[i]) * smooth_factor;
      
    /*
    CUBE CENTRAL
    lights = éclairage ambiant
    smooth = anti aliasing
    translate = définition des coordonnées du cube
    rotateX et Y = inclinaisons du cube sur les axes X et Y
    
    Le cube se déplace suivant la position de la souris en X et Y
    La taille du cube varie selon la densité spectrale de puissance stockée dans sum(i)
    */
        
    pushMatrix();
    smooth();
    lights();
    fill(255,0,0);
    stroke(255);
    strokeWeight(4);
    translate(width/2, height/2);
    rotateX(-mouseY/150);
    rotateY(-mouseX/150);
    box(-sum[i]*height);
    popMatrix();
    
    /*
    CUBES LATÉRAUX
    Tournent sur les axes X et Y suivant le frameRate
    */
    
    pushMatrix();
    smooth();
    lights();
    fill(0);
    stroke(255);
    strokeWeight(4);
    translate(width/4, height/2);
    rotateX(frameCount*0.1);
    rotateY(frameCount*0.1);
    box(-sum[i]*height);
    popMatrix();
    
    pushMatrix();
    smooth();
    lights();
    fill(0);
    stroke(255);
    strokeWeight(3);
    translate(width/4*3, height/2);
    rotateX(frameCount*0.1);
    rotateY(frameCount*0.1);
    box(-sum[i]*height);
    popMatrix();
    
   }

  // Vérification des coordonnées du pointeur
  println("X : ",mouseX,"Y : ",mouseY);

}